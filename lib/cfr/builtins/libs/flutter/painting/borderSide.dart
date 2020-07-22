import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadBorderSide(
    {@required HydroState luaState, @required HydroTable table}) {
  table["borderSide"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      BorderSide(
          color: maybeUnBoxAndBuildArgument<Color>(args[0]["color"],
              parentState: luaState),
          width: args[0]["width"]?.toDouble(),
          style: maybeUnBoxEnum(
              values: BorderStyle.values, boxedEnum: args[0]["style"]))
    ];
  });
}
