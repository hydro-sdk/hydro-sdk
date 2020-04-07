import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadContainer({@required LuaState luaState, @required HydroTable table}) {
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
        width: args[0]["width"],
        height: args[0]["height"],
      )
    ];
  });
}
