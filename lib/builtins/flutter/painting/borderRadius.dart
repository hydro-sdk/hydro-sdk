import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadBorderRadius(HydroTable table) {
  table["borderRadiusOnly"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [BorderRadius.only(
      topLeft: args[0]["topLeft"],
      topRight: args[0]["topRight"],
      bottomLeft: args[0]["bottomLeft"],
      bottomRight: args[0]["bottomRight"]
    )];
  });
}
