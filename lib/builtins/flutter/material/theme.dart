import 'package:flua/hydroState.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

class VMManagedTextStyle extends VMManagedBox<TextStyle> {
  final HydroTable table;
  final TextStyle vmObject;
  final HydroState luaState;

  VMManagedTextStyle(
      {@required this.table,
      @required this.vmObject,
      @required this.luaState}) {
    table["copyWith"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        VMManagedTextStyle(
                luaState: luaState,
                table: HydroTable(),
                vmObject: vmObject.copyWith(
                    color: maybeUnwrapAndBuildArgument<Color>(args[1]["color"],
                        parentState: luaState)))
            .table
      ];
    });
    table["apply"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        VMManagedTextStyle(
                luaState: luaState,
                table: HydroTable(),
                vmObject: vmObject.apply(
                    color: maybeUnwrapAndBuildArgument<Color>(args[1]["color"],
                        parentState: luaState),
                    fontWeightDelta: args[1]["fontWeightDelta"] != null
                        ? args[1]["fontWeightDelta"]
                        : 0))
            .table
      ];
    });
  }
}

class VMManagedTextTheme extends VMManagedBox<TextTheme> {
  final HydroTable table;
  final TextTheme vmObject;
  final HydroState luaState;

  VMManagedTextTheme(
      {@required this.table,
      @required this.vmObject,
      @required this.luaState}) {
    table["display1"] = VMManagedTextStyle(
            luaState: luaState,
            table: HydroTable(),
            vmObject: vmObject.display1)
        .table;
    table["headline"] = VMManagedTextStyle(
            luaState: luaState,
            table: HydroTable(),
            vmObject: vmObject.headline)
        .table;
    table["body1"] = VMManagedTextStyle(
            luaState: luaState, table: HydroTable(), vmObject: vmObject.body1)
        .table;
    table["body2"] = VMManagedTextStyle(
            luaState: luaState, table: HydroTable(), vmObject: vmObject.body2)
        .table;
    table["subtitle"] = VMManagedTextStyle(
            luaState: luaState,
            table: HydroTable(),
            vmObject: vmObject.subtitle)
        .table;
  }
}

class VMManagedThemeData extends VMManagedBox<ThemeData> {
  final HydroTable table;
  final ThemeData vmObject;
  final HydroState luaState;
  VMManagedThemeData(
      {@required this.table,
      @required this.vmObject,
      @required this.luaState}) {
    table["textTheme"] = VMManagedTextTheme(
            luaState: luaState,
            table: HydroTable(),
            vmObject: vmObject.textTheme)
        .table;
  }
}

loadThemeOf({@required HydroState luaState, @required HydroTable table}) {
  table["themeOf"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      VMManagedThemeData(
              luaState: luaState,
              table: HydroTable(),
              vmObject: Theme.of(args[0]))
          .table
    ];
  });
}
