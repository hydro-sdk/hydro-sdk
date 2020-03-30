import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadPreferredSize({@required LuaState luaState, @required HydroTable table}) {
  table["preferredSize"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      PreferredSize(
        child: maybeUnwrapAndBuildArgument(args[0]["child"],
            parentState: luaState),
        preferredSize: maybeUnwrapAndBuildArgument(args[0]["preferredSize"],
            parentState: luaState),
        key: maybeUnwrapAndBuildArgument(args[0]["key"], parentState: luaState),
      )
    ];
  });
}
