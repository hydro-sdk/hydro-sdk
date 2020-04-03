import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadContainer({@required LuaState luaState, @required HydroTable table}) {
  table["container"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Container(
          key: maybeUnwrapAndBuildArgument(args[0]["key"],
              parentState: luaState),
          color: maybeUnwrapAndBuildArgument(args[0]["color"],
              parentState: luaState),
          child: maybeUnwrapAndBuildArgument(args[0]["child"],
              parentState: luaState),
          decoration: maybeUnwrapAndBuildArgument(args[0]["decoration"],
              parentState: luaState))
    ];
  });
}
