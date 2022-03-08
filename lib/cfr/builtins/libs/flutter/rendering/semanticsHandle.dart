import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSemanticsHandle
    extends _36c2.VMManagedBox<_9742.SemanticsHandle> {
  VMManagedSemanticsHandle(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _9742.SemanticsHandle vmObject;
}

void loadSemanticsHandle(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_9742.SemanticsHandle>(boxer: (
      {required _9742.SemanticsHandle vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSemanticsHandle(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
