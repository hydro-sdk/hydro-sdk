import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadBorderRadius(HydroTable table) {
  table["borderRadiusOnly"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      BorderRadius.only(
          topLeft: args[0]["topLeft"],
          topRight: args[0]["topRight"],
          bottomLeft: args[0]["bottomLeft"],
          bottomRight: args[0]["bottomRight"])
    ];
  });
}
