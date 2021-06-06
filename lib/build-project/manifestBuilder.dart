import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:cli_util/cli_logging.dart';
import 'package:encrypt/encrypt.dart';
import 'package:path/path.dart' as path;
import 'package:pointycastle/export.dart' as pc;

import 'package:hydro_sdk/build-project/componentBuilder.dart';
import 'package:hydro_sdk/build-project/packageManifest.dart';
import 'package:hydro_sdk/build-project/packageManifestEntry.dart';
import 'package:hydro_sdk/build-project/sha256Data.dart';
import 'package:hydro_sdk/projectConfig/projectConfigComponent.dart';
import 'package:hydro_sdk/projectConfig/projectConfigComponentChunk.dart';

class ManifestBuilder {
  final ProjectConfigComponent projectConfigComponent;
  final ComponentBuilder componentBuilder;
  final String? ts2hc;
  final String? cacheDir;
  final String? profile;
  final String signingKey;

  const ManifestBuilder({
    required this.projectConfigComponent,
    required this.componentBuilder,
    required this.ts2hc,
    required this.cacheDir,
    required this.profile,
    required this.signingKey,
  });

  Future<bool> build({
    required bool signManifest,
  }) async {
    Logger logger = Logger.standard();

    Progress progress = logger.progress("Assembling manifest");
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

      String rawSignature;
      String? signature;

      if (signManifest) {
        String concatShas = "";
        manifestEntries.sort((a, b) => a.sha256.compareTo(b.sha256));
        manifestEntries.forEach((element) {
          concatShas += element.sha256;
        });

        rawSignature = sha256Data(concatShas.codeUnits);

        final pc.RSAPrivateKey privateKey =
            RSAKeyParser().parse(signingKey) as pc.RSAPrivateKey;
        final signer =
            pc.RSASigner(pc.SHA256Digest(), '0609608648016503040201');

        signer.init(true, pc.PrivateKeyParameter<pc.RSAPrivateKey>(privateKey));

        final sig = signer
            .generateSignature(Uint8List.fromList(rawSignature.codeUnits));
        signature = base64Encode(sig.bytes);
      }

      await File(
        [
          componentBuilder.unpackedOutputPath(),
          path.separator,
          "manifest.json",
        ].join(""),
      ).writeAsString(jsonEncode(PackageManifest(
        mountableChunk: [
          "chunks",
          "/",
          path.basename(projectConfigComponent.chunks
              .firstWhere(
                (x) => x.type == ProjectConfigComponentChunkType.mountable,
              )
              .entryPoint),
        ].join(""),
        entries: manifestEntries,
        signature: signature ?? "",
      ).toJson()));
    } catch (err) {
      print(err);
      return false;
    }
    progress.finish(showTiming: true);
    return true;
  }
}
