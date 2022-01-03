import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/hit_test.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedHitTestTarget extends VMManagedBox<HitTestTarget> {
  VMManagedHitTestTarget(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['handleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<HitTestEntry, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final HitTestTarget vmObject;
}

void loadHitTestTarget(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<HitTestTarget>(boxer: (
      {required HitTestTarget vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedHitTestTarget(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
