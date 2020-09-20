import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadSliverList(
    {@required HydroState luaState, @required HydroTable table}) {
  table["sliverList"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      SliverList(
        key: maybeUnBoxAndBuildArgument<Key>(args[0]["key"],
            parentState: luaState),
        delegate: maybeUnBoxAndBuildArgument<SliverChildDelegate>(
            args[0]["delegate"],
            parentState: luaState),
      )
    ];
  });
}
