import 'package:flutter/rendering.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void loadGridView({@required HydroState luaState, @required HydroTable table}) {
  table["gridViewCount"] = makeLuaDartFunc(func: (List<dynamic> args) {
    var children = maybeUnBoxAndBuildArgument<Widget>(args[0]["children"],
        parentState: luaState);
    return [
      GridView.count(
        key: maybeUnBoxAndBuildArgument(args[0]["key"], parentState: luaState),
        scrollDirection: maybeUnBoxEnum(
            values: Axis.values, boxedEnum: args[0]["scrollDirection"]),
        reverse: args[0]["reverse"],
        primary: args[0]["primary"],
        shrinkWrap: args[0]["shrinkWrap"],
        padding: args[0]["padding"],
        crossAxisCount: args[0]["crossAxisCount"],
        mainAxisSpacing: args[0]["mainAxisSpacing"]?.toDouble(),
        crossAxisSpacing: args[0]["crossAxisSpacing"]?.toDouble(),
        childAspectRatio: args[0]["childAspectRatio"]?.toDouble(),
        addAutomaticKeepAlives: args[0]["addAutomaticKeepAlives"],
        addRepaintBoundaries: args[0]["addRepaintBoundaries"],
        addSemanticIndexes: args[0]["addSemanticIndexes"],
        cacheExtent: args[0]["cacheExtent"],
        children: children,
        dragStartBehavior: maybeUnBoxEnum(
            values: DragStartBehavior.values,
            boxedEnum: args[0]["dragStartBehavior"]),
      )
    ];
  });
}
