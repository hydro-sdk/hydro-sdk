import 'package:flua/hydroState.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadCard({@required HydroState luaState, @required HydroTable table}) {
  table["card"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Card(
          borderOnForeground: args[0]["borderOnForeground"],
          child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
              parentState: luaState),
          color: maybeUnwrapAndBuildArgument<Widget>(args[0]["color"],
              parentState: luaState))
    ];
  });
}
