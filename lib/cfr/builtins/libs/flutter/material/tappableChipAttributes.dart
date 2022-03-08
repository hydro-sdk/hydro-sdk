import 'dart:core' as _fac9;

import 'package:flutter/src/material/chip.dart' as _8acc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTappableChipAttributes
    extends _36c2.VMManagedBox<_8acc.TappableChipAttributes> {
  VMManagedTappableChipAttributes(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getOnPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.onPressed;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getPressElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.pressElevation;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.tooltip;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8acc.TappableChipAttributes vmObject;
}

void loadTappableChipAttributes(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_8acc.TappableChipAttributes>(boxer: (
      {required _8acc.TappableChipAttributes vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTappableChipAttributes(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
