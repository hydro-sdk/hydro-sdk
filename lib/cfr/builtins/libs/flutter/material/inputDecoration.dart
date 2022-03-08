import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/input_border.dart' as _d817;
import 'package:flutter/src/material/input_decorator.dart' as _ea86;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedInputDecoration
    extends _36c2.VMManagedBox<_ea86.InputDecoration> {
  VMManagedInputDecoration(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['icon'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.icon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.iconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['label'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.label,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelText'] = vmObject.labelText;
    table['labelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.labelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['floatingLabelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.floatingLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['helperText'] = vmObject.helperText;
    table['helperStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.helperStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['helperMaxLines'] = vmObject.helperMaxLines;
    table['hintText'] = vmObject.hintText;
    table['hintStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.hintStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hintTextDirection'] = _a643.TextDirection.values.indexWhere((x) {
      return x == vmObject.hintTextDirection;
    });
    table['hintMaxLines'] = vmObject.hintMaxLines;
    table['errorText'] = vmObject.errorText;
    table['errorStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.errorStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['errorMaxLines'] = vmObject.errorMaxLines;
    table['floatingLabelBehavior'] =
        _ea86.FloatingLabelBehavior.values.indexWhere((x) {
      return x == vmObject.floatingLabelBehavior;
    });
    table['isDense'] = vmObject.isDense;
    table['contentPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.contentPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isCollapsed'] = vmObject.isCollapsed;
    table['prefixIcon'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.prefixIcon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['prefixIconConstraints'] =
        _36c2.maybeBoxObject<_be2e.BoxConstraints?>(
            object: vmObject.prefixIconConstraints,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['prefix'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.prefix,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['prefixText'] = vmObject.prefixText;
    table['prefixStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.prefixStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['prefixIconColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.prefixIconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['suffixIcon'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.suffixIcon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['suffix'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.suffix,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['suffixText'] = vmObject.suffixText;
    table['suffixStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.suffixStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['suffixIconColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.suffixIconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['suffixIconConstraints'] =
        _36c2.maybeBoxObject<_be2e.BoxConstraints?>(
            object: vmObject.suffixIconConstraints,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['counterText'] = vmObject.counterText;
    table['counter'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.counter,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['counterStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.counterStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['filled'] = vmObject.filled;
    table['fillColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.fillColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.focusColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hoverColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.hoverColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['errorBorder'] = _36c2.maybeBoxObject<_d817.InputBorder?>(
        object: vmObject.errorBorder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusedBorder'] = _36c2.maybeBoxObject<_d817.InputBorder?>(
        object: vmObject.focusedBorder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusedErrorBorder'] = _36c2.maybeBoxObject<_d817.InputBorder?>(
        object: vmObject.focusedErrorBorder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledBorder'] = _36c2.maybeBoxObject<_d817.InputBorder?>(
        object: vmObject.disabledBorder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enabledBorder'] = _36c2.maybeBoxObject<_d817.InputBorder?>(
        object: vmObject.enabledBorder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['border'] = _36c2.maybeBoxObject<_d817.InputBorder?>(
        object: vmObject.border,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enabled'] = vmObject.enabled;
    table['semanticCounterText'] = vmObject.semanticCounterText;
    table['alignLabelWithHint'] = vmObject.alignLabelWithHint;
    table['constraints'] = _36c2.maybeBoxObject<_be2e.BoxConstraints?>(
        object: vmObject.constraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_ea86.InputDecoration>(
            object: vmObject.copyWith(
                alignLabelWithHint: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['alignLabelWithHint']
                    : null,
                border: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['border'] : null,
                    parentState: hydroState),
                constraints:
                    _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['constraints']
                            : null,
                        parentState: hydroState),
                contentPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['contentPadding'] : null,
                    parentState: hydroState),
                counter: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['counter'] : null, parentState: hydroState),
                counterStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['counterStyle'] : null, parentState: hydroState),
                counterText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['counterText'] : null,
                disabledBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledBorder'] : null, parentState: hydroState),
                enabled: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enabled'] : null,
                enabledBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enabledBorder'] : null, parentState: hydroState),
                errorBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorBorder'] : null, parentState: hydroState),
                errorMaxLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorMaxLines'] : null,
                errorStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorStyle'] : null, parentState: hydroState),
                errorText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorText'] : null,
                fillColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fillColor'] : null, parentState: hydroState),
                filled: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['filled'] : null,
                floatingLabelBehavior: _36c2.maybeUnBoxEnum(values: _ea86.FloatingLabelBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingLabelBehavior'] : null),
                floatingLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingLabelStyle'] : null, parentState: hydroState),
                focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
                focusedBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusedBorder'] : null, parentState: hydroState),
                focusedErrorBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusedErrorBorder'] : null, parentState: hydroState),
                helperMaxLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperMaxLines'] : null,
                helperStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperStyle'] : null, parentState: hydroState),
                helperText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperText'] : null,
                hintMaxLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintMaxLines'] : null,
                hintStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintStyle'] : null, parentState: hydroState),
                hintText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintText'] : null,
                hintTextDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintTextDirection'] : null),
                hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
                icon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['icon'] : null, parentState: hydroState),
                iconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconColor'] : null, parentState: hydroState),
                isCollapsed: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isCollapsed'] : null,
                isDense: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isDense'] : null,
                label: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['label'] : null, parentState: hydroState),
                labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null, parentState: hydroState),
                labelText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelText'] : null,
                prefix: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefix'] : null, parentState: hydroState),
                prefixIcon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixIcon'] : null, parentState: hydroState),
                prefixIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixIconColor'] : null, parentState: hydroState),
                prefixIconConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixIconConstraints'] : null, parentState: hydroState),
                prefixStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixStyle'] : null, parentState: hydroState),
                prefixText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixText'] : null,
                semanticCounterText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['semanticCounterText'] : null,
                suffix: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffix'] : null, parentState: hydroState),
                suffixIcon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixIcon'] : null, parentState: hydroState),
                suffixIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixIconColor'] : null, parentState: hydroState),
                suffixIconConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixIconConstraints'] : null, parentState: hydroState),
                suffixStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixStyle'] : null, parentState: hydroState),
                suffixText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixText'] : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['applyDefaults'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_ea86.InputDecoration>(
            object: vmObject.applyDefaults(_36c2.maybeUnBoxAndBuildArgument<
                _ea86.InputDecorationTheme,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _ea86.InputDecoration vmObject;
}

class RTManagedInputDecoration extends _ea86.InputDecoration
    implements _36c2.Box<_ea86.InputDecoration> {
  RTManagedInputDecoration(
      {_fac9.bool? alignLabelWithHint,
      _d817.InputBorder? border,
      _be2e.BoxConstraints? constraints,
      _96d1.EdgeInsetsGeometry? contentPadding,
      _e2dc.Widget? counter,
      _74d0.TextStyle? counterStyle,
      _fac9.String? counterText,
      _d817.InputBorder? disabledBorder,
      required _fac9.bool enabled,
      _d817.InputBorder? enabledBorder,
      _d817.InputBorder? errorBorder,
      _fac9.int? errorMaxLines,
      _74d0.TextStyle? errorStyle,
      _fac9.String? errorText,
      _a643.Color? fillColor,
      _fac9.bool? filled,
      _ea86.FloatingLabelBehavior? floatingLabelBehavior,
      _74d0.TextStyle? floatingLabelStyle,
      _a643.Color? focusColor,
      _d817.InputBorder? focusedBorder,
      _d817.InputBorder? focusedErrorBorder,
      _fac9.int? helperMaxLines,
      _74d0.TextStyle? helperStyle,
      _fac9.String? helperText,
      _fac9.int? hintMaxLines,
      _74d0.TextStyle? hintStyle,
      _fac9.String? hintText,
      _a643.TextDirection? hintTextDirection,
      _a643.Color? hoverColor,
      _e2dc.Widget? icon,
      _a643.Color? iconColor,
      required _fac9.bool isCollapsed,
      _fac9.bool? isDense,
      _e2dc.Widget? label,
      _74d0.TextStyle? labelStyle,
      _fac9.String? labelText,
      _e2dc.Widget? prefix,
      _e2dc.Widget? prefixIcon,
      _a643.Color? prefixIconColor,
      _be2e.BoxConstraints? prefixIconConstraints,
      _74d0.TextStyle? prefixStyle,
      _fac9.String? prefixText,
      _fac9.String? semanticCounterText,
      _e2dc.Widget? suffix,
      _e2dc.Widget? suffixIcon,
      _a643.Color? suffixIconColor,
      _be2e.BoxConstraints? suffixIconConstraints,
      _74d0.TextStyle? suffixStyle,
      _fac9.String? suffixText,
      required this.table,
      required this.hydroState})
      : super(
            alignLabelWithHint: alignLabelWithHint,
            border: border,
            constraints: constraints,
            contentPadding: contentPadding,
            counter: counter,
            counterStyle: counterStyle,
            counterText: counterText,
            disabledBorder: disabledBorder,
            enabled: enabled,
            enabledBorder: enabledBorder,
            errorBorder: errorBorder,
            errorMaxLines: errorMaxLines,
            errorStyle: errorStyle,
            errorText: errorText,
            fillColor: fillColor,
            filled: filled,
            floatingLabelBehavior: floatingLabelBehavior,
            floatingLabelStyle: floatingLabelStyle,
            focusColor: focusColor,
            focusedBorder: focusedBorder,
            focusedErrorBorder: focusedErrorBorder,
            helperMaxLines: helperMaxLines,
            helperStyle: helperStyle,
            helperText: helperText,
            hintMaxLines: hintMaxLines,
            hintStyle: hintStyle,
            hintText: hintText,
            hintTextDirection: hintTextDirection,
            hoverColor: hoverColor,
            icon: icon,
            iconColor: iconColor,
            isCollapsed: isCollapsed,
            isDense: isDense,
            label: label,
            labelStyle: labelStyle,
            labelText: labelText,
            prefix: prefix,
            prefixIcon: prefixIcon,
            prefixIconColor: prefixIconColor,
            prefixIconConstraints: prefixIconConstraints,
            prefixStyle: prefixStyle,
            prefixText: prefixText,
            semanticCounterText: semanticCounterText,
            suffix: suffix,
            suffixIcon: suffixIcon,
            suffixIconColor: suffixIconColor,
            suffixIconConstraints: suffixIconConstraints,
            suffixStyle: suffixStyle,
            suffixText: suffixText) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['icon'] = _36c2.maybeBoxObject(
        object: this.icon, hydroState: hydroState, table: _36c2.HydroTable());
    table['iconColor'] = _36c2.maybeBoxObject(
        object: this.iconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['label'] = _36c2.maybeBoxObject(
        object: this.label, hydroState: hydroState, table: _36c2.HydroTable());
    table['labelText'] = _36c2.maybeBoxObject(
        object: this.labelText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelStyle'] = _36c2.maybeBoxObject(
        object: this.labelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['floatingLabelStyle'] = _36c2.maybeBoxObject(
        object: this.floatingLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['helperText'] = _36c2.maybeBoxObject(
        object: this.helperText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['helperStyle'] = _36c2.maybeBoxObject(
        object: this.helperStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['helperMaxLines'] = _36c2.maybeBoxObject(
        object: this.helperMaxLines,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hintText'] = _36c2.maybeBoxObject(
        object: this.hintText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hintStyle'] = _36c2.maybeBoxObject(
        object: this.hintStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hintTextDirection'] = _a643.TextDirection.values.indexWhere((x) {
      return x == this.hintTextDirection;
    });
    table['hintMaxLines'] = _36c2.maybeBoxObject(
        object: this.hintMaxLines,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['errorText'] = _36c2.maybeBoxObject(
        object: this.errorText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['errorStyle'] = _36c2.maybeBoxObject(
        object: this.errorStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['errorMaxLines'] = _36c2.maybeBoxObject(
        object: this.errorMaxLines,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['floatingLabelBehavior'] =
        _ea86.FloatingLabelBehavior.values.indexWhere((x) {
      return x == this.floatingLabelBehavior;
    });
    table['isDense'] = _36c2.maybeBoxObject(
        object: this.isDense,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['contentPadding'] = _36c2.maybeBoxObject(
        object: this.contentPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isCollapsed'] = _36c2.maybeBoxObject(
        object: this.isCollapsed,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['prefixIcon'] = _36c2.maybeBoxObject(
        object: this.prefixIcon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['prefixIconConstraints'] = _36c2.maybeBoxObject(
        object: this.prefixIconConstraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['prefix'] = _36c2.maybeBoxObject(
        object: this.prefix, hydroState: hydroState, table: _36c2.HydroTable());
    table['prefixText'] = _36c2.maybeBoxObject(
        object: this.prefixText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['prefixStyle'] = _36c2.maybeBoxObject(
        object: this.prefixStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['prefixIconColor'] = _36c2.maybeBoxObject(
        object: this.prefixIconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['suffixIcon'] = _36c2.maybeBoxObject(
        object: this.suffixIcon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['suffix'] = _36c2.maybeBoxObject(
        object: this.suffix, hydroState: hydroState, table: _36c2.HydroTable());
    table['suffixText'] = _36c2.maybeBoxObject(
        object: this.suffixText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['suffixStyle'] = _36c2.maybeBoxObject(
        object: this.suffixStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['suffixIconColor'] = _36c2.maybeBoxObject(
        object: this.suffixIconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['suffixIconConstraints'] = _36c2.maybeBoxObject(
        object: this.suffixIconConstraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['counterText'] = _36c2.maybeBoxObject(
        object: this.counterText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['counter'] = _36c2.maybeBoxObject(
        object: this.counter,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['counterStyle'] = _36c2.maybeBoxObject(
        object: this.counterStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['filled'] = _36c2.maybeBoxObject(
        object: this.filled, hydroState: hydroState, table: _36c2.HydroTable());
    table['fillColor'] = _36c2.maybeBoxObject(
        object: this.fillColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusColor'] = _36c2.maybeBoxObject(
        object: this.focusColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hoverColor'] = _36c2.maybeBoxObject(
        object: this.hoverColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['errorBorder'] = _36c2.maybeBoxObject(
        object: this.errorBorder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusedBorder'] = _36c2.maybeBoxObject(
        object: this.focusedBorder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusedErrorBorder'] = _36c2.maybeBoxObject(
        object: this.focusedErrorBorder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledBorder'] = _36c2.maybeBoxObject(
        object: this.disabledBorder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enabledBorder'] = _36c2.maybeBoxObject(
        object: this.enabledBorder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['border'] = _36c2.maybeBoxObject(
        object: this.border, hydroState: hydroState, table: _36c2.HydroTable());
    table['enabled'] = _36c2.maybeBoxObject(
        object: this.enabled,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['semanticCounterText'] = _36c2.maybeBoxObject(
        object: this.semanticCounterText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['alignLabelWithHint'] = _36c2.maybeBoxObject(
        object: this.alignLabelWithHint,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['constraints'] = _36c2.maybeBoxObject(
        object: this.constraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                alignLabelWithHint:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['alignLabelWithHint']
                            : null,
                        parentState: hydroState),
                border: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['border'] : null,
                    parentState: hydroState),
                constraints:
                    _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['constraints'] : null,
                        parentState: hydroState),
                contentPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['contentPadding'] : null, parentState: hydroState),
                counter: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['counter'] : null, parentState: hydroState),
                counterStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['counterStyle'] : null, parentState: hydroState),
                counterText: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['counterText'] : null, parentState: hydroState),
                disabledBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledBorder'] : null, parentState: hydroState),
                enabled: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enabled'] : null, parentState: hydroState),
                enabledBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enabledBorder'] : null, parentState: hydroState),
                errorBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorBorder'] : null, parentState: hydroState),
                errorMaxLines: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorMaxLines'] : null, parentState: hydroState),
                errorStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorStyle'] : null, parentState: hydroState),
                errorText: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorText'] : null, parentState: hydroState),
                fillColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fillColor'] : null, parentState: hydroState),
                filled: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['filled'] : null, parentState: hydroState),
                floatingLabelBehavior: _36c2.maybeUnBoxEnum(values: _ea86.FloatingLabelBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingLabelBehavior'] : null),
                floatingLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingLabelStyle'] : null, parentState: hydroState),
                focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
                focusedBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusedBorder'] : null, parentState: hydroState),
                focusedErrorBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusedErrorBorder'] : null, parentState: hydroState),
                helperMaxLines: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperMaxLines'] : null, parentState: hydroState),
                helperStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperStyle'] : null, parentState: hydroState),
                helperText: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperText'] : null, parentState: hydroState),
                hintMaxLines: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintMaxLines'] : null, parentState: hydroState),
                hintStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintStyle'] : null, parentState: hydroState),
                hintText: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintText'] : null, parentState: hydroState),
                hintTextDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintTextDirection'] : null),
                hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
                icon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['icon'] : null, parentState: hydroState),
                iconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconColor'] : null, parentState: hydroState),
                isCollapsed: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isCollapsed'] : null, parentState: hydroState),
                isDense: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isDense'] : null, parentState: hydroState),
                label: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['label'] : null, parentState: hydroState),
                labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null, parentState: hydroState),
                labelText: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelText'] : null, parentState: hydroState),
                prefix: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefix'] : null, parentState: hydroState),
                prefixIcon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixIcon'] : null, parentState: hydroState),
                prefixIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixIconColor'] : null, parentState: hydroState),
                prefixIconConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixIconConstraints'] : null, parentState: hydroState),
                prefixStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixStyle'] : null, parentState: hydroState),
                prefixText: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixText'] : null, parentState: hydroState),
                semanticCounterText: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['semanticCounterText'] : null, parentState: hydroState),
                suffix: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffix'] : null, parentState: hydroState),
                suffixIcon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixIcon'] : null, parentState: hydroState),
                suffixIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixIconColor'] : null, parentState: hydroState),
                suffixIconConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixIconConstraints'] : null, parentState: hydroState),
                suffixStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixStyle'] : null, parentState: hydroState),
                suffixText: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixText'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_applyDefaults'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.applyDefaults(_36c2.maybeUnBoxAndBuildArgument<
                _ea86.InputDecorationTheme,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _ea86.InputDecoration unwrap() => this;
  _ea86.InputDecoration get vmObject => this;
  @_fac9.override
  _ea86.InputDecoration copyWith(
      {_fac9.bool? alignLabelWithHint,
      _d817.InputBorder? border,
      _be2e.BoxConstraints? constraints,
      _96d1.EdgeInsetsGeometry? contentPadding,
      _e2dc.Widget? counter,
      _74d0.TextStyle? counterStyle,
      _fac9.String? counterText,
      _d817.InputBorder? disabledBorder,
      _fac9.bool? enabled,
      _d817.InputBorder? enabledBorder,
      _d817.InputBorder? errorBorder,
      _fac9.int? errorMaxLines,
      _74d0.TextStyle? errorStyle,
      _fac9.String? errorText,
      _a643.Color? fillColor,
      _fac9.bool? filled,
      _ea86.FloatingLabelBehavior? floatingLabelBehavior,
      _74d0.TextStyle? floatingLabelStyle,
      _a643.Color? focusColor,
      _d817.InputBorder? focusedBorder,
      _d817.InputBorder? focusedErrorBorder,
      _fac9.int? helperMaxLines,
      _74d0.TextStyle? helperStyle,
      _fac9.String? helperText,
      _fac9.int? hintMaxLines,
      _74d0.TextStyle? hintStyle,
      _fac9.String? hintText,
      _a643.TextDirection? hintTextDirection,
      _a643.Color? hoverColor,
      _e2dc.Widget? icon,
      _a643.Color? iconColor,
      _fac9.bool? isCollapsed,
      _fac9.bool? isDense,
      _e2dc.Widget? label,
      _74d0.TextStyle? labelStyle,
      _fac9.String? labelText,
      _e2dc.Widget? prefix,
      _e2dc.Widget? prefixIcon,
      _a643.Color? prefixIconColor,
      _be2e.BoxConstraints? prefixIconConstraints,
      _74d0.TextStyle? prefixStyle,
      _fac9.String? prefixText,
      _fac9.String? semanticCounterText,
      _e2dc.Widget? suffix,
      _e2dc.Widget? suffixIcon,
      _a643.Color? suffixIconColor,
      _be2e.BoxConstraints? suffixIconConstraints,
      _74d0.TextStyle? suffixStyle,
      _fac9.String? suffixText}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_ea86.InputDecoration, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _ea86.InputDecoration applyDefaults(theme) {
    _36c2.Closure closure = table["applyDefaults"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_ea86.InputDecoration, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadInputDecoration(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['inputDecoration'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedInputDecoration(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          alignLabelWithHint: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['alignLabelWithHint']
              : null,
          border: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['border'] : null,
              parentState: hydroState),
          constraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['constraints'] : null,
              parentState: hydroState),
          contentPadding:
              _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['contentPadding']
                      : null,
                  parentState: hydroState),
          counter: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['counter'] : null,
              parentState: hydroState),
          counterStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['counterStyle'] : null, parentState: hydroState),
          counterText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['counterText'] : null,
          disabledBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledBorder'] : null, parentState: hydroState),
          enabled: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enabled'] : null,
          enabledBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enabledBorder'] : null, parentState: hydroState),
          errorBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorBorder'] : null, parentState: hydroState),
          errorMaxLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorMaxLines'] : null,
          errorStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorStyle'] : null, parentState: hydroState),
          errorText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorText'] : null,
          fillColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fillColor'] : null, parentState: hydroState),
          filled: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['filled'] : null,
          floatingLabelBehavior: _36c2.maybeUnBoxEnum(values: _ea86.FloatingLabelBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingLabelBehavior'] : null),
          floatingLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingLabelStyle'] : null, parentState: hydroState),
          focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
          focusedBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusedBorder'] : null, parentState: hydroState),
          focusedErrorBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusedErrorBorder'] : null, parentState: hydroState),
          helperMaxLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperMaxLines'] : null,
          helperStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperStyle'] : null, parentState: hydroState),
          helperText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperText'] : null,
          hintMaxLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintMaxLines'] : null,
          hintStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintStyle'] : null, parentState: hydroState),
          hintText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintText'] : null,
          hintTextDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintTextDirection'] : null),
          hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
          icon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['icon'] : null, parentState: hydroState),
          iconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconColor'] : null, parentState: hydroState),
          isCollapsed: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isCollapsed'] : null,
          isDense: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isDense'] : null,
          label: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['label'] : null, parentState: hydroState),
          labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null, parentState: hydroState),
          labelText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelText'] : null,
          prefix: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefix'] : null, parentState: hydroState),
          prefixIcon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixIcon'] : null, parentState: hydroState),
          prefixIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixIconColor'] : null, parentState: hydroState),
          prefixIconConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixIconConstraints'] : null, parentState: hydroState),
          prefixStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixStyle'] : null, parentState: hydroState),
          prefixText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixText'] : null,
          semanticCounterText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['semanticCounterText'] : null,
          suffix: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffix'] : null, parentState: hydroState),
          suffixIcon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixIcon'] : null, parentState: hydroState),
          suffixIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixIconColor'] : null, parentState: hydroState),
          suffixIconConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixIconConstraints'] : null, parentState: hydroState),
          suffixStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixStyle'] : null, parentState: hydroState),
          suffixText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixText'] : null)
    ];
  });
  _36c2.registerBoxer<_ea86.InputDecoration>(boxer: (
      {required _ea86.InputDecoration vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedInputDecoration(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
