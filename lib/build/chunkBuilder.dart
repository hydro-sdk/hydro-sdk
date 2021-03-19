import 'dart:io';

import 'package:hydro_sdk/projectConfig/projectConfigComponentChunk.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;
import 'package:progress_bar/progress_bar.dart';

class ProgressBarWrapper {
  final ProgressBar progressBar;
  int _ticks = 0;

  ProgressBarWrapper({
    @required this.progressBar,
  });

  void setTicks({
    @required int ticks,
  }) {
    while (_ticks < ticks) {
      _ticks++;
      progressBar.tick();
    }
  }
}

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
      var process = await Process.start(
        ts2hc,
        [
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
          "stdout",
        ],
        mode: ProcessStartMode.inheritStdio,
      );

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
