import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:cli_util/cli_logging.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/build/componentBuilder.dart';
import 'package:hydro_sdk/build/sha256Data.dart';
import 'package:hydro_sdk/projectConfig/projectConfigComponent.dart';

class PackageBuilder {
  final ProjectConfigComponent projectConfigComponent;
  final ComponentBuilder componentBuilder;
  final String ts2hc;
  final String cacheDir;
  final String profile;

  const PackageBuilder({
    @required this.projectConfigComponent,
    @required this.componentBuilder,
    @required this.ts2hc,
    @required this.cacheDir,
    @required this.profile,
  });

  Future<bool> build() async {
    Logger logger = Logger.standard();

    Progress progress = logger.progress("Assembing package");
    try {
      var files = await Directory(componentBuilder.unpackedOutputPath())
          .list(recursive: true)
          .toList();

      Archive archive = Archive();

      await Future.wait(files.map((fileSystemEntity) async {
        if (fileSystemEntity.statSync().type == FileSystemEntityType.file) {
          var rel = fileSystemEntity.path.replaceAll(
              componentBuilder.unpackedOutputPath(),
              projectConfigComponent.name);
          var content = await File(fileSystemEntity.path).readAsBytes();

          archive.addFile(ArchiveFile(rel, content.length, content));
        }
      }));

      var tar = TarEncoder().encode(archive);
      var bzip2 = BZip2Encoder().encode(tar);

      await File(componentBuilder.unpackedOutputPath() + ".ota")
          .writeAsBytes(bzip2);

      await File(componentBuilder.unpackedOutputPath() + ".ota.sha256")
          .writeAsString(sha256Data(bzip2));
    } catch (err) {
      print(err);
      return false;
    }
    progress.finish(showTiming: true);
    return true;
  }
}
