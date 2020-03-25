import 'dart:developer';
import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart' as l;

loadDebugger(l.HydroTable table) {
  table["debugger"] = makeLuaDartFunc(func: (List<dynamic> args) {
    debugger();
    return [];
  });
}
