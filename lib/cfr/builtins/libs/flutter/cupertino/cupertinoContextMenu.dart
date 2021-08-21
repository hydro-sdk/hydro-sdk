import 'package:flutter/cupertino.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCupertinoContextMenu(
    {required HydroState luaState, required HydroTable table}) {
  table["cupertinoContextMenu"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      CupertinoContextMenu(
        key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
            parentState: luaState),
        actions: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["actions"],
            parentState: luaState),
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
        previewBuilder: args[0]["previewBuilder"] != null
            ? (context, animation, child) {
                Closure closure = args[0]["previewBuilder"];
                return maybeUnBoxAndBuildArgument<Widget, dynamic>(
                    closure.dispatch(
                      [
                        maybeBoxObject<BuildContext>(
                          object: context,
                          hydroState: luaState,
                          table: HydroTable(),
                        ),
                        maybeBoxObject<Animation<double>>(
                          object: animation,
                          hydroState: luaState,
                          table: HydroTable(),
                        ),
                        child,
                      ],
                      parentState: luaState,
                    )[0],
                    parentState: luaState);
              }
            : null,
      )
    ];
  });
}
