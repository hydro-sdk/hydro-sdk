import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadNavigator({@required HydroState luaState, @required HydroTable table}) {
  table["navigatorPush"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeUnwrapAndBuildArgument<Widget>(
          Navigator.push(
              args[0],
              maybeUnwrapAndBuildArgument<Route<Object>>(args[1],
                  parentState: luaState)),
          parentState: luaState)
    ];
  });
}
