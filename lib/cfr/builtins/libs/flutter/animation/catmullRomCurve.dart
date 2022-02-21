import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/curves.dart' as _8c47;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCatmullRomCurve
    extends _36c2.VMManagedBox<_8c47.CatmullRomCurve> {
  VMManagedCatmullRomCurve(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['controlPoints'] = _36c2.maybeBoxObject<_fac9.List<_a643.Offset>>(
        object: vmObject.controlPoints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tension'] = vmObject.tension;
    table['transformInternal'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.transformInternal(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['transform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.transform(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getFlipped'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8c47.Curve>(
            object: vmObject.flipped,
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

  final _8c47.CatmullRomCurve vmObject;
}

class RTManagedCatmullRomCurve extends _8c47.CatmullRomCurve
    implements _36c2.Box<_8c47.CatmullRomCurve> {
  RTManagedCatmullRomCurve(_fac9.List<_a643.Offset> controlPoints$,
      {required _fac9.double tension,
      required this.table,
      required this.hydroState})
      : super(controlPoints$, tension: tension) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['controlPoints'] = _36c2.maybeBoxObject(
        object: this.controlPoints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tension'] = _36c2.maybeBoxObject(
        object: this.tension,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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
    table['_dart_getFlipped'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.flipped];
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

  _8c47.CatmullRomCurve unwrap() => this;
  _8c47.CatmullRomCurve get vmObject => this;
  @_fac9.override
  _fac9.double transformInternal(t) {
    _36c2.Closure closure = table["transformInternal"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double transform(t) {
    _36c2.Closure closure = table["transform"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _8c47.Curve get flipped {
    _36c2.Closure closure = table["getFlipped"];
    return _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
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

void loadCatmullRomCurve(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['catmullRomCurve'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCatmullRomCurve(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.Offset>,
              _a643.Offset>(luaCallerArguments[1], parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState,
          tension: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['tension']
              : null?.toDouble())
    ];
  });
  table['catmullRomCurveValidateControlPoints'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _8c47.CatmullRomCurve.validateControlPoints(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.Offset>?,
              _a643.Offset>(luaCallerArguments[1], parentState: hydroState),
          reasons: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>?,
                  _fac9.String>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['reasons']
                  : null,
              parentState: hydroState),
          tension: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['tension']
              : null?.toDouble()),
    ];
  });
  _36c2.registerBoxer<_8c47.CatmullRomCurve>(boxer: (
      {required _8c47.CatmullRomCurve vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCatmullRomCurve(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
