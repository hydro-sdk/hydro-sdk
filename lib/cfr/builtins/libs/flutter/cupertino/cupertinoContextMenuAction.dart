import 'package:flutter/cupertino.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCupertinoContextMenuAction(
    {required HydroState luaState, required HydroTable table}) {
  table["cupertinoContextMenuAction"] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      CupertinoContextMenuAction(
        key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
            parentState: luaState),
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
        isDefaultAction: args[0]["isDefaultAction"],
        isDestructiveAction: args[0]["isDestructiveAction"],
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
        trailingIcon: maybeUnBoxAndBuildArgument<IconData, dynamic>(
            args[0]["trailingIcon"],
            parentState: luaState),
      )
    ];
  });
}
