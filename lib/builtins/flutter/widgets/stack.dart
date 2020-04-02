import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadStack({@required LuaState luaState, @required HydroTable table}) {
  table["stack"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Stack(
        key: maybeUnwrapAndBuildArgument(args[0]["key"], parentState: luaState),
        textDirection: TextDirection.values.firstWhere(
            (x) => x.index == args[0]["textDirection"],
            orElse: () => null),
        fit: StackFit.values
            .firstWhere((x) => x.index == args[0]["fit"], orElse: () => null),
        overflow: Overflow.values.firstWhere(
            (x) => x.index == args[0]["overflow"],
            orElse: () => null),
        children: maybeUnwrapAndBuildArgument(args[0]["children"],
            parentState: luaState),
      )
    ];
  });
}
