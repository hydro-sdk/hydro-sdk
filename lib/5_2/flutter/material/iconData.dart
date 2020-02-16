import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadIconData(l.Table table) {
  table["iconData"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      IconData(
        args[0],
        fontFamily: args[1]["fontFamily"],
      )
    ];
  });
}
