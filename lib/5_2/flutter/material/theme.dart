import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

l.Table textThemeToTable(TextTheme textTheme) {
  var table = l.Table();

  table["display1"] = textTheme.display1;
  table["headline"] = textTheme.headline;

  return table;
}

l.Table themeDataToTable(ThemeData themeData) {
  var table = l.Table();

  table["textTheme"] = textThemeToTable(themeData.textTheme);

  return table;
}

loadThemeOf(l.Table table) {
  table["themeOf"] = makeLuaDartFunc(func: (List<dynamic> args) {
    var themeData = Theme.of(args[0]);
    return [themeDataToTable(themeData)];
  });
}
