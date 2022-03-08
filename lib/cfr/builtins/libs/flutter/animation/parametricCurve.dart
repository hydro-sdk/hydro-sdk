import 'dart:core' as _fac9;

import 'package:flutter/src/animation/curves.dart' as _8c47;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedParametricCurve
    extends _36c2.VMManagedBox<_8c47.ParametricCurve<_fac9.dynamic>> {
  VMManagedParametricCurve(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['transform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.transform(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8c47.ParametricCurve<_fac9.dynamic> vmObject;
}

class RTManagedParametricCurve extends _8c47.ParametricCurve
    implements _36c2.Box<_8c47.ParametricCurve> {
  RTManagedParametricCurve({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_transform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        super.transform(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
    });
    table['_dart_transformInternal'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        super.transformInternal(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _8c47.ParametricCurve unwrap() => this;
  _8c47.ParametricCurve get vmObject => this;
  @_fac9.override
  _fac9.dynamic transform(t) {
    _36c2.Closure closure = table["transform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.dynamic transformInternal(t) {
    _36c2.Closure closure = table["transformInternal"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadParametricCurve(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['parametricCurve'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedParametricCurve(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_8c47.ParametricCurve>(boxer: (
      {required _8c47.ParametricCurve vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedParametricCurve(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
