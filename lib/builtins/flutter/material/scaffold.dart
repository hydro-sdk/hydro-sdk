import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadScaffold({@required LuaState luaState, @required HydroTable table}) {
  table["scaffold"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Scaffold(
        appBar: maybeUnwrapAndBuildArgument(args[0]["appBar"],
            parentState: luaState),
        body:
            maybeUnwrapAndBuildArgument(args[0]["body"], parentState: luaState),
        floatingActionButton: maybeUnwrapAndBuildArgument(
            args[0]["floatingActionButton"],
            parentState: luaState),
        backgroundColor: maybeUnwrapAndBuildArgument(args[0]["backgroundColor"],
            parentState: luaState),
      )
    ];
  });
}
