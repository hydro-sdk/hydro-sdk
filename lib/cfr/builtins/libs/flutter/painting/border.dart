import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadBorder({@required HydroState luaState, @required HydroTable table}) {
  table["border"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Border(
        top: maybeUnBoxAndBuildArgument<BorderSide>(args[0]["top"],
            parentState: luaState),
        right: maybeUnBoxAndBuildArgument<BorderSide>(args[0]["right"],
            parentState: luaState),
        bottom: maybeUnBoxAndBuildArgument<BorderSide>(args[0]["bottom"],
            parentState: luaState),
        left: maybeUnBoxAndBuildArgument<BorderSide>(args[0]["left"],
            parentState: luaState),
      )
    ];
  });
}
