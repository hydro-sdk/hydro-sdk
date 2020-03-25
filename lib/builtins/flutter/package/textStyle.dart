import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadTextStyle(HydroTable table) {
  table["textStyle"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [TextStyle(fontSize: args[0]["fontSize"].toDouble())];
  });
}
