import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/curves.dart' as _8c47;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCatmullRomSpline
    extends _36c2.VMManagedBox<_8c47.CatmullRomSpline> {
  VMManagedCatmullRomSpline(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['transformInternal'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Offset>(
            object:
                vmObject.transformInternal(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['generateSamples'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.generateSamples(
                end: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['end']
                    : null?.toDouble(),
                start: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['start']
                    : null?.toDouble(),
                tolerance: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['tolerance']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['findInverse'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.findInverse(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['transform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Offset>(
            object: vmObject.transform(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8c47.CatmullRomSpline vmObject;
}

class RTManagedCatmullRomSpline extends _8c47.CatmullRomSpline
    implements _36c2.Box<_8c47.CatmullRomSpline> {
  RTManagedCatmullRomSpline(_fac9.List<_a643.Offset> controlPoints,
      {_a643.Offset? endHandle,
      _a643.Offset? startHandle,
      required _fac9.double tension,
      required this.table,
      required this.hydroState})
      : super(controlPoints,
            endHandle: endHandle, startHandle: startHandle, tension: tension) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getSamplingSeed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.samplingSeed];
    });
    table['_dart_transformInternal'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.transformInternal(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_generateSamples'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.generateSamples(
                end: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['end']
                        : null,
                    parentState: hydroState),
                start: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['start'] : null,
                        parentState: hydroState),
                tolerance:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tolerance'] : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_findInverse'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.findInverse(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_transform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.transform(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _8c47.CatmullRomSpline unwrap() => this;
  _8c47.CatmullRomSpline get vmObject => this;
  @_fac9.override
  _fac9.int get samplingSeed {
    _36c2.Closure closure = table["getSamplingSeed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Offset transformInternal(t) {
    _36c2.Closure closure = table["transformInternal"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Iterable<_8c47.Curve2DSample> generateSamples(
      {_fac9.double end = 1.0,
      _fac9.double start = 0.0,
      _fac9.double tolerance = 1e-10}) {
    _36c2.Closure closure = table["generateSamples"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_8c47.Curve2DSample>,
            _8c47.Curve2DSample>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.double findInverse(x) {
    _36c2.Closure closure = table["findInverse"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _a643.Offset transform(t) {
    _36c2.Closure closure = table["transform"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadCatmullRomSpline(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['catmullRomSpline'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCatmullRomSpline(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.Offset>, _a643.Offset>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState,
          endHandle:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['endHandle']
                      : null,
                  parentState: hydroState),
          startHandle:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['startHandle']
                      : null,
                  parentState: hydroState),
          tension: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['tension'] : null?.toDouble())
    ];
  });
  _36c2.registerBoxer<_8c47.CatmullRomSpline>(boxer: (
      {required _8c47.CatmullRomSpline vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCatmullRomSpline(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
