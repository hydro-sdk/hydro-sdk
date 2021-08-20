import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadSliverGrid({required HydroState luaState, required HydroTable table}) {
  table["sliverGridCount"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      SliverGrid.count(
        key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
            parentState: luaState),
        crossAxisCount: args[0]["crossAxisCount"],
        mainAxisSpacing: args[0]["mainAxisSpacing"]?.toDouble(),
        crossAxisSpacing: args[0]["crossAxisSpacing"]?.toDouble(),
        childAspectRatio: args[0]["childAspectRatio"]?.toDouble(),
        children: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["children"],
            parentState: luaState),
      )
    ];
  });

  table["sliverGridExtent"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      SliverGrid.extent(
        key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
            parentState: luaState),
        maxCrossAxisExtent: args[0]["maxCrossAxisExtent"],
        mainAxisSpacing: args[0]["mainAxisSpacing"]?.toDouble(),
        crossAxisSpacing: args[0]["crossAxisSpacing"]?.toDouble(),
        childAspectRatio: args[0]["childAspectRatio"]?.toDouble(),
        children: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["children"],
            parentState: luaState),
      )
    ];
  });
}
