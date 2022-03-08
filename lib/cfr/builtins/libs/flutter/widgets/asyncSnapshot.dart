import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/async.dart' as _13d0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAsyncSnapshot
    extends _36c2.VMManagedBox<_13d0.AsyncSnapshot<_fac9.dynamic>> {
  VMManagedAsyncSnapshot(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['connectionState'] = _13d0.ConnectionState.values.indexWhere((x) {
      return x == vmObject.connectionState;
    });
    table['error'] = _36c2.maybeBoxObject<_fac9.Object?>(
        object: vmObject.error,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['stackTrace'] = _36c2.maybeBoxObject<_fac9.StackTrace?>(
        object: vmObject.stackTrace,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getRequireData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.requireData,
      ];
    });
    table['inState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_13d0.AsyncSnapshot>(
            object: vmObject.inState(_36c2.maybeUnBoxEnum(
                values: _13d0.ConnectionState.values,
                boxedEnum: luaCallerArguments[1])),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHasData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasData,
      ];
    });
    table['getHasError'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasError,
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

  final _13d0.AsyncSnapshot<_fac9.dynamic> vmObject;
}

void loadAsyncSnapshot(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_13d0.AsyncSnapshot>(boxer: (
      {required _13d0.AsyncSnapshot vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAsyncSnapshot(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
