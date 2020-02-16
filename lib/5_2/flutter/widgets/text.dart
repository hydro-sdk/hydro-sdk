import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/maybeUnwrapAndBuildArgument.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadText(l.Table table) {
  table["text"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Text(
        args[0],
        key: args[1] != null
            ? maybeUnwrapAndBuildArgument(args[1]["key"])
            : null,
        style: args[1] != null ? args[1]["style"] : null,
      )
    ];
  });
}
