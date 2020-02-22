import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
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
