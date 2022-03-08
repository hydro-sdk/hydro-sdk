import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/routes.dart' as _8c2a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLocalHistoryEntry
    extends _36c2.VMManagedBox<_8c2a.LocalHistoryEntry> {
  VMManagedLocalHistoryEntry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['remove'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.remove();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8c2a.LocalHistoryEntry vmObject;
}

class RTManagedLocalHistoryEntry extends _8c2a.LocalHistoryEntry
    implements _36c2.Box<_8c2a.LocalHistoryEntry> {
  RTManagedLocalHistoryEntry(
      {void Function()? onRemove,
      required this.table,
      required this.hydroState})
      : super(onRemove: onRemove) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_remove'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.remove();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _8c2a.LocalHistoryEntry unwrap() => this;
  _8c2a.LocalHistoryEntry get vmObject => this;
  @_fac9.override
  void remove() {
    _36c2.Closure closure = table["remove"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadLocalHistoryEntry(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['localHistoryEntry'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonRemove = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onRemove']
        : null;
    return [
      RTManagedLocalHistoryEntry(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          onRemove: unpackedonRemove != null
              ? () => unpackedonRemove.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null)
    ];
  });
  _36c2.registerBoxer<_8c2a.LocalHistoryEntry>(boxer: (
      {required _8c2a.LocalHistoryEntry vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedLocalHistoryEntry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
