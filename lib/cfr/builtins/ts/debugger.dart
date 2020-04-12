import 'dart:developer';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

loadDebugger(HydroTable table) {
  table["debugger"] = makeLuaDartFunc(func: (List<dynamic> args) {
    debugger();
    return [];
  });
}
