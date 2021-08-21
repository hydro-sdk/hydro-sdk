import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadSliverPadding(
    {required HydroState luaState, required HydroTable table}) {
  table["sliverPadding"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      SliverPadding(
        key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
            parentState: luaState),
        sliver: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["sliver"],
            parentState: luaState),
        padding: maybeUnBoxAndBuildArgument<EdgeInsets, dynamic>(
            args[0]["padding"],
            parentState: luaState),
      )
    ];
  });
}
