import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadTextStyle({@required LuaState luaState, @required HydroTable table}) {
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
