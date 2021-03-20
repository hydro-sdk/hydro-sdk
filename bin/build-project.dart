import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';

import 'package:hydro_sdk/build-project/projectBuilder.dart';
import 'package:hydro_sdk/projectConfig/projectConfig.dart';

void main(List<String> args) async {
  var parser = ArgParser();

  parser.addOption("project");
  parser.addOption("ts2hc");
  parser.addOption("cache-dir");
  parser.addOption("profile", allowed: ["debug", "release"]);

  var results = parser.parse(args);

  ProjectConfig projectConfig = ProjectConfig.fromJson(
      jsonDecode(await File(results["project"]).readAsString()));

  ProjectBuilder projectBuilder = ProjectBuilder(
    projectConfig: projectConfig,
    ts2hc: results["ts2hc"],
    cacheDir: results["cache-dir"],
    profile: results["profile"],
  );

  var res = await projectBuilder.build();
  if (!res) {
    exit(1);
  }
}
