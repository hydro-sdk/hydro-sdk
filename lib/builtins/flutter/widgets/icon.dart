import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

loadIcon(l.Table table) {
  table["icon"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Icon(maybeUnwrapAndBuildArgument(args[0]),
          size: args.length >= 2 && args[1] != null
              ? args[1]["size"].toDouble()
              : null,
          color: args.length >= 2 && args[1] != null ? args[1]["color"] : null)
    ];
  });
}
