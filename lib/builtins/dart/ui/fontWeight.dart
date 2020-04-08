import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadFontWeight(HydroTable table) {
  table["fontWeight"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [FontWeight.values[args[0]]];
  });
}
