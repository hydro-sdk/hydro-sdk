import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadSizedBox(l.Table table) {
  table["sizedBox"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      SizedBox(
        key: maybeUnwrapAndBuildArgument(args[0]["key"]),
        width: args[0]["width"],
        height: args[0]["height"],
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
      )
    ];
  });
}
