import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:dart_console/dart_console.dart';
import 'package:synchronized/synchronized.dart';
import 'package:watcher/watcher.dart';

import 'package:hydro_sdk/build-project/componentBuilder.dart';
import 'package:hydro_sdk/build-project/projectBuilder.dart';
import 'package:hydro_sdk/projectConfig/projectConfig.dart';

Lock _rebuildLock = Lock();

Future<void> _rebuild({
  required String? project,
  required String? ts2hc,
  required String? cacheDir,
  required String? profile,
  required String watchPath,
}) async =>
    _rebuildLock.synchronized(() async {
      var console = Console();
      console.clearScreen();

      _printInfo(watchPath: watchPath);

      ProjectConfig projectConfig = ProjectConfig.fromJson(
          jsonDecode(await File(project!).readAsString()));

      ProjectBuilder projectBuilder = ProjectBuilder(
        projectConfig: projectConfig,
        ts2hc: ts2hc,
        cacheDir: cacheDir,
        profile: profile,
        signingKey: "",
      );

      var res = await projectBuilder.build(
        signManifest: false,
      );

      if (!res) {
        print("Failed to build");
      }
    });

void _printInfo({
  required String watchPath,
}) {
  print("Watching for changes in ${watchPath}");
}

void main(List<String> args) async {
  //Eventually multi component projects and multi chunk components will be a thing
  var parser = ArgParser();

  parser.addOption("project");
  parser.addOption("ts2hc");
  parser.addOption("cache-dir");
  parser.addOption("profile", allowed: ["debug", "release"]);

  var results = parser.parse(args);

  ProjectConfig projectConfig = ProjectConfig.fromJson(
      jsonDecode(await File(results["project"]).readAsString()));

  HttpServer.bind("127.0.0.1", 5000).then((server) {
    server.listen((request) {
      switch (request.method) {
        case "GET":
          ComponentBuilder componentBuilder = ComponentBuilder(
            projectConfigComponent: projectConfig.components.first,
            ts2hc: results["ts2hc"],
            cacheDir: results["cache-dir"],
            profile: results["profile"],
            signingKey: "",
          );

          if (request.uri.path ==
              "/available/${projectConfig.project}/${projectConfig.components.first.name}") {
            if (File("${componentBuilder.unpackedOutputPath()}.ota.sha256")
                .existsSync()) {
              request.response.statusCode = 204;
              request.response.close();
              return;
            } else {
              request.response.statusCode = 503;
              request.response.close();
              return;
            }
          }

          if (request.uri.path ==
              "/${projectConfig.project}/${projectConfig.components.first.name}.ota.sha256") {
            File("${componentBuilder.unpackedOutputPath()}.ota.sha256")
                .openRead()
                .pipe(request.response);
            return;
          } else if (request.uri.path ==
              "/${projectConfig.project}/${projectConfig.components.first.name}.ota") {
            File("${componentBuilder.unpackedOutputPath()}.ota")
                .openRead()
                .pipe(request.response);
            return;
          }
          break;
      }
      request.response.statusCode = 404;
      request.response.close();
      return;
    });
  });

  var watchPath =
      File(projectConfig.components.first.chunks.first.entryPoint).parent.path;

  _printInfo(watchPath: watchPath);

  await _rebuild(
    watchPath: watchPath,
    project: results["project"],
    ts2hc: results["ts2hc"],
    cacheDir: results["cache-dir"],
    profile: results["profile"],
  );

  DirectoryWatcher(watchPath).events.listen((event) async {
    await _rebuild(
      watchPath: watchPath,
      project: results["project"],
      ts2hc: results["ts2hc"],
      cacheDir: results["cache-dir"],
      profile: results["profile"],
    );
  });
}
