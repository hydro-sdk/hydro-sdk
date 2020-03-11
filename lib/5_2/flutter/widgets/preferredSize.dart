import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadPreferredSize(l.Table table) {
  table["preferredSize"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      PreferredSize(
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
        preferredSize: maybeUnwrapAndBuildArgument(args[0]["preferredSize"]),
        key: maybeUnwrapAndBuildArgument(args[0]["key"]),
      )
    ];
  });
}
