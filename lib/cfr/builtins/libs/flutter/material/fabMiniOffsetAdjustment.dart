import 'dart:core' as _fac9;

import 'package:flutter/src/material/floating_action_button_location.dart'
    as _b2ee;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFabMiniOffsetAdjustment
    extends _36c2.VMManagedBox<_b2ee.FabMiniOffsetAdjustment> {
  VMManagedFabMiniOffsetAdjustment(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['isMini'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isMini(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _b2ee.FabMiniOffsetAdjustment vmObject;
}

void loadFabMiniOffsetAdjustment(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_b2ee.FabMiniOffsetAdjustment>(boxer: (
      {required _b2ee.FabMiniOffsetAdjustment vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFabMiniOffsetAdjustment(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
