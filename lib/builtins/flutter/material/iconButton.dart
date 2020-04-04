import 'package:flua/luastate.dart';
import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadIconButton({@required LuaState luaState, @required HydroTable table}) {
  table["iconButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      IconButton(
        icon: maybeUnwrapAndBuildArgument<Widget>(args[0]["icon"],
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
