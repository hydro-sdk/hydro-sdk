import 'package:flua/5_2/closure.dart';
import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadIconButton(l.Table table) {
  table["iconButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      IconButton(
        icon: args[0]["icon"],
        tooltip: args[0]["tooltip"],
        onPressed: () {
          Closure closure = args[0]["onPressed"];
          closure.call([]);
        },
      )
    ];
  });
}
