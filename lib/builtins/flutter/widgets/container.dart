import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:flutter/material.dart';

loadContainer({@required HydroState luaState, @required HydroTable table}) {
  table["container"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Container(
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        color: maybeUnwrapAndBuildArgument<Widget>(args[0]["color"],
            parentState: luaState),
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
        decoration: maybeUnwrapAndBuildArgument<Widget>(args[0]["decoration"],
            parentState: luaState),
        margin: maybeUnwrapAndBuildArgument<Widget>(args[0]["margin"],
            parentState: luaState),
        padding: maybeUnwrapAndBuildArgument<Widget>(args[0]["padding"],
            parentState: luaState),
        width: args[0]["width"]?.toDouble(),
        height: args[0]["height"]?.toDouble(),
      )
    ];
  });
}
