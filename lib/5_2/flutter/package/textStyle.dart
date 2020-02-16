import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadTextStyle(l.Table table) {
  table["textStyle"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [TextStyle(fontSize: args[0]["fontSize"].toDouble())];
  });
}
