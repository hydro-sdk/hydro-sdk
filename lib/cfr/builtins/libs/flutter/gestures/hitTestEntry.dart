import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/hit_test.dart' as _baac;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedHitTestEntry extends _36c2.VMManagedBox<_baac.HitTestEntry> {
  VMManagedHitTestEntry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['target'] = _36c2.maybeBoxObject<_baac.HitTestTarget>(
        object: vmObject.target,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.transform;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_db98.Matrix4?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _baac.HitTestEntry vmObject;
}

class RTManagedHitTestEntry extends _baac.HitTestEntry
    implements _36c2.Box<_baac.HitTestEntry> {
  RTManagedHitTestEntry(_baac.HitTestTarget target$,
      {required this.table, required this.hydroState})
      : super(
          target$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['target'] = _36c2.maybeBoxObject(
        object: this.target, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.transform];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _baac.HitTestEntry unwrap() => this;
  _baac.HitTestEntry get vmObject => this;
  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _db98.Matrix4? get transform {
    _36c2.Closure closure = table["getTransform"];
    return _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadHitTestEntry(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['hitTestEntry'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedHitTestEntry(
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestTarget, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_baac.HitTestEntry>(boxer: (
      {required _baac.HitTestEntry vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedHitTestEntry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
