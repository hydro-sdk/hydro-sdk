import 'dart:developer';
import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart' as l;

loadDebugger(l.Table table) {
  table["debugger"] = makeLuaDartFunc(func: (List<dynamic> args) {
    debugger();
    return [];
  });
}
