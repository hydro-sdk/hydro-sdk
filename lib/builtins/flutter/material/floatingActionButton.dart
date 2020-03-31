import 'package:flua/luastate.dart';
import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadFloatingActionButton(
    {@required LuaState luaState, @required HydroTable table}) {
  table["floatingActionButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      FloatingActionButton(
        key: maybeUnwrapAndBuildArgument(args[0]["key"], parentState: luaState),
        child: maybeUnwrapAndBuildArgument(args[0]["child"],
            parentState: luaState),
        tooltip: args[0]["tooltip"],
        onPressed: () {
          Closure closure = args[0]["onPressed"];
          closure.dispatch([], parentState: luaState);
        },
      )
    ];
  });
}
