import 'package:flutter/cupertino.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCupertinoTabBar(
    {@required HydroState luaState, @required HydroTable table}) {
  table["cupertinoTabBar"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      CupertinoTabBar(
        key: maybeUnBoxAndBuildArgument<Key>(args[0]["key"],
            parentState: luaState),
        items: maybeUnBoxAndBuildArgument<BottomNavigationBarItem>(
            args[0]["items"],
            parentState: luaState),
        onTap: args[0]["onTap"] != null
            ? (int val) {
                Closure closure = args[0]["onChanged"];
                closure.dispatch(
                  [val],
                  parentState: luaState,
                  resetEnclosingLexicalEnvironment: true,
                );
              }
            : null,
        currentIndex: args[0]["currentIndex"],
        backgroundColor: maybeUnBoxAndBuildArgument<Color>(
            args[0]["backgroundColor"],
            parentState: luaState),
        activeColor: maybeUnBoxAndBuildArgument<Color>(args[0]["activeColor"],
            parentState: luaState),
        inactiveColor: maybeUnBoxAndBuildArgument<Color>(
            args[0]["inactiveColor"],
            parentState: luaState),
        border: maybeUnBoxAndBuildArgument<Border>(args[0]["border"],
            parentState: luaState),
      )
    ];
  });
}
