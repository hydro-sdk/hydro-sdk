import 'dart:core' as _fac9;

import 'package:flutter/src/material/animated_icons.dart' as _953c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAnimatedIconData
    extends _36c2.VMManagedBox<_953c.AnimatedIconData> {
  VMManagedAnimatedIconData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getMatchTextDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.matchTextDirection,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _953c.AnimatedIconData vmObject;
}

void loadAnimatedIconData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_953c.AnimatedIconData>(boxer: (
      {required _953c.AnimatedIconData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAnimatedIconData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
