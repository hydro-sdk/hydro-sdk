import 'dart:convert';
import 'dart:io';

import 'package:hydro_sdk/projectConfig/projectConfigComponentChunk.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;

class ChunkBuilder {
  final ProjectConfigComponentChunk projectConfigComponentChunk;
  final String ts2hc;
  final String cacheDir;
  final String profile;
  final String outDir;

  const ChunkBuilder({
    @required this.projectConfigComponentChunk,
    @required this.ts2hc,
    @required this.cacheDir,
    @required this.profile,
    @required this.outDir,
  });

  Future<bool> build() async {
    try {
      var process = await Process.start(ts2hc, [
        "--cache-dir",
        cacheDir,
        "--entry-point",
        projectConfigComponentChunk.entryPoint,
        "--module-name",
        path.basename(projectConfigComponentChunk.entryPoint),
        "--out-dir",
        outDir,
        "--profile",
        profile,
        "--logger",
        "parent",
      ]);

      process.stdout.transform(const Utf8Decoder()).forEach((element) {
        print(element);
      });

      var exitCode = await process.exitCode;

      if (exitCode != 0) {
        return false;
      }
    } catch (err) {
      print(err);
      return false;
    }

    return true;
  }
}
