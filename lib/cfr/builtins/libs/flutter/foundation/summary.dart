import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/annotations.dart' as _428a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSummary extends _36c2.VMManagedBox<_428a.Summary> {
  VMManagedSummary(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['text'] = vmObject.text;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _428a.Summary vmObject;
}

class RTManagedSummary extends _428a.Summary
    implements _36c2.Box<_428a.Summary> {
  RTManagedSummary(_fac9.String text$,
      {required this.table, required this.hydroState})
      : super(
          text$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['text'] = _36c2.maybeBoxObject(
        object: this.text, hydroState: hydroState, table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _428a.Summary unwrap() => this;
  _428a.Summary get vmObject => this;
}

void loadSummary(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['summary'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSummary(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_428a.Summary>(boxer: (
      {required _428a.Summary vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSummary(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
