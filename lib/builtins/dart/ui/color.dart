import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:flutter/material.dart';

loadColor(HydroTable table) {
  table["color"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [Color(args[0])];
  });
}
