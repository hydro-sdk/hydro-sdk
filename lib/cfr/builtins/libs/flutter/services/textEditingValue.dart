import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadTextEditingValue(
    {@required HydroState luaState, @required HydroTable table}) {
  table["textEditingValue"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      TextEditingValue(
          text: args[0]["text"],
          selection: maybeUnBoxAndBuildArgument<TextSelection>(
              args[0]["selection"],
              parentState: luaState),
          composing: maybeUnBoxAndBuildArgument<TextRange>(args[0]["composing"],
              parentState: luaState))
    ];
  });
}
