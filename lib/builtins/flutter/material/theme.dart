import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

class VMManagedTextStyle extends VMManagedBox<TextStyle> {
  final HydroTable table;
  final TextStyle vmObject;

  VMManagedTextStyle({@required this.table, @required this.vmObject}) {
    table["copyWith"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        VMManagedTextStyle(
                table: HydroTable(),
                vmObject: vmObject.copyWith(color: args[1]["color"]))
            .table
      ];
    });
  }
}

class VMManagedTextTheme extends VMManagedBox<TextTheme> {
  final HydroTable table;
  final TextTheme vmObject;

  VMManagedTextTheme({@required this.table, @required this.vmObject}) {
    table["display1"] =
        VMManagedTextStyle(table: HydroTable(), vmObject: vmObject.display1).table;
    table["headline"] = vmObject.headline;
  }
}

class VMManagedThemeData extends VMManagedBox<ThemeData> {
  final HydroTable table;
  final ThemeData vmObject;
  VMManagedThemeData({@required this.table, @required this.vmObject}) {
    table["textTheme"] =
        VMManagedTextTheme(table: HydroTable(), vmObject: vmObject.textTheme)
            .table;
  }
}

loadThemeOf(HydroTable table) {
  table["themeOf"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      VMManagedThemeData(table: HydroTable(), vmObject: Theme.of(args[0])).table
    ];
  });
}
