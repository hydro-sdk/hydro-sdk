import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/chip.dart' as _8acc;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDeletableChipAttributes
    extends _36c2.VMManagedBox<_8acc.DeletableChipAttributes> {
  VMManagedDeletableChipAttributes(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getDeleteIcon'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.deleteIcon;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e2dc.Widget?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getOnDeleted'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.onDeleted;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getDeleteIconColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.deleteIconColor;
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
    table['getUseDeleteButtonTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.useDeleteButtonTooltip,
      ];
    });
    table['getDeleteButtonTooltipMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.deleteButtonTooltipMessage;
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

  final _8acc.DeletableChipAttributes vmObject;
}

void loadDeletableChipAttributes(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_8acc.DeletableChipAttributes>(boxer: (
      {required _8acc.DeletableChipAttributes vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDeletableChipAttributes(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
