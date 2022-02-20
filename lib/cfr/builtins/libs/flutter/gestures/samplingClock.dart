import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/binding.dart' as _e62e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSamplingClock extends _36c2.VMManagedBox<_e62e.SamplingClock> {
  VMManagedSamplingClock(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['now'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.DateTime>(
            object: vmObject.now(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['stopwatch'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Stopwatch>(
            object: vmObject.stopwatch(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _e62e.SamplingClock vmObject;
}

class RTManagedSamplingClock extends _e62e.SamplingClock
    implements _36c2.Box<_e62e.SamplingClock> {
  RTManagedSamplingClock({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_now'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.now(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_stopwatch'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.stopwatch(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _e62e.SamplingClock unwrap() => this;
  _e62e.SamplingClock get vmObject => this;
  @_fac9.override
  _fac9.DateTime now() {
    _36c2.Closure closure = table["now"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Stopwatch stopwatch() {
    _36c2.Closure closure = table["stopwatch"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Stopwatch, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadSamplingClock(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['samplingClock'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSamplingClock(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_e62e.SamplingClock>(boxer: (
      {required _e62e.SamplingClock vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSamplingClock(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
