import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadThemeOf({@required HydroState luaState, @required HydroTable table}) {
  table["themeOf"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<ThemeData>(
        object: Theme.of(
          maybeUnBoxAndBuildArgument<BuildContext>(args[0],
              parentState: luaState),
        ),
        hydroState: luaState,
        table: HydroTable(),
      )
    ];
  });
}
