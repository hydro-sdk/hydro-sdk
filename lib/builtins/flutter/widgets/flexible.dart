import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadFlexible({@required LuaState luaState, @required HydroTable table}) {
  table["flexible"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Flexible(
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        flex: args[0]["flex"],
        fit: FlexFit.values.firstWhere((x) => x.index == args[0]["fit"]),
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
