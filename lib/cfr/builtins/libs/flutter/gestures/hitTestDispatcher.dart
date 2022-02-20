import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/hit_test.dart' as _baac;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedHitTestDispatcher
    extends _36c2.VMManagedBox<_baac.HitTestDispatcher> {
  VMManagedHitTestDispatcher(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['dispatchEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispatchEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestResult, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _baac.HitTestDispatcher vmObject;
}

void loadHitTestDispatcher(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_baac.HitTestDispatcher>(boxer: (
      {required _baac.HitTestDispatcher vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedHitTestDispatcher(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
