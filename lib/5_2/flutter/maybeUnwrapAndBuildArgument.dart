import 'package:flua/5_2/closure.dart';
import 'package:flutter/widgets.dart';
import 'package:flua/5_2/table.dart' as l;

Widget maybeUnwrapAndBuildArgument(dynamic arg) {
  if (arg is l.Table) {
    return arg.metatable["build"] != null && arg.metatable["build"] is Closure
        ? arg.metatable["build"]([arg.map])[0]
        : null;
  }
  return arg;
}
