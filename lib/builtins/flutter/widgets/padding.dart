import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

loadPadding(l.Table table) {
  table["padding"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Padding(
        key: maybeUnwrapAndBuildArgument(args[0]["key"]),
        padding: maybeUnwrapAndBuildArgument(args[0]["padding"]),
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
      )
    ];
  });
}
