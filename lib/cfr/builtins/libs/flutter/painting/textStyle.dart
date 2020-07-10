import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

class VMManagedTextStyle extends VMManagedBox<TextStyle> {
  final HydroTable table;
  final TextStyle vmObject;
  final HydroState hydroState;

  VMManagedTextStyle(
      {@required this.table,
      @required this.vmObject,
      @required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table["copyWith"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<TextStyle>(
          object: vmObject.copyWith(
              color: maybeUnBoxAndBuildArgument<Color>(args[1]["color"],
                  parentState: hydroState)),
          hydroState: hydroState,
        ),
      ];
    });
    table["apply"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<TextStyle>(
          object: vmObject.apply(
              color: maybeUnBoxAndBuildArgument<Color>(args[1]["color"],
                  parentState: hydroState),
              fontWeightDelta: args[1]["fontWeightDelta"] != null
                  ? args[1]["fontWeightDelta"]
                  : 0),
          hydroState: hydroState,
        ),
      ];
    });
  }
}

void loadTextStyle(
    {@required HydroState luaState, @required HydroTable table}) {
  registerBoxer(boxer: ({TextStyle vmObject, HydroState hydroState}) {
    return VMManagedTextStyle(
      vmObject: vmObject,
      hydroState: hydroState,
      table: HydroTable(),
    );
  });

  table["textStyle"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      TextStyle(
          fontSize: args[0]["fontSize"]?.toDouble(),
          color: maybeUnBoxAndBuildArgument<Color>(args[0]["color"],
              parentState: luaState),
          fontWeight: maybeUnBoxAndBuildArgument<FontWeight>(
              args[0]["fontWeight"],
              parentState: luaState))
    ];
  });
}
