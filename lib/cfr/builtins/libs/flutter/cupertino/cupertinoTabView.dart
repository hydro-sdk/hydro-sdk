import 'package:flutter/cupertino.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';

import 'package:hydro_sdk/cfr/vm/table.dart';

void loadCupertinoTabView(
    {@required HydroState luaState, @required HydroTable table}) {
  table["cupertinoTabView"] = makeLuaDartFunc(func: (List<dynamic> args) {
    Map routes = args[0]["routes"];
    return [
      CupertinoTabView(
        key: maybeUnBoxAndBuildArgument<Key>(args[0]["key"],
            parentState: luaState),
        builder: args[0]["builder"] != null
            ? (BuildContext context) {
                Closure closure = args[0]["builder"];

                var result = closure.dispatch([
                  maybeBoxObject(
                      object: context,
                      hydroState: luaState,
                      table: HydroTable())
                ],
                    parentState: luaState,
                    resetEnclosingLexicalEnvironment: true);

                return maybeUnBoxAndBuildArgument<Widget>(result[0],
                    parentState: luaState);
              }
            : null,
        defaultTitle: args[0]["defaultTitle"],
        routes: routes != null
            ? Map.fromEntries(
                routes?.keys?.map((e) => MapEntry(e, (BuildContext context) {
                      Closure closure = routes[e];

                      var result = closure.dispatch([
                        maybeBoxObject(
                            object: context,
                            hydroState: luaState,
                            table: HydroTable())
                      ],
                          parentState: luaState,
                          resetEnclosingLexicalEnvironment: true);

                      return maybeUnBoxAndBuildArgument<Widget>(result[0],
                          parentState: luaState);
                    })))
            : null,
      )
    ];
  });
}
