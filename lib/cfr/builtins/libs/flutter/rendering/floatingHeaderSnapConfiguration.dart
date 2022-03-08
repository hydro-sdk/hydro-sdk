import 'dart:core' as _fac9;

import 'package:flutter/src/animation/curves.dart' as _8c47;
import 'package:flutter/src/rendering/sliver_persistent_header.dart' as _2805;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFloatingHeaderSnapConfiguration
    extends _36c2.VMManagedBox<_2805.FloatingHeaderSnapConfiguration> {
  VMManagedFloatingHeaderSnapConfiguration(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['curve'] = _36c2.maybeBoxObject<_8c47.Curve>(
        object: vmObject.curve,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['duration'] = _36c2.maybeBoxObject<_fac9.Duration>(
        object: vmObject.duration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _2805.FloatingHeaderSnapConfiguration vmObject;
}

class RTManagedFloatingHeaderSnapConfiguration
    extends _2805.FloatingHeaderSnapConfiguration
    implements _36c2.Box<_2805.FloatingHeaderSnapConfiguration> {
  RTManagedFloatingHeaderSnapConfiguration(
      {required _8c47.Curve curve,
      required _fac9.Duration duration,
      required this.table,
      required this.hydroState})
      : super(curve: curve, duration: duration) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['curve'] = _36c2.maybeBoxObject(
        object: this.curve, hydroState: hydroState, table: _36c2.HydroTable());
    table['duration'] = _36c2.maybeBoxObject(
        object: this.duration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _2805.FloatingHeaderSnapConfiguration unwrap() => this;
  _2805.FloatingHeaderSnapConfiguration get vmObject => this;
}

void loadFloatingHeaderSnapConfiguration(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['floatingHeaderSnapConfiguration'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedFloatingHeaderSnapConfiguration(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['curve']
                  : null,
              parentState: hydroState),
          duration:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['duration']
                      : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_2805.FloatingHeaderSnapConfiguration>(boxer: (
      {required _2805.FloatingHeaderSnapConfiguration vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFloatingHeaderSnapConfiguration(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
