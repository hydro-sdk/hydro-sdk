import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/force_press.dart' as _6dde;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedForcePressDetails
    extends _36c2.VMManagedBox<_6dde.ForcePressDetails> {
  VMManagedForcePressDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['globalPosition'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.globalPosition,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['localPosition'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.localPosition,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pressure'] = vmObject.pressure;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _6dde.ForcePressDetails vmObject;
}

class RTManagedForcePressDetails extends _6dde.ForcePressDetails
    implements _36c2.Box<_6dde.ForcePressDetails> {
  RTManagedForcePressDetails(
      {_a643.Offset? localPosition,
      required _a643.Offset globalPosition,
      required _fac9.double pressure,
      required this.table,
      required this.hydroState})
      : super(
            localPosition: localPosition,
            globalPosition: globalPosition,
            pressure: pressure) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['globalPosition'] = _36c2.maybeBoxObject(
        object: this.globalPosition,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['localPosition'] = _36c2.maybeBoxObject(
        object: this.localPosition,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pressure'] = _36c2.maybeBoxObject(
        object: this.pressure,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _6dde.ForcePressDetails unwrap() => this;
  _6dde.ForcePressDetails get vmObject => this;
}

void loadForcePressDetails(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['forcePressDetails'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedForcePressDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          localPosition:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['localPosition']
                      : null,
                  parentState: hydroState),
          globalPosition:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['globalPosition']
                      : null,
                  parentState: hydroState),
          pressure: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['pressure']
              : null?.toDouble())
    ];
  });
  _36c2.registerBoxer<_6dde.ForcePressDetails>(boxer: (
      {required _6dde.ForcePressDetails vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedForcePressDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
