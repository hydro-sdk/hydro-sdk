import 'dart:convert';
import 'dart:io';

import 'package:hydro_sdk/cfr/builtins/loadBuiltins.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';

Future<CoroutineResult> unitTestHarness({
  @required String path,
  @required List<BuiltinLib> libs,
}) async {
  var state = HydroState();
  loadBuiltins(hydroState: state, builtins: libs);

  List<ModuleDebugInfo> moduleDebugInfo = json
      .decode(File("$path.symbols").readAsStringSync())
      ?.map((x) => ModuleDebugInfo.fromJson(x))
      ?.toList()
      ?.cast<ModuleDebugInfo>();

  state.symbols = moduleDebugInfo;

  return await state.doFile(path);
}
