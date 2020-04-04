import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadTextSpan({@required LuaState luaState, @required HydroTable table}) {
  table["textSpan"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      TextSpan(
          text: args[0]["text"],
          children: maybeUnwrapAndBuildArgument<InlineSpan>(args[0]["children"],
              parentState: luaState),
          style: maybeUnwrapAndBuildArgument<Widget>(args[0]["style"],
              parentState: luaState),
          semanticsLabel: args[0]["semanticsLabel"])
    ];
  });
}
