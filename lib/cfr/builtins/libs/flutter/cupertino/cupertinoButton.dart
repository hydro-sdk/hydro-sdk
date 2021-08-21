import 'package:flutter/cupertino.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCupertinoButton(
    {required HydroState luaState, required HydroTable table}) {
  table["cupertinoButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      CupertinoButton(
        key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
            parentState: luaState),
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
        padding: maybeUnBoxAndBuildArgument<EdgeInsets, dynamic>(
            args[0]["padding"],
            parentState: luaState),
        color: maybeUnBoxAndBuildArgument<Color, dynamic>(args[0]["color"],
            parentState: luaState),
        disabledColor: maybeUnBoxAndBuildArgument<Color, dynamic>(
            args[0]["disabledColor"],
            parentState: luaState),
        minSize: args[0]["minSize"]?.toDouble(),
        pressedOpacity: args[0]["pressedOpacity"]?.toDouble(),
        borderRadius: maybeUnBoxAndBuildArgument<BorderRadius, dynamic>(
            args[0]["borderRadius"],
            parentState: luaState),
        onPressed: () {
          Closure? closure = args[0]["onPressed"];
          if (closure != null) {
            closure.dispatch(
              [],
              parentState: luaState,
              resetEnclosingLexicalEnvironment: true,
            );
          }
        },
      )
    ];
  });
}
