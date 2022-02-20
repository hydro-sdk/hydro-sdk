import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/box_fit.dart' as _fb77;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFittedSizes extends _36c2.VMManagedBox<_fb77.FittedSizes> {
  VMManagedFittedSizes(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['source'] = _36c2.maybeBoxObject<_a643.Size>(
        object: vmObject.source,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['destination'] = _36c2.maybeBoxObject<_a643.Size>(
        object: vmObject.destination,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _fb77.FittedSizes vmObject;
}

class RTManagedFittedSizes extends _fb77.FittedSizes
    implements _36c2.Box<_fb77.FittedSizes> {
  RTManagedFittedSizes(_a643.Size source$, _a643.Size destination$,
      {required this.table, required this.hydroState})
      : super(
          source$,
          destination$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['source'] = _36c2.maybeBoxObject(
        object: this.source, hydroState: hydroState, table: _36c2.HydroTable());
    table['destination'] = _36c2.maybeBoxObject(
        object: this.destination,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _fb77.FittedSizes unwrap() => this;
  _fb77.FittedSizes get vmObject => this;
}

void loadFittedSizes(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['fittedSizes'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedFittedSizes(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_fb77.FittedSizes>(boxer: (
      {required _fb77.FittedSizes vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFittedSizes(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
