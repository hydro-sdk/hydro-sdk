import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadBottomNavigationBarItem(
    {@required HydroState luaState, @required HydroTable table}) {
  table["bottomNavigationBarItem"] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      BottomNavigationBarItem(
        icon: maybeUnBoxAndBuildArgument<Widget>(args[0]["icon"],
            parentState: luaState),
        activeIcon: maybeUnBoxAndBuildArgument<Widget>(args[0]["activeIcon"],
            parentState: luaState),
        title: maybeUnBoxAndBuildArgument<Widget>(args[0]["title"],
            parentState: luaState),
        backgroundColor: maybeUnBoxAndBuildArgument<Color>(
            args[0]["backgroundColor"],
            parentState: luaState),
      )
    ];
  });
}
