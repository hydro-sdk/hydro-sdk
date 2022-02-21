import 'dart:core' as _fac9;

import 'package:flutter/src/animation/curves.dart' as _8c47;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCubic extends _36c2.VMManagedBox<_8c47.Cubic> {
  VMManagedCubic(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['a'] = vmObject.a;
    table['b'] = vmObject.b;
    table['c'] = vmObject.c;
    table['d'] = vmObject.d;
    table['transformInternal'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.transformInternal(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
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
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8c47.Cubic vmObject;
}

class RTManagedCubic extends _8c47.Cubic implements _36c2.Box<_8c47.Cubic> {
  RTManagedCubic(
      _fac9.double a$, _fac9.double b$, _fac9.double c$, _fac9.double d$,
      {required this.table, required this.hydroState})
      : super(
          a$,
          b$,
          c$,
          d$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['a'] = _36c2.maybeBoxObject(
        object: this.a, hydroState: hydroState, table: _36c2.HydroTable());
    table['b'] = _36c2.maybeBoxObject(
        object: this.b, hydroState: hydroState, table: _36c2.HydroTable());
    table['c'] = _36c2.maybeBoxObject(
        object: this.c, hydroState: hydroState, table: _36c2.HydroTable());
    table['d'] = _36c2.maybeBoxObject(
        object: this.d, hydroState: hydroState, table: _36c2.HydroTable());
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
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
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
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _8c47.Cubic unwrap() => this;
  _8c47.Cubic get vmObject => this;
  @_fac9.override
  _fac9.double transformInternal(t) {
    _36c2.Closure closure = table["transformInternal"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
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
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadCubic(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['cubic'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCubic(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble(),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_8c47.Cubic>(boxer: (
      {required _8c47.Cubic vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCubic(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
