import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadAppBar({@required LuaState luaState, @required HydroTable table}) {
  table["appBar"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      AppBar(
        title: maybeUnwrapAndBuildArgument(args[0]["title"],
            parentState: luaState),
        leading: maybeUnwrapAndBuildArgument(args[0]["leading"],
            parentState: luaState),
        actions: maybeUnwrapAndBuildArgument(args[0]["actions"],
            parentState: luaState),
        bottom: maybeUnwrapAndBuildArgument(args[0]["bottom"],
            parentState: luaState),
      )
    ];
  });
}
