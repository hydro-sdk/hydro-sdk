import 'dart:core' as _fac9;

import 'package:flutter/src/services/message_codec.dart' as _7fbb;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMethodCall extends _36c2.VMManagedBox<_7fbb.MethodCall> {
  VMManagedMethodCall(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['method'] = vmObject.method;
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _7fbb.MethodCall vmObject;
}

class RTManagedMethodCall extends _7fbb.MethodCall
    implements _36c2.Box<_7fbb.MethodCall> {
  RTManagedMethodCall(_fac9.String method$, _fac9.dynamic arguments,
      {required this.table, required this.hydroState})
      : super(
          method$,
          arguments,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['method'] = _36c2.maybeBoxObject(
        object: this.method, hydroState: hydroState, table: _36c2.HydroTable());
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

  _7fbb.MethodCall unwrap() => this;
  _7fbb.MethodCall get vmObject => this;
  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadMethodCall(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['methodCall'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedMethodCall(luaCallerArguments[1], luaCallerArguments[2],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_7fbb.MethodCall>(boxer: (
      {required _7fbb.MethodCall vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMethodCall(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
