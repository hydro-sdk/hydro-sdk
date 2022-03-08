import 'dart:core' as _fac9;

import 'package:flutter/src/material/material_state.dart' as _da12;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMaterialStateProperty
    extends _36c2.VMManagedBox<_da12.MaterialStateProperty<_fac9.dynamic>> {
  VMManagedMaterialStateProperty(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.resolve(_36c2.maybeUnBoxAndBuildArgument<
                _fac9.Set<_da12.MaterialState>,
                _da12.MaterialState>(luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _da12.MaterialStateProperty<_fac9.dynamic> vmObject;
}

class RTManagedMaterialStateProperty extends _da12.MaterialStateProperty
    implements _36c2.Box<_da12.MaterialStateProperty> {
  RTManagedMaterialStateProperty(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        resolve(_36c2.maybeUnBoxAndBuildArgument<_fac9.Set<_da12.MaterialState>,
                _da12.MaterialState>(luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _da12.MaterialStateProperty unwrap() => this;
  _da12.MaterialStateProperty get vmObject => this;
  @_fac9.override
  _fac9.dynamic resolve(states) {
    _36c2.Closure closure = table["resolve"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadMaterialStateProperty(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['materialStateProperty'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedMaterialStateProperty(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['materialStatePropertyResolveAs'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _da12.MaterialStateProperty.resolveAs(
          luaCallerArguments[1],
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Set<_da12.MaterialState>,
                  _da12.MaterialState>(luaCallerArguments[2],
              parentState: hydroState)),
    ];
  });
  table['materialStatePropertyResolveWith'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure unpackedcallback = luaCallerArguments[1];
    return [
      _36c2.maybeBoxObject<_da12.MaterialStateProperty>(
          object: _da12.MaterialStateProperty.resolveWith(
              (states) => unpackedcallback.dispatch(
                    [luaCallerArguments[0], states],
                    parentState: hydroState,
                  )[0]),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['materialStatePropertyAll'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_da12.MaterialStateProperty>(
          object: _da12.MaterialStateProperty.all(luaCallerArguments[1]),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_da12.MaterialStateProperty>(boxer: (
      {required _da12.MaterialStateProperty vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMaterialStateProperty(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
