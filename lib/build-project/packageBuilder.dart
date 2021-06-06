import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:cli_util/cli_logging.dart';
import 'package:filesize/filesize.dart';
import 'package:path/path.dart' as path;

import 'package:hydro_sdk/build-project/componentBuilder.dart';
import 'package:hydro_sdk/build-project/sha256Data.dart';
import 'package:hydro_sdk/projectConfig/projectConfigComponent.dart';

class PackageBuilder {
  final ProjectConfigComponent projectConfigComponent;
  final ComponentBuilder componentBuilder;
  final String? ts2hc;
  final String? cacheDir;
  final String? profile;
  final String? outDir;

  const PackageBuilder({
    required this.projectConfigComponent,
    required this.componentBuilder,
    required this.ts2hc,
    required this.cacheDir,
    required this.profile,
    this.outDir = "",
  });

  Future<bool> build() async {
    Logger logger = Logger.standard();

    Progress progress = logger.progress("Assembling package");
    String copyMessage = "";
    try {
      var files = await Directory(componentBuilder.unpackedOutputPath())
          .list(recursive: true)
          .toList();

      Archive archive = Archive();

      await Future.wait(files.map((fileSystemEntity) async {
        if (fileSystemEntity.statSync().type == FileSystemEntityType.file) {
          var rel = fileSystemEntity.path
              .replaceAll(componentBuilder.unpackedOutputPath(),
                  projectConfigComponent.name)
              .replaceAll(path.separator, "/");
          var content = await File(fileSystemEntity.path).readAsBytes();

          archive.addFile(ArchiveFile(rel, content.length, content));
        }
      }));

      var tar = TarEncoder().encode(archive);
      var bzip2 = BZip2Encoder().encode(tar);

      var outputPackage = File(componentBuilder.unpackedOutputPath() + ".ota");

      await outputPackage.writeAsBytes(bzip2);

      var outputPackageHash =
          File(componentBuilder.unpackedOutputPath() + ".ota.sha256");

      await outputPackageHash.writeAsString(sha256Data(bzip2));

      if (outDir != null && outDir!.isNotEmpty) {
        await Directory(outDir!).create(recursive: true);

        var copyPackagePath = [
          outDir,
          path.separator,
          path.basename(outputPackage.path)
        ].join("");
        await outputPackage.copy(copyPackagePath);

        var copyPackageHashPath = [
          outDir,
          path.separator,
          path.basename(outputPackageHash.path)
        ].join();

        await outputPackageHash.copy(copyPackageHashPath);

        copyMessage =
            "->    ${copyPackagePath}    ${filesize(outputPackage.statSync().size)}";
      }
    } catch (err) {
      print(err);
      return false;
    }
    progress.finish(showTiming: true);

    if (copyMessage.isNotEmpty) {
      print(copyMessage);
    }
    return true;
  }
}
