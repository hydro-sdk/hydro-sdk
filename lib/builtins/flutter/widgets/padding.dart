import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadPadding({@required LuaState luaState, @required HydroTable table}) {
  table["padding"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Padding(
        key: maybeUnwrapAndBuildArgument(args[0]["key"], parentState: luaState),
        padding: maybeUnwrapAndBuildArgument(args[0]["padding"],
            parentState: luaState),
        child: maybeUnwrapAndBuildArgument(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
