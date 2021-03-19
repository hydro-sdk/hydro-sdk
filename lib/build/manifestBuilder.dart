import 'dart:convert';

import 'package:convert/convert.dart';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:hydro_sdk/build/packageManifest.dart';
import 'package:hydro_sdk/build/packageManifestEntry.dart';
import 'package:hydro_sdk/projectConfig/projectConfigComponent.dart';
import 'package:hydro_sdk/projectConfig/projectConfigComponentChunk.dart';
import 'package:path/path.dart' as path;

import 'package:cli_util/cli_logging.dart';
import 'package:meta/meta.dart';

String _sha256(List<int> data) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  input.add(data);

  input.close();
  output.close();

  return output.events.single.toString();
}

class ManifestBuilder {
  final ProjectConfigComponent projectConfigComponent;
  final String ts2hc;
  final String cacheDir;
  final String profile;

  const ManifestBuilder({
    @required this.projectConfigComponent,
    @required this.ts2hc,
    @required this.cacheDir,
    @required this.profile,
  });

  Future<bool> build() async {
    Logger logger = Logger.standard();

    Progress progress = logger.progress("Assembing manifest");
    try {
      var files = await Directory([
        cacheDir,
        path.separator,
        "build",
        path.separator,
        profile,
        path.separator,
        projectConfigComponent.name,
      ].join(""))
          .list(recursive: true)
          .toList();

      List<PackageManifestEntry> manifestEntries = [];

      await Future.wait(files.map((fileSystemEntity) async {
        if (fileSystemEntity.statSync().type == FileSystemEntityType.file) {
          var rel = fileSystemEntity.path.replaceAll(
              [
                cacheDir,
                path.separator,
                "build",
                path.separator,
                profile,
                path.separator,
                projectConfigComponent.name,
              ].join(""),
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
              sha256: _sha256(
                await File(fileSystemEntity.path).readAsBytes(),
              ),
            ));
          }
        }
      }));

      await File(
        [
          cacheDir,
          path.separator,
          "build",
          path.separator,
          profile,
          path.separator,
          projectConfigComponent.name,
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
