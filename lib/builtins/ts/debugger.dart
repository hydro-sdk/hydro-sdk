import 'dart:developer';
import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/vm/table.dart';

loadDebugger(HydroTable table) {
  table["debugger"] = makeLuaDartFunc(func: (List<dynamic> args) {
    debugger();
    return [];
  });
}
