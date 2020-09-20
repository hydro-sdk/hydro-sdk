import 'package:flutter/cupertino.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCupertinoSliverNavigationBar(
    {@required HydroState luaState, @required HydroTable table}) {
  table["cupertinoSliverNavigationBar"] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      CupertinoSliverNavigationBar(
        key: maybeUnBoxAndBuildArgument<Key>(args[0]["key"],
            parentState: luaState),
        largeTitle: maybeUnBoxAndBuildArgument<Widget>(args[0]["largeTitle"],
            parentState: luaState),
        leading: maybeUnBoxAndBuildArgument<Widget>(args[0]["leading"],
            parentState: luaState),
        automaticallyImplyLeading: args[0]["automaticallyImplyLeading"],
        automaticallyImplyTitle: args[0]["automaticallyImplyTitle"],
        previousPageTitle: args[0]["previousPageTitle"],
        middle: maybeUnBoxAndBuildArgument<Widget>(args[0]["middle"],
            parentState: luaState),
        trailing: maybeUnBoxAndBuildArgument<Widget>(args[0]["trailing"],
            parentState: luaState),
        backgroundColor: maybeUnBoxAndBuildArgument<Color>(
            args[0]["backgroundColor"],
            parentState: luaState),
        brightness: maybeUnBoxEnum(
            values: Brightness.values, boxedEnum: args[0]["brightness"]),
        padding: maybeUnBoxAndBuildArgument<EdgeInsets>(args[0]["padding"],
            parentState: luaState),
        border: maybeUnBoxAndBuildArgument<Border>(args[0]["border"],
            parentState: luaState),
        transitionBetweenRoutes: args[0]["transitionBetweenRoutes"],
        heroTag: args[0]["heroTag"],
      )
    ];
  });
}
