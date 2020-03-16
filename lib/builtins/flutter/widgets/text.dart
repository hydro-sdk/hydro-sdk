import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

loadText(l.Table table) {
  table["text"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Text(
        args[0],
        key: args[1] != null
            ? maybeUnwrapAndBuildArgument(args[1]["key"])
            : null,
        style: args[1] != null
            ? maybeUnwrapAndBuildArgument(args[1]["style"])
            : null,
      )
    ];
  });
}
