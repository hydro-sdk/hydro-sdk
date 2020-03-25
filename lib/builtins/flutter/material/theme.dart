import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

class VMManagedTextStyle extends VMManagedBox<TextStyle> {
  final l.HydroTable table;
  final TextStyle vmObject;

  VMManagedTextStyle({@required this.table, @required this.vmObject}) {
    table["copyWith"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        VMManagedTextStyle(
                table: l.HydroTable(),
                vmObject: vmObject.copyWith(color: args[1]["color"]))
            .table
      ];
    });
  }
}

class VMManagedTextTheme extends VMManagedBox<TextTheme> {
  final l.HydroTable table;
  final TextTheme vmObject;

  VMManagedTextTheme({@required this.table, @required this.vmObject}) {
    table["display1"] =
        VMManagedTextStyle(table: l.HydroTable(), vmObject: vmObject.display1).table;
    table["headline"] = vmObject.headline;
  }
}

class VMManagedThemeData extends VMManagedBox<ThemeData> {
  final l.HydroTable table;
  final ThemeData vmObject;
  VMManagedThemeData({@required this.table, @required this.vmObject}) {
    table["textTheme"] =
        VMManagedTextTheme(table: l.HydroTable(), vmObject: vmObject.textTheme)
            .table;
  }
}

loadThemeOf(l.HydroTable table) {
  table["themeOf"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      VMManagedThemeData(table: l.HydroTable(), vmObject: Theme.of(args[0])).table
    ];
  });
}
