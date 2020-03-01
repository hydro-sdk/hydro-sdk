import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

class VMManagedTextTheme extends VMManagedBox<TextTheme> {
  final l.Table table;
  final TextTheme vmObject;

  VMManagedTextTheme({@required this.table, @required this.vmObject}) {
    table["display1"] = vmObject.display1;
    table["headline"] = vmObject.headline;
  }
}

class VMManagedThemeData extends VMManagedBox<ThemeData> {
  final l.Table table;
  final ThemeData vmObject;
  VMManagedThemeData({@required this.table, @required this.vmObject}) {
    table["textTheme"] =
        VMManagedTextTheme(table: l.Table(), vmObject: vmObject.textTheme)
            .table;
  }
}

loadThemeOf(l.Table table) {
  table["themeOf"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      VMManagedThemeData(table: l.Table(), vmObject: Theme.of(args[0])).table
    ];
  });
}
