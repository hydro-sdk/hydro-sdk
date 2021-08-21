import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadInkWell({required HydroState luaState, required HydroTable table}) {
  table["inkWell"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      InkWell(
        key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
            parentState: luaState),
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
        onTap: () {
          Closure closure = args[0]["onTap"];
          closure.dispatch([null], parentState: luaState);
        },
        focusColor: maybeUnBoxAndBuildArgument<Color, dynamic>(
            args[0]["focusColor"],
            parentState: luaState),
        hoverColor: maybeUnBoxAndBuildArgument<Color, dynamic>(
            args[0]["hoverColor"],
            parentState: luaState),
        highlightColor: maybeUnBoxAndBuildArgument<Color, dynamic>(
            args[0]["highlightColor"],
            parentState: luaState),
        splashColor: maybeUnBoxAndBuildArgument<Color, dynamic>(
            args[0]["splashColor"],
            parentState: luaState),
        radius: args[0]["radius"],
        borderRadius: maybeUnBoxAndBuildArgument<BorderRadius, dynamic>(
            args[0]["borderRadius"],
            parentState: luaState),
        enableFeedback: args[0]["enableFeedback"],
        canRequestFocus: args[0]["canRequestFocus"],
        autofocus: args[0]["autoFocus"],
      )
    ];
  });
}
