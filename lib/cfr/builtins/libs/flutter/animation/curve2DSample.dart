import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/curves.dart' as _8c47;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCurve2DSample extends _36c2.VMManagedBox<_8c47.Curve2DSample> {
  VMManagedCurve2DSample(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['t'] = vmObject.t;
    table['value'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.value,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8c47.Curve2DSample vmObject;
}

class RTManagedCurve2DSample extends _8c47.Curve2DSample
    implements _36c2.Box<_8c47.Curve2DSample> {
  RTManagedCurve2DSample(_fac9.double t$, _a643.Offset value$,
      {required this.table, required this.hydroState})
      : super(
          t$,
          value$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['t'] = _36c2.maybeBoxObject(
        object: this.t, hydroState: hydroState, table: _36c2.HydroTable());
    table['value'] = _36c2.maybeBoxObject(
        object: this.value, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _8c47.Curve2DSample unwrap() => this;
  _8c47.Curve2DSample get vmObject => this;
  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadCurve2DSample(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['curve2DSample'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCurve2DSample(
          luaCallerArguments[1]?.toDouble(),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_8c47.Curve2DSample>(boxer: (
      {required _8c47.Curve2DSample vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCurve2DSample(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
