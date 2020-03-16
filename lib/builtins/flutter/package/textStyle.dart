import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

loadTextStyle(l.Table table) {
  table["textStyle"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [TextStyle(fontSize: args[0]["fontSize"].toDouble())];
  });
}
