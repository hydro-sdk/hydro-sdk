import 'dart:developer';
import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart';

loadDebugger(HydroTable table) {
  table["debugger"] = makeLuaDartFunc(func: (List<dynamic> args) {
    debugger();
    return [];
  });
}
