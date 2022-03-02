import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/scroll_activity.dart' as _ca8b;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScrollHoldController
    extends _36c2.VMManagedBox<_ca8b.ScrollHoldController> {
  VMManagedScrollHoldController(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['cancel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.cancel();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _ca8b.ScrollHoldController vmObject;
}

void loadScrollHoldController(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_ca8b.ScrollHoldController>(boxer: (
      {required _ca8b.ScrollHoldController vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedScrollHoldController(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
