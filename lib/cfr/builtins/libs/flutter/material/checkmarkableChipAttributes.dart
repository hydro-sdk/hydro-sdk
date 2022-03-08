import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/chip.dart' as _8acc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCheckmarkableChipAttributes
    extends _36c2.VMManagedBox<_8acc.CheckmarkableChipAttributes> {
  VMManagedCheckmarkableChipAttributes(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getShowCheckmark'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.showCheckmark;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getCheckmarkColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.checkmarkColor;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Color?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8acc.CheckmarkableChipAttributes vmObject;
}

void loadCheckmarkableChipAttributes(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_8acc.CheckmarkableChipAttributes>(boxer: (
      {required _8acc.CheckmarkableChipAttributes vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCheckmarkableChipAttributes(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
