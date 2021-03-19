import 'dart:convert';

import 'dart:io';
import 'package:hydro_sdk/build/componentBuilder.dart';
import 'package:hydro_sdk/build/packageManifest.dart';
import 'package:hydro_sdk/build/packageManifestEntry.dart';
import 'package:hydro_sdk/build/sha256Data.dart';
import 'package:hydro_sdk/projectConfig/projectConfigComponent.dart';
import 'package:hydro_sdk/projectConfig/projectConfigComponentChunk.dart';
import 'package:path/path.dart' as path;

import 'package:cli_util/cli_logging.dart';
import 'package:meta/meta.dart';

class ManifestBuilder {
  final ProjectConfigComponent projectConfigComponent;
  final ComponentBuilder componentBuilder;
  final String ts2hc;
  final String cacheDir;
  final String profile;

  const ManifestBuilder({
    @required this.projectConfigComponent,
    @required this.componentBuilder,
    @required this.ts2hc,
    @required this.cacheDir,
    @required this.profile,
  });

  Future<bool> build() async {
    Logger logger = Logger.standard();

    Progress progress = logger.progress("Assembing manifest");
    try {
      var files = await Directory(componentBuilder.unpackedOutputPath())
          .list(recursive: true)
          .toList();

      List<PackageManifestEntry> manifestEntries = [];

      await Future.wait(files.map((fileSystemEntity) async {
        if (fileSystemEntity.statSync().type == FileSystemEntityType.file) {
          var rel = fileSystemEntity.path.replaceAll(
              componentBuilder.unpackedOutputPath(),
              projectConfigComponent.name);
          if (rel !=
                  [
                    projectConfigComponent.name,
                    path.separator,
                    "manifest.json",
                  ].join("") &&
              path.basename(rel)[0] != ".") {
            manifestEntries.add(PackageManifestEntry(
              path: rel,
              sha256: sha256Data(
                await File(fileSystemEntity.path).readAsBytes(),
              ),
            ));
          }
        }
      }));

      await File(
        [
          componentBuilder.unpackedOutputPath(),
          path.separator,
          "manifest.json",
        ].join(""),
      ).writeAsString(jsonEncode(PackageManifest(
        mountableChunk: [
          "chunks",
          path.separator,
          path.basename(projectConfigComponent.chunks
              .firstWhere(
                (x) => x.type == ProjectConfigComponentChunkType.mountable,
              )
              .entryPoint),
        ].join(""),
        entries: manifestEntries,
      ).toJson()));
    } catch (err) {
      print(err);
      return false;
    }
    progress.finish(showTiming: true);
    return true;
  }
}
