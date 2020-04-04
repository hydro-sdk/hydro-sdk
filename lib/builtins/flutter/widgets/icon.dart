import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadIcon({@required LuaState luaState, @required HydroTable table}) {
  table["icon"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Icon(maybeUnwrapAndBuildArgument<Widget>(args[0], parentState: luaState),
          size: args.length >= 2 && args[1] != null && args[1]["size"] != null
              ? args[1]["size"].toDouble()
              : null,
          color: args.length >= 2 && args[1] != null
              ? maybeUnwrapAndBuildArgument<Widget>(args[1]["color"],
                  parentState: luaState)
              : null)
    ];
  });
}
