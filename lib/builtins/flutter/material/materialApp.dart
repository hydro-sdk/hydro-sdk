import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadMaterialApp(    {@required LuaState luaState, @required HydroTable table}) {
  table["materialApp"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      MaterialApp(
        initialRoute: args[0]["initialRoute"],
        home: maybeUnwrapAndBuildArgument(args[0]["home"],parentState: luaState),
        title: args[0]["title"],
      )
    ];
  });
}
