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
    var key =
        maybeUnBoxAndBuildArgument<Key>(args[0]["key"], parentState: luaState);
    var largeTitle = maybeUnBoxAndBuildArgument<Widget>(args[0]["largeTitle"],
        parentState: luaState);
    var leading = maybeUnBoxAndBuildArgument<Widget>(args[0]["leading"],
        parentState: luaState);
    var automaticallyImplyLeading = args[0]["automaticallyImplyLeading"];
    var automaticallyImplyTitle = args[0]["automaticallyImplyTitle"];
    var previousPageTitle = args[0]["previousPageTitle"];
    var middle = maybeUnBoxAndBuildArgument<Widget>(args[0]["middle"],
        parentState: luaState);
    var trailing = maybeUnBoxAndBuildArgument<Widget>(args[0]["trailing"],
        parentState: luaState);
    var backgroundColor = maybeUnBoxAndBuildArgument<Color>(
        args[0]["backgroundColor"],
        parentState: luaState);
    var brightness = maybeUnBoxEnum(
        values: Brightness.values, boxedEnum: args[0]["brightness"]);
    var padding = maybeUnBoxAndBuildArgument<EdgeInsets>(args[0]["padding"],
        parentState: luaState);
    var border = maybeUnBoxAndBuildArgument<Border>(args[0]["border"],
        parentState: luaState);
    var transitionBetweenRoutes = args[0]["transitionBetweenRoutes"];
    var heroTag = args[0]["heroTag"];
    return [
      args[0]["heroTag"] == null
          ? CupertinoSliverNavigationBar(
              key: key,
              largeTitle: largeTitle,
              leading: leading,
              automaticallyImplyLeading: automaticallyImplyLeading,
              automaticallyImplyTitle: automaticallyImplyTitle,
              previousPageTitle: previousPageTitle,
              middle: middle,
              trailing: trailing,
              backgroundColor: backgroundColor,
              brightness: brightness,
              padding: padding,
              border: border,
              transitionBetweenRoutes: transitionBetweenRoutes,
            )
          : CupertinoSliverNavigationBar(
              key: key,
              largeTitle: largeTitle,
              leading: leading,
              automaticallyImplyLeading: automaticallyImplyLeading,
              automaticallyImplyTitle: automaticallyImplyTitle,
              previousPageTitle: previousPageTitle,
              middle: middle,
              trailing: trailing,
              backgroundColor: backgroundColor,
              brightness: brightness,
              padding: padding,
              border: border,
              transitionBetweenRoutes: transitionBetweenRoutes,
              heroTag: heroTag,
            )
    ];
  });
}
