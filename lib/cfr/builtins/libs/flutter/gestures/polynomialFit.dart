import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/lsq_solver.dart' as _f397;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPolynomialFit extends _36c2.VMManagedBox<_f397.PolynomialFit> {
  VMManagedPolynomialFit(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['coefficients'] = _36c2.maybeBoxObject<_fac9.List<_fac9.double>>(
        object: vmObject.coefficients,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['confidence'] = vmObject.confidence;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _f397.PolynomialFit vmObject;
}

class RTManagedPolynomialFit extends _f397.PolynomialFit
    implements _36c2.Box<_f397.PolynomialFit> {
  RTManagedPolynomialFit(_fac9.int degree,
      {required this.table, required this.hydroState})
      : super(
          degree,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['coefficients'] = _36c2.maybeBoxObject(
        object: coefficients,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['confidence'] = _36c2.maybeBoxObject(
        object: confidence, hydroState: hydroState, table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _f397.PolynomialFit unwrap() => this;
  _f397.PolynomialFit get vmObject => this;
}

void loadPolynomialFit(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['polynomialFit'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedPolynomialFit(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_f397.PolynomialFit>(boxer: (
      {required _f397.PolynomialFit vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPolynomialFit(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
