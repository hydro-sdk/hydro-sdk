import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/chip.dart' as _8acc;
import 'package:flutter/src/material/theme_data.dart' as _9716;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedChipAttributes extends _36c2.VMManagedBox<_8acc.ChipAttributes> {
  VMManagedChipAttributes(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.label,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getAvatar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.avatar;
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
    table['getLabelStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.labelStyle;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_74d0.TextStyle?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getSide'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.side;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_6be9.BorderSide?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getShape'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.shape;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_6be9.OutlinedBorder?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getClipBehavior'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _a643.Clip.values.indexWhere((x) {
          return x == vmObject.clipBehavior;
        }),
      ];
    });
    table['getFocusNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.focusNode;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_b485.FocusNode?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getAutofocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.autofocus,
      ];
    });
    table['getBackgroundColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.backgroundColor;
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
    table['getPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.padding;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getVisualDensity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.visualDensity;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_9716.VisualDensity?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getLabelPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.labelPadding;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getMaterialTapTargetSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.materialTapTargetSize;
      if (returnValue != null) {
        return [
          _9716.MaterialTapTargetSize.values.indexWhere((x) {
            return x == returnValue;
          }),
        ];
      }
      return [];
    });
    table['getElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.elevation;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getShadowColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.shadowColor;
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

  final _8acc.ChipAttributes vmObject;
}

void loadChipAttributes(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_8acc.ChipAttributes>(boxer: (
      {required _8acc.ChipAttributes vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedChipAttributes(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
