import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadIcon(l.Table table) {
  table["icon"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Icon(
        maybeUnwrapAndBuildArgument(args[0]),
        size: args.length >= 2 && args[1] != null
            ? args[1]["size"].toDouble()
            : null,
      )
    ];
  });
}
