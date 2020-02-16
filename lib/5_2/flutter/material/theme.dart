import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/maybeUnwrapAndBuildArgument.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadThemeOf(l.Table table) {
  table["themeOf"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [Theme.of(args[0])];
  });
}
