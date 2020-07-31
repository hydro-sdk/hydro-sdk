import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadIconData(HydroTable table) {
  table["iconData"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      IconData(
        args[0],
        fontFamily: args[1]["fontFamily"],
        fontPackage: args[1]["fontPackage"],
      )
    ];
  });
}
