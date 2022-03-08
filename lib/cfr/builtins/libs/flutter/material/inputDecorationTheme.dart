import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/input_border.dart' as _d817;
import 'package:flutter/src/material/input_decorator.dart' as _ea86;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/rendering/box.dart' as _be2e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedInputDecorationTheme
    extends _36c2.VMManagedBox<_ea86.InputDecorationTheme> {
  VMManagedInputDecorationTheme(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['labelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.labelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['floatingLabelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.floatingLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['helperStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.helperStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['helperMaxLines'] = vmObject.helperMaxLines;
    table['hintStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.hintStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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
    table['iconColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.iconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['prefixStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.prefixStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['prefixIconColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.prefixIconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['suffixStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.suffixStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['suffixIconColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.suffixIconColor,
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
    table['alignLabelWithHint'] = vmObject.alignLabelWithHint;
    table['constraints'] = _36c2.maybeBoxObject<_be2e.BoxConstraints?>(
        object: vmObject.constraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_ea86.InputDecorationTheme>(
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
                counterStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['counterStyle'] : null, parentState: hydroState),
                disabledBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledBorder'] : null, parentState: hydroState),
                enabledBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enabledBorder'] : null, parentState: hydroState),
                errorBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorBorder'] : null, parentState: hydroState),
                errorMaxLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorMaxLines'] : null,
                errorStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorStyle'] : null, parentState: hydroState),
                fillColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fillColor'] : null, parentState: hydroState),
                filled: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['filled'] : null,
                floatingLabelBehavior: _36c2.maybeUnBoxEnum(values: _ea86.FloatingLabelBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingLabelBehavior'] : null),
                floatingLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingLabelStyle'] : null, parentState: hydroState),
                focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
                focusedBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusedBorder'] : null, parentState: hydroState),
                focusedErrorBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusedErrorBorder'] : null, parentState: hydroState),
                helperMaxLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperMaxLines'] : null,
                helperStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperStyle'] : null, parentState: hydroState),
                hintStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintStyle'] : null, parentState: hydroState),
                hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
                iconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconColor'] : null, parentState: hydroState),
                isCollapsed: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isCollapsed'] : null,
                isDense: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isDense'] : null,
                labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null, parentState: hydroState),
                prefixIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixIconColor'] : null, parentState: hydroState),
                prefixStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixStyle'] : null, parentState: hydroState),
                suffixIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixIconColor'] : null, parentState: hydroState),
                suffixStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixStyle'] : null, parentState: hydroState)),
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
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _ea86.InputDecorationTheme vmObject;
}

class RTManagedInputDecorationTheme extends _ea86.InputDecorationTheme
    implements _36c2.Box<_ea86.InputDecorationTheme> {
  RTManagedInputDecorationTheme(
      {required _fac9.bool alignLabelWithHint,
      _d817.InputBorder? border,
      _be2e.BoxConstraints? constraints,
      _96d1.EdgeInsetsGeometry? contentPadding,
      _74d0.TextStyle? counterStyle,
      _d817.InputBorder? disabledBorder,
      _d817.InputBorder? enabledBorder,
      _d817.InputBorder? errorBorder,
      _fac9.int? errorMaxLines,
      _74d0.TextStyle? errorStyle,
      _a643.Color? fillColor,
      required _fac9.bool filled,
      required _ea86.FloatingLabelBehavior floatingLabelBehavior,
      _74d0.TextStyle? floatingLabelStyle,
      _a643.Color? focusColor,
      _d817.InputBorder? focusedBorder,
      _d817.InputBorder? focusedErrorBorder,
      _fac9.int? helperMaxLines,
      _74d0.TextStyle? helperStyle,
      _74d0.TextStyle? hintStyle,
      _a643.Color? hoverColor,
      _a643.Color? iconColor,
      required _fac9.bool isCollapsed,
      required _fac9.bool isDense,
      _74d0.TextStyle? labelStyle,
      _a643.Color? prefixIconColor,
      _74d0.TextStyle? prefixStyle,
      _a643.Color? suffixIconColor,
      _74d0.TextStyle? suffixStyle,
      required this.table,
      required this.hydroState})
      : super(
            alignLabelWithHint: alignLabelWithHint,
            border: border,
            constraints: constraints,
            contentPadding: contentPadding,
            counterStyle: counterStyle,
            disabledBorder: disabledBorder,
            enabledBorder: enabledBorder,
            errorBorder: errorBorder,
            errorMaxLines: errorMaxLines,
            errorStyle: errorStyle,
            fillColor: fillColor,
            filled: filled,
            floatingLabelBehavior: floatingLabelBehavior,
            floatingLabelStyle: floatingLabelStyle,
            focusColor: focusColor,
            focusedBorder: focusedBorder,
            focusedErrorBorder: focusedErrorBorder,
            helperMaxLines: helperMaxLines,
            helperStyle: helperStyle,
            hintStyle: hintStyle,
            hoverColor: hoverColor,
            iconColor: iconColor,
            isCollapsed: isCollapsed,
            isDense: isDense,
            labelStyle: labelStyle,
            prefixIconColor: prefixIconColor,
            prefixStyle: prefixStyle,
            suffixIconColor: suffixIconColor,
            suffixStyle: suffixStyle) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['labelStyle'] = _36c2.maybeBoxObject(
        object: this.labelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['floatingLabelStyle'] = _36c2.maybeBoxObject(
        object: this.floatingLabelStyle,
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
    table['hintStyle'] = _36c2.maybeBoxObject(
        object: this.hintStyle,
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
    table['iconColor'] = _36c2.maybeBoxObject(
        object: this.iconColor,
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
    table['suffixStyle'] = _36c2.maybeBoxObject(
        object: this.suffixStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['suffixIconColor'] = _36c2.maybeBoxObject(
        object: this.suffixIconColor,
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
                counterStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['counterStyle'] : null, parentState: hydroState),
                disabledBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledBorder'] : null, parentState: hydroState),
                enabledBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enabledBorder'] : null, parentState: hydroState),
                errorBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorBorder'] : null, parentState: hydroState),
                errorMaxLines: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorMaxLines'] : null, parentState: hydroState),
                errorStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorStyle'] : null, parentState: hydroState),
                fillColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fillColor'] : null, parentState: hydroState),
                filled: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['filled'] : null, parentState: hydroState),
                floatingLabelBehavior: _36c2.maybeUnBoxEnum(values: _ea86.FloatingLabelBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingLabelBehavior'] : null),
                floatingLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingLabelStyle'] : null, parentState: hydroState),
                focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
                focusedBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusedBorder'] : null, parentState: hydroState),
                focusedErrorBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusedErrorBorder'] : null, parentState: hydroState),
                helperMaxLines: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperMaxLines'] : null, parentState: hydroState),
                helperStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperStyle'] : null, parentState: hydroState),
                hintStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintStyle'] : null, parentState: hydroState),
                hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
                iconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconColor'] : null, parentState: hydroState),
                isCollapsed: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isCollapsed'] : null, parentState: hydroState),
                isDense: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isDense'] : null, parentState: hydroState),
                labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null, parentState: hydroState),
                prefixIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixIconColor'] : null, parentState: hydroState),
                prefixStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixStyle'] : null, parentState: hydroState),
                suffixIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixIconColor'] : null, parentState: hydroState),
                suffixStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixStyle'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _ea86.InputDecorationTheme unwrap() => this;
  _ea86.InputDecorationTheme get vmObject => this;
  @_fac9.override
  _ea86.InputDecorationTheme copyWith(
      {_fac9.bool? alignLabelWithHint,
      _d817.InputBorder? border,
      _be2e.BoxConstraints? constraints,
      _96d1.EdgeInsetsGeometry? contentPadding,
      _74d0.TextStyle? counterStyle,
      _d817.InputBorder? disabledBorder,
      _d817.InputBorder? enabledBorder,
      _d817.InputBorder? errorBorder,
      _fac9.int? errorMaxLines,
      _74d0.TextStyle? errorStyle,
      _a643.Color? fillColor,
      _fac9.bool? filled,
      _ea86.FloatingLabelBehavior? floatingLabelBehavior,
      _74d0.TextStyle? floatingLabelStyle,
      _a643.Color? focusColor,
      _d817.InputBorder? focusedBorder,
      _d817.InputBorder? focusedErrorBorder,
      _fac9.int? helperMaxLines,
      _74d0.TextStyle? helperStyle,
      _74d0.TextStyle? hintStyle,
      _a643.Color? hoverColor,
      _a643.Color? iconColor,
      _fac9.bool? isCollapsed,
      _fac9.bool? isDense,
      _74d0.TextStyle? labelStyle,
      _a643.Color? prefixIconColor,
      _74d0.TextStyle? prefixStyle,
      _a643.Color? suffixIconColor,
      _74d0.TextStyle? suffixStyle}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_ea86.InputDecorationTheme, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
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
}

void loadInputDecorationTheme(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['inputDecorationTheme'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedInputDecorationTheme(
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
          counterStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['counterStyle'] : null,
              parentState: hydroState),
          disabledBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledBorder'] : null, parentState: hydroState),
          enabledBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enabledBorder'] : null, parentState: hydroState),
          errorBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorBorder'] : null, parentState: hydroState),
          errorMaxLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorMaxLines'] : null,
          errorStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorStyle'] : null, parentState: hydroState),
          fillColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fillColor'] : null, parentState: hydroState),
          filled: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['filled'] : null,
          floatingLabelBehavior: _36c2.maybeUnBoxEnum(values: _ea86.FloatingLabelBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingLabelBehavior'] : null),
          floatingLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingLabelStyle'] : null, parentState: hydroState),
          focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
          focusedBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusedBorder'] : null, parentState: hydroState),
          focusedErrorBorder: _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusedErrorBorder'] : null, parentState: hydroState),
          helperMaxLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperMaxLines'] : null,
          helperStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helperStyle'] : null, parentState: hydroState),
          hintStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintStyle'] : null, parentState: hydroState),
          hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
          iconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconColor'] : null, parentState: hydroState),
          isCollapsed: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isCollapsed'] : null,
          isDense: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isDense'] : null,
          labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null, parentState: hydroState),
          prefixIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixIconColor'] : null, parentState: hydroState),
          prefixStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixStyle'] : null, parentState: hydroState),
          suffixIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixIconColor'] : null, parentState: hydroState),
          suffixStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['suffixStyle'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_ea86.InputDecorationTheme>(boxer: (
      {required _ea86.InputDecorationTheme vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedInputDecorationTheme(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
