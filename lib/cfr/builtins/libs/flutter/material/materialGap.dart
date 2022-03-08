import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/mergeable_material.dart' as _2117;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMaterialGap extends _36c2.VMManagedBox<_2117.MaterialGap> {
  VMManagedMaterialGap(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['size'] = vmObject.size;
    table['key'] = _36c2.maybeBoxObject<_ab4a.LocalKey>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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

  final _2117.MaterialGap vmObject;
}

class RTManagedMaterialGap extends _2117.MaterialGap
    implements _36c2.Box<_2117.MaterialGap> {
  RTManagedMaterialGap(
      {required _fac9.double size,
      required _ab4a.LocalKey key,
      required this.table,
      required this.hydroState})
      : super(size: size, key: key) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['size'] = _36c2.maybeBoxObject(
        object: this.size, hydroState: hydroState, table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
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

  _2117.MaterialGap unwrap() => this;
  _2117.MaterialGap get vmObject => this;
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

void loadMaterialGap(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['materialGap'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedMaterialGap(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          size: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['size']
              : null?.toDouble(),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.LocalKey, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['key']
                  : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_2117.MaterialGap>(boxer: (
      {required _2117.MaterialGap vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMaterialGap(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
