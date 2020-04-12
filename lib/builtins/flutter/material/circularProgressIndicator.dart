import 'package:flua/hydroState.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadCircularProgressIndicator(
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
