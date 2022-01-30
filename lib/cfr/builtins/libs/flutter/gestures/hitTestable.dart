import 'dart:ui';

import 'package:flutter/src/gestures/hit_test.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedHitTestable extends VMManagedBox<HitTestable> {
  VMManagedHitTestable(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['hitTest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.hitTest(
          maybeUnBoxAndBuildArgument<HitTestResult, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final HitTestable vmObject;
}

void loadHitTestable(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<HitTestable>(boxer: (
      {required HitTestable vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedHitTestable(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
