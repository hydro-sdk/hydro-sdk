import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadIconData(HydroTable table) {
  table["iconData"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      IconData(
        args[0],
        fontFamily: args[1]["fontFamily"],
      )
    ];
  });
}
