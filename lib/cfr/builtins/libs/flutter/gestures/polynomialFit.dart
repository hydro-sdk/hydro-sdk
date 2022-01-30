import 'dart:core';

import 'package:flutter/src/gestures/lsq_solver.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPolynomialFit extends VMManagedBox<PolynomialFit> {
  VMManagedPolynomialFit(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['coefficients'] = maybeBoxObject<List<double>>(
        object: vmObject.coefficients,
        hydroState: hydroState,
        table: HydroTable());
    table['confidence'] = vmObject.confidence;
  }

  final HydroTable table;

  final HydroState hydroState;

  final PolynomialFit vmObject;
}

class RTManagedPolynomialFit extends PolynomialFit
    implements Box<PolynomialFit> {
  RTManagedPolynomialFit(int degree,
      {required this.table, required this.hydroState})
      : super(
          degree,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['coefficients'] = maybeBoxObject<List<double>>(
        object: coefficients, hydroState: hydroState, table: HydroTable());
    table['confidence'] = confidence;
  }

  final HydroTable table;

  final HydroState hydroState;

  PolynomialFit unwrap() => this;
  PolynomialFit get vmObject => this;
}

void loadPolynomialFit(
    {required HydroState hydroState, required HydroTable table}) {
  table['polynomialFit'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedPolynomialFit(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<PolynomialFit>(boxer: (
      {required PolynomialFit vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPolynomialFit(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
