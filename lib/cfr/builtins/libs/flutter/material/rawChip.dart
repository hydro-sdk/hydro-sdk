import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/chip.dart' as _8acc;
import 'package:flutter/src/material/theme_data.dart' as _9716;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRawChip extends _36c2.VMManagedBox<_8acc.RawChip> {
  VMManagedRawChip(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['avatar'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.avatar,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['label'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.label,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.labelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.labelPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['deleteIcon'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.deleteIcon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['deleteIconColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.deleteIconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['useDeleteButtonTooltip'] = vmObject.useDeleteButtonTooltip;
    table['deleteButtonTooltipMessage'] = vmObject.deleteButtonTooltipMessage;
    table['pressElevation'] = vmObject.pressElevation;
    table['selected'] = vmObject.selected;
    table['isEnabled'] = vmObject.isEnabled;
    table['disabledColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.disabledColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.selectedColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tooltip'] = vmObject.tooltip;
    table['side'] = _36c2.maybeBoxObject<_6be9.BorderSide?>(
        object: vmObject.side,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject<_6be9.OutlinedBorder?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == vmObject.clipBehavior;
    });
    table['focusNode'] = _36c2.maybeBoxObject<_b485.FocusNode?>(
        object: vmObject.focusNode,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['autofocus'] = vmObject.autofocus;
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['padding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['visualDensity'] = _36c2.maybeBoxObject<_9716.VisualDensity?>(
        object: vmObject.visualDensity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['materialTapTargetSize'] =
        _9716.MaterialTapTargetSize.values.indexWhere((x) {
      return x == vmObject.materialTapTargetSize;
    });
    table['elevation'] = vmObject.elevation;
    table['shadowColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.shadowColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedShadowColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.selectedShadowColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showCheckmark'] = vmObject.showCheckmark;
    table['checkmarkColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.checkmarkColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['avatarBorder'] = _36c2.maybeBoxObject<_6be9.ShapeBorder>(
        object: vmObject.avatarBorder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tapEnabled'] = vmObject.tapEnabled;
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getDeleteIcon'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.deleteIcon,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.State>(
            object: vmObject.createState(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.StatefulElement>(
            object: vmObject.createElement(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null),
      ];
    });
    table['toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
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
    table['getIsEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isEnabled,
      ];
    });
    table['getDisabledColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.disabledColor;
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8acc.RawChip vmObject;
}

class RTManagedRawChip extends _8acc.RawChip
    implements _36c2.Box<_8acc.RawChip> {
  RTManagedRawChip(
      {required _fac9.bool autofocus,
      _e2dc.Widget? avatar,
      required _6be9.ShapeBorder avatarBorder,
      _a643.Color? backgroundColor,
      _a643.Color? checkmarkColor,
      required _a643.Clip clipBehavior,
      _fac9.String? deleteButtonTooltipMessage,
      _e2dc.Widget? deleteIcon,
      _a643.Color? deleteIconColor,
      _a643.Color? disabledColor,
      _fac9.double? elevation,
      _b485.FocusNode? focusNode,
      required _fac9.bool isEnabled,
      _ab4a.Key? key,
      _96d1.EdgeInsetsGeometry? labelPadding,
      _74d0.TextStyle? labelStyle,
      _9716.MaterialTapTargetSize? materialTapTargetSize,
      void Function()? onDeleted,
      void Function()? onPressed,
      void Function(_fac9.bool value)? onSelected,
      _96d1.EdgeInsetsGeometry? padding,
      _fac9.double? pressElevation,
      required _fac9.bool selected,
      _a643.Color? selectedColor,
      _a643.Color? selectedShadowColor,
      _a643.Color? shadowColor,
      _6be9.OutlinedBorder? shape,
      _fac9.bool? showCheckmark,
      _6be9.BorderSide? side,
      required _fac9.bool tapEnabled,
      _fac9.String? tooltip,
      required _fac9.bool useDeleteButtonTooltip,
      _9716.VisualDensity? visualDensity,
      required _e2dc.Widget label,
      required this.table,
      required this.hydroState})
      : super(
            autofocus: autofocus,
            avatar: avatar,
            avatarBorder: avatarBorder,
            backgroundColor: backgroundColor,
            checkmarkColor: checkmarkColor,
            clipBehavior: clipBehavior,
            deleteButtonTooltipMessage: deleteButtonTooltipMessage,
            deleteIcon: deleteIcon,
            deleteIconColor: deleteIconColor,
            disabledColor: disabledColor,
            elevation: elevation,
            focusNode: focusNode,
            isEnabled: isEnabled,
            key: key,
            labelPadding: labelPadding,
            labelStyle: labelStyle,
            materialTapTargetSize: materialTapTargetSize,
            onDeleted: onDeleted,
            onPressed: onPressed,
            onSelected: onSelected,
            padding: padding,
            pressElevation: pressElevation,
            selected: selected,
            selectedColor: selectedColor,
            selectedShadowColor: selectedShadowColor,
            shadowColor: shadowColor,
            shape: shape,
            showCheckmark: showCheckmark,
            side: side,
            tapEnabled: tapEnabled,
            tooltip: tooltip,
            useDeleteButtonTooltip: useDeleteButtonTooltip,
            visualDensity: visualDensity,
            label: label) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['avatar'] = _36c2.maybeBoxObject(
        object: this.avatar, hydroState: hydroState, table: _36c2.HydroTable());
    table['label'] = _36c2.maybeBoxObject(
        object: this.label, hydroState: hydroState, table: _36c2.HydroTable());
    table['labelStyle'] = _36c2.maybeBoxObject(
        object: this.labelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelPadding'] = _36c2.maybeBoxObject(
        object: this.labelPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['deleteIcon'] = _36c2.maybeBoxObject(
        object: this.deleteIcon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['deleteIconColor'] = _36c2.maybeBoxObject(
        object: this.deleteIconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['useDeleteButtonTooltip'] = _36c2.maybeBoxObject(
        object: this.useDeleteButtonTooltip,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['deleteButtonTooltipMessage'] = _36c2.maybeBoxObject(
        object: this.deleteButtonTooltipMessage,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pressElevation'] = _36c2.maybeBoxObject(
        object: this.pressElevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selected'] = _36c2.maybeBoxObject(
        object: this.selected,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isEnabled'] = _36c2.maybeBoxObject(
        object: this.isEnabled,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledColor'] = _36c2.maybeBoxObject(
        object: this.disabledColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedColor'] = _36c2.maybeBoxObject(
        object: this.selectedColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tooltip'] = _36c2.maybeBoxObject(
        object: this.tooltip,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['side'] = _36c2.maybeBoxObject(
        object: this.side, hydroState: hydroState, table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == this.clipBehavior;
    });
    table['focusNode'] = _36c2.maybeBoxObject(
        object: this.focusNode,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['autofocus'] = _36c2.maybeBoxObject(
        object: this.autofocus,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['padding'] = _36c2.maybeBoxObject(
        object: this.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['visualDensity'] = _36c2.maybeBoxObject(
        object: this.visualDensity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['materialTapTargetSize'] =
        _9716.MaterialTapTargetSize.values.indexWhere((x) {
      return x == this.materialTapTargetSize;
    });
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shadowColor'] = _36c2.maybeBoxObject(
        object: this.shadowColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedShadowColor'] = _36c2.maybeBoxObject(
        object: this.selectedShadowColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showCheckmark'] = _36c2.maybeBoxObject(
        object: this.showCheckmark,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['checkmarkColor'] = _36c2.maybeBoxObject(
        object: this.checkmarkColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['avatarBorder'] = _36c2.maybeBoxObject(
        object: this.avatarBorder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tapEnabled'] = _36c2.maybeBoxObject(
        object: this.tapEnabled,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getDeleteIcon'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.deleteIcon];
    });
    table['_dart_createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createState(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createElement(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShort(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShallow(
                joiner: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['joiner']
                            : null,
                        parentState: hydroState),
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringDeep(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null),
                prefixLineOne:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixLineOne']
                            : null,
                        parentState: hydroState),
                prefixOtherLines:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixOtherLines']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toDiagnosticsNode(
                name: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['name']
                            : null,
                        parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugDescribeChildren(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [label];
    });
    table['_dart_getAvatar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [avatar];
    });
    table['_dart_getLabelStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [labelStyle];
    });
    table['_dart_getSide'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [side];
    });
    table['_dart_getShape'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [shape];
    });
    table['_dart_getClipBehavior'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [clipBehavior];
    });
    table['_dart_getFocusNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [focusNode];
    });
    table['_dart_getAutofocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [autofocus];
    });
    table['_dart_getBackgroundColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [backgroundColor];
    });
    table['_dart_getPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [padding];
    });
    table['_dart_getVisualDensity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [visualDensity];
    });
    table['_dart_getLabelPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [labelPadding];
    });
    table['_dart_getMaterialTapTargetSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [materialTapTargetSize];
    });
    table['_dart_getElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [elevation];
    });
    table['_dart_getShadowColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [shadowColor];
    });
    table['_dart_getDeleteIconColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [deleteIconColor];
    });
    table['_dart_getUseDeleteButtonTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [useDeleteButtonTooltip];
    });
    table['_dart_getDeleteButtonTooltipMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [deleteButtonTooltipMessage];
    });
    table['_dart_getSelected'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [selected];
    });
    table['_dart_getPressElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [pressElevation];
    });
    table['_dart_getSelectedColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [selectedColor];
    });
    table['_dart_getSelectedShadowColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [selectedShadowColor];
    });
    table['_dart_getTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [tooltip];
    });
    table['_dart_getAvatarBorder'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [avatarBorder];
    });
    table['_dart_getShowCheckmark'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [showCheckmark];
    });
    table['_dart_getCheckmarkColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [checkmarkColor];
    });
    table['_dart_getIsEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [isEnabled];
    });
    table['_dart_getDisabledColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [disabledColor];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _8acc.RawChip unwrap() => this;
  _8acc.RawChip get vmObject => this;
  @_fac9.override
  _e2dc.Widget get deleteIcon {
    _36c2.Closure closure = table["getDeleteIcon"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.State<_8acc.RawChip> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.State<_8acc.RawChip>, _8acc.RawChip>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _e2dc.StatefulElement createElement() {
    _36c2.Closure closure = table["createElement"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.StatefulElement, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShallow(
      {_fac9.String joiner = ', ',
      _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug}) {
    _36c2.Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringDeep(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug,
      _fac9.String prefixLineOne = '',
      _fac9.String? prefixOtherLines}) {
    _36c2.Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticsNode toDiagnosticsNode(
      {_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) {
    _36c2.Closure closure = table["toDiagnosticsNode"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() {
    _36c2.Closure closure = table["debugDescribeChildren"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
            _eaf3.DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.Widget get label {
    _36c2.Closure closure = table["getLabel"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.Widget? get avatar {
    _36c2.Closure closure = table["getAvatar"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _74d0.TextStyle? get labelStyle {
    _36c2.Closure closure = table["getLabelStyle"];
    return _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _6be9.BorderSide? get side {
    _36c2.Closure closure = table["getSide"];
    return _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _6be9.OutlinedBorder? get shape {
    _36c2.Closure closure = table["getShape"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _a643.Clip get clipBehavior {
    _36c2.Closure closure = table["getClipBehavior"];
    return _36c2.maybeUnBoxEnum(
        values: _a643.Clip.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _b485.FocusNode? get focusNode {
    _36c2.Closure closure = table["getFocusNode"];
    return _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get autofocus {
    _36c2.Closure closure = table["getAutofocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Color? get backgroundColor {
    _36c2.Closure closure = table["getBackgroundColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _96d1.EdgeInsetsGeometry? get padding {
    _36c2.Closure closure = table["getPadding"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _9716.VisualDensity? get visualDensity {
    _36c2.Closure closure = table["getVisualDensity"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_9716.VisualDensity?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _96d1.EdgeInsetsGeometry? get labelPadding {
    _36c2.Closure closure = table["getLabelPadding"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _9716.MaterialTapTargetSize? get materialTapTargetSize {
    _36c2.Closure closure = table["getMaterialTapTargetSize"];
    return _36c2.maybeUnBoxEnum(
        values: _9716.MaterialTapTargetSize.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.double? get elevation {
    _36c2.Closure closure = table["getElevation"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _a643.Color? get shadowColor {
    _36c2.Closure closure = table["getShadowColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color? get deleteIconColor {
    _36c2.Closure closure = table["getDeleteIconColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get useDeleteButtonTooltip {
    _36c2.Closure closure = table["getUseDeleteButtonTooltip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String? get deleteButtonTooltipMessage {
    _36c2.Closure closure = table["getDeleteButtonTooltipMessage"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get selected {
    _36c2.Closure closure = table["getSelected"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double? get pressElevation {
    _36c2.Closure closure = table["getPressElevation"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _a643.Color? get selectedColor {
    _36c2.Closure closure = table["getSelectedColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color? get selectedShadowColor {
    _36c2.Closure closure = table["getSelectedShadowColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String? get tooltip {
    _36c2.Closure closure = table["getTooltip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _6be9.ShapeBorder get avatarBorder {
    _36c2.Closure closure = table["getAvatarBorder"];
    return _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool? get showCheckmark {
    _36c2.Closure closure = table["getShowCheckmark"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Color? get checkmarkColor {
    _36c2.Closure closure = table["getCheckmarkColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get isEnabled {
    _36c2.Closure closure = table["getIsEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Color? get disabledColor {
    _36c2.Closure closure = table["getDisabledColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadRawChip(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['rawChip'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonDeleted = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onDeleted']
        : null;
    _36c2.Closure? unpackedonPressed = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onPressed']
        : null;
    _36c2.Closure? unpackedonSelected = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSelected']
        : null;

    return [
      RTManagedRawChip(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          autofocus: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['autofocus']
              : null,
          avatar: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['avatar'] : null,
              parentState: hydroState),
          avatarBorder: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['avatarBorder']
                  : null,
              parentState: hydroState),
          backgroundColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                  parentState: hydroState),
          checkmarkColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['checkmarkColor'] : null,
              parentState: hydroState),
          clipBehavior: _36c2.maybeUnBoxEnum(values: _a643.Clip.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['clipBehavior'] : null),
          deleteButtonTooltipMessage: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['deleteButtonTooltipMessage'] : null,
          deleteIcon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['deleteIcon'] : null, parentState: hydroState),
          deleteIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['deleteIconColor'] : null, parentState: hydroState),
          disabledColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledColor'] : null, parentState: hydroState),
          elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
          focusNode: _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusNode'] : null, parentState: hydroState),
          isEnabled: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isEnabled'] : null,
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          labelPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelPadding'] : null, parentState: hydroState),
          labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null, parentState: hydroState),
          materialTapTargetSize: _36c2.maybeUnBoxEnum(values: _9716.MaterialTapTargetSize.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['materialTapTargetSize'] : null),
          onDeleted: unpackedonDeleted != null
              ? () => unpackedonDeleted.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onPressed: unpackedonPressed != null
              ? () => unpackedonPressed.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onSelected: unpackedonSelected != null
              ? (value) => unpackedonSelected.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null,
          padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
          pressElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressElevation'] : null?.toDouble(),
          selected: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selected'] : null,
          selectedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedColor'] : null, parentState: hydroState),
          selectedShadowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedShadowColor'] : null, parentState: hydroState),
          shadowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null, parentState: hydroState),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          showCheckmark: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showCheckmark'] : null,
          side: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['side'] : null, parentState: hydroState),
          tapEnabled: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tapEnabled'] : null,
          tooltip: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tooltip'] : null,
          useDeleteButtonTooltip: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['useDeleteButtonTooltip'] : null,
          visualDensity: _36c2.maybeUnBoxAndBuildArgument<_9716.VisualDensity?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['visualDensity'] : null, parentState: hydroState),
          label: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['label'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_8acc.RawChip>(boxer: (
      {required _8acc.RawChip vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRawChip(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
