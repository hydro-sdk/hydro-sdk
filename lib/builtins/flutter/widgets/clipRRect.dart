import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadClipRRect({@required LuaState luaState, @required HydroTable table}) {
  table["clipRRect"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      ClipRRect(
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["ley"],
            parentState: luaState),
        borderRadius: maybeUnwrapAndBuildArgument<Widget>(
            args[0]["borderRadius"],
            parentState: luaState),
        clipBehavior:
            Clip.values.firstWhere((x) => x.index == args[0]["clipBehavior"]),
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
