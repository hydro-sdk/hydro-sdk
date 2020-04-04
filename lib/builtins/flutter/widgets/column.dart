import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadColumn({@required LuaState luaState, @required HydroTable table}) {
  table["column"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Column(
          mainAxisAlignment: MainAxisAlignment.values.firstWhere(
              (x) => x.index == args[0]["mainAxisAlignment"],
              orElse: () => null),
          mainAxisSize: MainAxisSize.values.firstWhere(
              (x) => x.index == args[0]["mainAxisSize"],
              orElse: () => null),
          crossAxisAlignment: CrossAxisAlignment.values.firstWhere(
              (x) => x.index == args[0]["crossAxisAlignment"],
              orElse: () => null),
          children: maybeUnwrapAndBuildArgument<Widget>(args[0]["children"],
              parentState: luaState))
    ];
  });
}
