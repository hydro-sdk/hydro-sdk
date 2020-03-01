import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadSizeTransition(l.Table table) {
  table["sizeTransition"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      SizeTransition(
        sizeFactor: args[0]["sizeFactor"],
        axis: Axis.values.firstWhere((x) => x.index == args[0]["axis"]),
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
      ),
    ];
  });
}
