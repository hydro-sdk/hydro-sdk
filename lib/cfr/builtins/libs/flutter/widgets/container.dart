import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadContainer({required HydroState luaState, required HydroTable table}) {
  table["container"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Container(
        key: maybeUnBoxAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        alignment: maybeUnBoxAndBuildArgument<Alignment>(args[0]["alignment"],
            parentState: luaState),
        color: maybeUnBoxAndBuildArgument<Widget>(args[0]["color"],
            parentState: luaState),
        child: maybeUnBoxAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
        decoration: maybeUnBoxAndBuildArgument<Widget>(args[0]["decoration"],
            parentState: luaState),
        margin: maybeUnBoxAndBuildArgument<Widget>(args[0]["margin"],
            parentState: luaState),
        padding: maybeUnBoxAndBuildArgument<Widget>(args[0]["padding"],
            parentState: luaState),
        width: args[0]["width"]?.toDouble(),
        height: args[0]["height"]?.toDouble(),
      )
    ];
  });
}
