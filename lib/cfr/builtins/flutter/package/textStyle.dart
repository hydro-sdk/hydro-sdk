import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadTextStyle(
    {@required HydroState luaState, @required HydroTable table}) {
  table["textStyle"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      TextStyle(
          fontSize: args[0]["fontSize"]?.toDouble(),
          color: maybeUnwrapAndBuildArgument<Color>(args[0]["color"],
              parentState: luaState),
          fontWeight: maybeUnwrapAndBuildArgument<FontWeight>(
              args[0]["fontWeight"],
              parentState: luaState))
    ];
  });
}
