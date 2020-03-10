import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadColumn(l.Table table) {
  table["column"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Column(
          mainAxisAlignment: MainAxisAlignment.values
              .firstWhere((x) => x.index == args[0]["mainAxisAlignment"]),
          mainAxisSize: MainAxisSize.values
              .firstWhere((x) => x.index == args[0]["mainAxisSize"]),
          crossAxisAlignment: CrossAxisAlignment.values
              .firstWhere((x) => x.index == args[0]["crossAxisAlignment"]),
          children: maybeUnwrapAndBuildArgument(args[0]["children"]))
    ];
  });
}
