import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadBoxDecoration({@required LuaState luaState, @required HydroTable table}) {
  table["boxDecoration"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      BoxDecoration(
          color: maybeUnwrapAndBuildArgument<Widget>(args[0]["color"],
              parentState: luaState),
          shape: BoxShape.values.firstWhere((x) => x.index == args[0]["shape"],
              orElse: () => null))
    ];
  });
}
