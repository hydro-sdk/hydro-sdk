import 'dart:convert';
import 'dart:io';

import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/hc.g.dart';
import 'package:flutter/material.dart';
import 'package:hydro_sdk/runFromNetwork.dart';

Widget integrationTestHarness(String path,{List<dynamic>args=const []}) {
  WidgetsFlutterBinding.ensureInitialized();
  return RunFromNetwork(
    args: args,
    thunks: thunks,
    baseUrl: path,
    downloadHash: (String uri) async {
      var file = File("$path.hc.sha256");
      var res = file.readAsStringSync();
      return res;
    },
    downloadByteCodeImage: (String uri) async {
      var file = File("$path.hc");
      var res = file.readAsBytesSync();
      return res;
    },
    downloadDebugInfo: (String uri) async {
      var file = File("$path.hc.symbols");
      var res = file.readAsStringSync();
      return json
          .decode(res)
          ?.map((x) => ModuleDebugInfo.fromJson(x))
          ?.toList()
          ?.cast<ModuleDebugInfo>();
    },
  );
}
