import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadCircularProgressIndicator(
    {@required HydroState luaState, @required HydroTable table}) {
  table["circularProgressIndicator"] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      CircularProgressIndicator(
        key: maybeUnwrapAndBuildArgument<Key>(args[0]["key"],
            parentState: luaState),
        backgroundColor: maybeUnwrapAndBuildArgument<Color>(
            args[0]["backgrounColor"],
            parentState: luaState),
        value: args[0]["value"],
        valueColor: maybeUnwrapAndBuildArgument<Animation<Color>>(
            args[0]["valueColor"],
            parentState: luaState),
        strokeWidth: args[0]["strokeWidth"]?.toDouble(),
        semanticsLabel: args[0]["semanticsLabel"],
        semanticsValue: args[0]["semanticsValue"],
      )
    ];
  });
}
