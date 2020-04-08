import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadNavigator({@required LuaState luaState, @required HydroTable table}) {
  table["navigatorPush"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeUnwrapAndBuildArgument<Widget>(
          Navigator.push(
              args[0],
              maybeUnwrapAndBuildArgument<Route<Object>>(args[1],
                  parentState: luaState)),
          parentState: luaState)
    ];
  });
}
