import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadColor(HydroTable table) {
  table["color"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [Color(args[0])];
  });
}
