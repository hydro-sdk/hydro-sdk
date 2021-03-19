import 'dart:convert';
import 'dart:io';

import 'package:hydro_sdk/build/logEvent.dart';
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

      Map<String, ProgressBarWrapper> progressBars = {};

      var processLine = ({
        String line,
      }) {
        var json = jsonDecode(line);

        int eventType = json["logEventType"];

        switch (eventType) {
          case 0:
            var event = DiagnosticLogEvent.fromJson(json);
            print("    ${event.message}");
            break;

          case 1:
            var event = ProgressTickLogEvent.fromJson(json);

            var progressBar = progressBars[event.progressId];

            if (progressBar != null) {
              progressBar..progressBar.total = event.totalSteps;

              progressBar.setTicks(ticks: event.currentStep);
            }
            break;

          case 2:
            var event = ProgressStartLogEvent.fromJson(json);

            var progressBar = progressBars[event.progressId];

            if (progressBar == null) {
              progressBars[event.progressId] = ProgressBarWrapper(
                progressBar: ProgressBar(
                  "    [:bar] :percent :current / :total",
                  total: 0,
                  width: 20,
                ),
              );
            }
            break;

          case 3:
            break;

          case 4:
            var event = ErrorLogEvent.fromJson(json);
            print("    ${event.message}");
            break;
        }
      };

      process.stdout.transform(const Utf8Decoder()).forEach((element) {
        element.split("\n").forEach((line) =>
            line?.isNotEmpty ?? false ? processLine(line: line) : null);
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
