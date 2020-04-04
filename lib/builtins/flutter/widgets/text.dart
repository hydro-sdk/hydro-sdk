import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadText({@required LuaState luaState, @required HydroTable table}) {
  table["text"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Text(
        args[0],
        key: args[1] != null
            ? maybeUnwrapAndBuildArgument<Widget>(args[1]["key"], parentState: luaState)
            : null,
        style: args[1] != null
            ? maybeUnwrapAndBuildArgument<Widget>(args[1]["style"],
                parentState: luaState)
            : null,
      )
    ];
  });
}
