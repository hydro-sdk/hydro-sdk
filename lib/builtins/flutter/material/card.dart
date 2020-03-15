import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadCard(l.Table table) {
  table["card"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Card(
          borderOnForeground: args[0]["borderOnForeground"],
          child: maybeUnwrapAndBuildArgument(args[0]["child"]),
          color: maybeUnwrapAndBuildArgument(args[0]["color"]))
    ];
  });
}
