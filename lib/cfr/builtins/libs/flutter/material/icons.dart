import 'dart:core' as _fac9;

import 'package:flutter/src/material/icons.dart' as _6047;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedIcons extends _36c2.VMManagedBox<_6047.Icons> {
  VMManagedIcons(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _6047.Icons vmObject;
}

void loadIcons(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['iconsAdaptive'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_6047.PlatformAdaptiveIcons>(
          object: _6047.Icons.adaptive,
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_6047.Icons>(boxer: (
      {required _6047.Icons vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedIcons(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
