import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/widgets/page_storage.dart' as _c05c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPageStorageKey
    extends _36c2.VMManagedBox<_c05c.PageStorageKey<_fac9.dynamic>> {
  VMManagedPageStorageKey(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['value'] = vmObject.value;
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

  final _c05c.PageStorageKey<_fac9.dynamic> vmObject;
}

class RTManagedPageStorageKey extends _c05c.PageStorageKey
    implements _36c2.Box<_c05c.PageStorageKey> {
  RTManagedPageStorageKey(_fac9.dynamic value$,
      {required this.table, required this.hydroState})
      : super(
          value$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
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

  _c05c.PageStorageKey unwrap() => this;
  _c05c.PageStorageKey get vmObject => this;
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

void loadPageStorageKey(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['pageStorageKey'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedPageStorageKey(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_c05c.PageStorageKey>(boxer: (
      {required _c05c.PageStorageKey vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPageStorageKey(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
