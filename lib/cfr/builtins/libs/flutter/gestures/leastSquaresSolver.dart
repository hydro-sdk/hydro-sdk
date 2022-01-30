import 'dart:core';

import 'package:flutter/src/gestures/lsq_solver.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedLeastSquaresSolver extends VMManagedBox<LeastSquaresSolver> {
  VMManagedLeastSquaresSolver(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['x'] = maybeBoxObject<List<double>>(
        object: vmObject.x, hydroState: hydroState, table: HydroTable());
    table['y'] = maybeBoxObject<List<double>>(
        object: vmObject.y, hydroState: hydroState, table: HydroTable());
    table['w'] = maybeBoxObject<List<double>>(
        object: vmObject.w, hydroState: hydroState, table: HydroTable());
    table['solve'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.solve(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          maybeBoxObject<PolynomialFit?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final LeastSquaresSolver vmObject;
}

class RTManagedLeastSquaresSolver extends LeastSquaresSolver
    implements Box<LeastSquaresSolver> {
  RTManagedLeastSquaresSolver(List<double> x$, List<double> y$, List<double> w$,
      {required this.table, required this.hydroState})
      : super(
          x$,
          y$,
          w$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['x'] = maybeBoxObject<List<double>>(
        object: this.x, hydroState: hydroState, table: HydroTable());
    table['y'] = maybeBoxObject<List<double>>(
        object: this.y, hydroState: hydroState, table: HydroTable());
    table['w'] = maybeBoxObject<List<double>>(
        object: this.w, hydroState: hydroState, table: HydroTable());
    table['_dart_solve'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PolynomialFit?>(
            object: super.solve(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  LeastSquaresSolver unwrap() => this;
  LeastSquaresSolver get vmObject => this;
  @override
  PolynomialFit? solve(degree) {
    Closure closure = table["solve"];
    return maybeUnBoxAndBuildArgument<PolynomialFit?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadLeastSquaresSolver(
    {required HydroState hydroState, required HydroTable table}) {
  table['leastSquaresSolver'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedLeastSquaresSolver(
          maybeUnBoxAndBuildArgument<List<double>, double>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<double>, double>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<double>, double>(
              luaCallerArguments[3],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<LeastSquaresSolver>(boxer: (
      {required LeastSquaresSolver vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedLeastSquaresSolver(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
