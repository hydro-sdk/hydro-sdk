import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/basic_types.dart' as _288a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFactory
    extends _36c2.VMManagedBox<_288a.Factory<_fac9.dynamic>> {
  VMManagedFactory(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Type>(
            object: vmObject.type,
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _288a.Factory<_fac9.dynamic> vmObject;
}

class RTManagedFactory extends _288a.Factory
    implements _36c2.Box<_288a.Factory> {
  RTManagedFactory(constructor, {required this.table, required this.hydroState})
      : super(
          constructor,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.type];
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

  _288a.Factory unwrap() => this;
  _288a.Factory get vmObject => this;
  @_fac9.override
  _fac9.Type get type {
    _36c2.Closure closure = table["getType"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Type, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadFactory(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['factory'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure unpackedconstructor = luaCallerArguments[1];
    return [
      RTManagedFactory(
          () => unpackedconstructor.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_288a.Factory>(boxer: (
      {required _288a.Factory vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFactory(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
