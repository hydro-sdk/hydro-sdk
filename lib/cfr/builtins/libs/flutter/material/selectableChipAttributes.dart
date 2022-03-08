import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/chip.dart' as _8acc;
import 'package:flutter/src/painting/borders.dart' as _6be9;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSelectableChipAttributes
    extends _36c2.VMManagedBox<_8acc.SelectableChipAttributes> {
  VMManagedSelectableChipAttributes(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getSelected'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.selected,
      ];
    });
    table['getOnSelected'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.onSelected;
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
    table['getSelectedColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.selectedColor;
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
    table['getSelectedShadowColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.selectedShadowColor;
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
    table['getAvatarBorder'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_6be9.ShapeBorder>(
            object: vmObject.avatarBorder,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8acc.SelectableChipAttributes vmObject;
}

void loadSelectableChipAttributes(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_8acc.SelectableChipAttributes>(boxer: (
      {required _8acc.SelectableChipAttributes vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSelectableChipAttributes(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
