import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/resampler.dart' as _6a3f;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPointerEventResampler
    extends _36c2.VMManagedBox<_6a3f.PointerEventResampler> {
  VMManagedPointerEventResampler(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['addEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.addEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['sample'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[3];
      vmObject.sample(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          (event) => unpackedcallback.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ));
      return [];
    });
    table['stop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      vmObject.stop((event) => unpackedcallback.dispatch(
            [luaCallerArguments[0], event],
            parentState: hydroState,
          ));
      return [];
    });
    table['getHasPendingEvents'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasPendingEvents,
      ];
    });
    table['getIsTracked'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isTracked,
      ];
    });
    table['getIsDown'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isDown,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _6a3f.PointerEventResampler vmObject;
}

class RTManagedPointerEventResampler extends _6a3f.PointerEventResampler
    implements _36c2.Box<_6a3f.PointerEventResampler> {
  RTManagedPointerEventResampler(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_addEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.addEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_sample'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[3];
      super.sample(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          (event) => unpackedcallback.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_stop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      super.stop((event) => unpackedcallback.dispatch(
            [luaCallerArguments[0], event],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_getHasPendingEvents'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasPendingEvents];
    });
    table['_dart_getIsTracked'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isTracked];
    });
    table['_dart_getIsDown'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isDown];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _6a3f.PointerEventResampler unwrap() => this;
  _6a3f.PointerEventResampler get vmObject => this;
  @_fac9.override
  void addEvent(event) {
    _36c2.Closure closure = table["addEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void sample(sampleTime, nextSampleTime, callback) {
    _36c2.Closure closure = table["sample"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void stop(callback) {
    _36c2.Closure closure = table["stop"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get hasPendingEvents {
    _36c2.Closure closure = table["getHasPendingEvents"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isTracked {
    _36c2.Closure closure = table["getIsTracked"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isDown {
    _36c2.Closure closure = table["getIsDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPointerEventResampler(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['pointerEventResampler'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedPointerEventResampler(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_6a3f.PointerEventResampler>(boxer: (
      {required _6a3f.PointerEventResampler vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPointerEventResampler(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
