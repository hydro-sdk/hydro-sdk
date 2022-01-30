import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/hit_test.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedHitTestDispatcher extends VMManagedBox<HitTestDispatcher> {
  VMManagedHitTestDispatcher(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['dispatchEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispatchEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<HitTestResult, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final HitTestDispatcher vmObject;
}

void loadHitTestDispatcher(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<HitTestDispatcher>(boxer: (
      {required HitTestDispatcher vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedHitTestDispatcher(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
