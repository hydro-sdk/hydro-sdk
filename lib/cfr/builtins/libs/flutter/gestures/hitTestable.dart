import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/hit_test.dart' as _baac;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedHitTestable extends _36c2.VMManagedBox<_baac.HitTestable> {
  VMManagedHitTestable(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['hitTest'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.hitTest(
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestResult, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _baac.HitTestable vmObject;
}

void loadHitTestable(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_baac.HitTestable>(boxer: (
      {required _baac.HitTestable vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedHitTestable(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
