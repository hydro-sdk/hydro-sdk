import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadSizedBox({@required LuaState luaState, @required HydroTable table}) {
  table["sizedBox"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      SizedBox(
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["key"], parentState: luaState),
        width: args[0]["width"]?.toDouble(),
        height: args[0]["height"]?.toDouble(),
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
