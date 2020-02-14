import 'package:flua/5_2/closure.dart';
import 'package:flutter/widgets.dart';
import 'package:flua/5_2/table.dart' as l;

Widget maybeUnwrapAndBuildArgument(dynamic arg) {
  if (arg is l.Table) {
    if (arg.metatable != null) {
      Closure build = arg.metatable["build"];
      if (build != null) {
        return maybeUnwrapAndBuildArgument(build([arg.map])[0]);
      }
    }
  }
  return arg;
}
