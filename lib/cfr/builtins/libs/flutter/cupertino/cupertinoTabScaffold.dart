import 'package:flutter/cupertino.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCupertinoTabScaffold(
    {@required HydroState luaState, @required HydroTable table}) {
  table["cupertinoTabScaffold"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      CupertinoTabScaffold(
        key: maybeUnBoxAndBuildArgument<Key>(args[0]["key"],
            parentState: luaState),
        tabBar: maybeUnBoxAndBuildArgument<CupertinoTabBar>(args[0]["tabBar"],
            parentState: luaState),
        tabBuilder: (context, index) {
          Closure closure = args[0]["tabBuilder"];
          if (closure != null) {
            var res = closure.dispatch(
              [
                maybeBoxObject(
                  object: context,
                  hydroState: luaState,
                  table: HydroTable(),
                ),
                index
              ],
              parentState: luaState,
              resetEnclosingLexicalEnvironment: true,
            );

            return maybeUnBoxAndBuildArgument<Widget>(res[0],
                parentState: luaState);
          }
          return null;
        },
        controller: maybeUnBoxAndBuildArgument<CupertinoTabController>(
            args[0]["controller"],
            parentState: luaState),
        backgroundColor: maybeUnBoxAndBuildArgument<Color>(
            args[0]["backgroundColor"],
            parentState: luaState),
        resizeToAvoidBottomInset: args[0]["resizeToAvoidBottomInset"],
      )
    ];
  });
}
