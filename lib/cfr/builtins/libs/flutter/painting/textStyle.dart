import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedTextStyle extends VMManagedBox<TextStyle> {
  final HydroTable table;
  final TextStyle vmObject;
  final HydroState hydroState;

  VMManagedTextStyle({
    required this.table,
    required this.vmObject,
    required this.hydroState,
  }) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table["copyWith"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<TextStyle>(
          object: vmObject.copyWith(
              color: maybeUnBoxAndBuildArgument<Color, dynamic>(
                  args[1]["color"],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable(),
        ),
      ];
    });
    table["apply"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<TextStyle>(
          object: vmObject.apply(
              color: maybeUnBoxAndBuildArgument<Color, dynamic>(
                  args[1]["color"],
                  parentState: hydroState),
              fontWeightDelta: args[1]["fontWeightDelta"] != null
                  ? args[1]["fontWeightDelta"]
                  : 0),
          hydroState: hydroState,
          table: HydroTable(),
        ),
      ];
    });
  }
}

void loadTextStyle({
  required HydroState luaState,
  required HydroTable table,
}) {
  registerBoxer<TextStyle>(boxer: ({
    required TextStyle vmObject,
    required HydroState hydroState,
    required HydroTable table,
  }) {
    return VMManagedTextStyle(
      vmObject: vmObject,
      hydroState: hydroState,
      table: table,
    );
  });

  table["textStyle"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      TextStyle(
          fontSize: args[0]["fontSize"]?.toDouble(),
          color: maybeUnBoxAndBuildArgument<Color, dynamic>(args[0]["color"],
              parentState: luaState),
          fontWeight: maybeUnBoxAndBuildArgument<FontWeight, dynamic>(
              args[0]["fontWeight"],
              parentState: luaState))
    ];
  });
}
