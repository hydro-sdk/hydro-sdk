import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/maybeUnwrapAndBuildArgument.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadColumn(l.Table table) {
  table["column"] = makeLuaDartFunc(func: (List<dynamic> args) {
    print(args);
    return [Column(children: maybeUnwrapAndBuildArgument(args[0]["children"]))];
  });
}
