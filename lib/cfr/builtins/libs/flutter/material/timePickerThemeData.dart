import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/input_decorator.dart' as _ea86;
import 'package:flutter/src/material/time_picker_theme.dart' as _f792;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/text_style.dart' as _74d0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTimePickerThemeData
    extends _36c2.VMManagedBox<_f792.TimePickerThemeData> {
  VMManagedTimePickerThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hourMinuteTextColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.hourMinuteTextColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hourMinuteColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.hourMinuteColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dayPeriodTextColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.dayPeriodTextColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dayPeriodColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.dayPeriodColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dialHandColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.dialHandColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dialBackgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.dialBackgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dialTextColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.dialTextColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['entryModeIconColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.entryModeIconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hourMinuteTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.hourMinuteTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dayPeriodTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.dayPeriodTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['helpTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.helpTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hourMinuteShape'] = _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
        object: vmObject.hourMinuteShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dayPeriodShape'] = _36c2.maybeBoxObject<_6be9.OutlinedBorder?>(
        object: vmObject.dayPeriodShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dayPeriodBorderSide'] = _36c2.maybeBoxObject<_6be9.BorderSide?>(
        object: vmObject.dayPeriodBorderSide,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['inputDecorationTheme'] =
        _36c2.maybeBoxObject<_ea86.InputDecorationTheme?>(
            object: vmObject.inputDecorationTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_f792.TimePickerThemeData>(
            object: vmObject.copyWith(
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                        parentState: hydroState),
                dayPeriodBorderSide:
                    _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['dayPeriodBorderSide']
                            : null,
                        parentState: hydroState),
                dayPeriodColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dayPeriodColor'] : null,
                    parentState: hydroState),
                dayPeriodShape: _36c2.maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dayPeriodShape'] : null, parentState: hydroState),
                dayPeriodTextColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dayPeriodTextColor'] : null, parentState: hydroState),
                dayPeriodTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dayPeriodTextStyle'] : null, parentState: hydroState),
                dialBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dialBackgroundColor'] : null, parentState: hydroState),
                dialHandColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dialHandColor'] : null, parentState: hydroState),
                dialTextColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dialTextColor'] : null, parentState: hydroState),
                entryModeIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['entryModeIconColor'] : null, parentState: hydroState),
                helpTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helpTextStyle'] : null, parentState: hydroState),
                hourMinuteColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hourMinuteColor'] : null, parentState: hydroState),
                hourMinuteShape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hourMinuteShape'] : null, parentState: hydroState),
                hourMinuteTextColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hourMinuteTextColor'] : null, parentState: hydroState),
                hourMinuteTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hourMinuteTextStyle'] : null, parentState: hydroState),
                inputDecorationTheme: _36c2.maybeUnBoxAndBuildArgument<_ea86.InputDecorationTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inputDecorationTheme'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState)),
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

  final _f792.TimePickerThemeData vmObject;
}

class RTManagedTimePickerThemeData extends _f792.TimePickerThemeData
    implements _36c2.Box<_f792.TimePickerThemeData> {
  RTManagedTimePickerThemeData(
      {_a643.Color? backgroundColor,
      _6be9.BorderSide? dayPeriodBorderSide,
      _a643.Color? dayPeriodColor,
      _6be9.OutlinedBorder? dayPeriodShape,
      _a643.Color? dayPeriodTextColor,
      _74d0.TextStyle? dayPeriodTextStyle,
      _a643.Color? dialBackgroundColor,
      _a643.Color? dialHandColor,
      _a643.Color? dialTextColor,
      _a643.Color? entryModeIconColor,
      _74d0.TextStyle? helpTextStyle,
      _a643.Color? hourMinuteColor,
      _6be9.ShapeBorder? hourMinuteShape,
      _a643.Color? hourMinuteTextColor,
      _74d0.TextStyle? hourMinuteTextStyle,
      _ea86.InputDecorationTheme? inputDecorationTheme,
      _6be9.ShapeBorder? shape,
      required this.table,
      required this.hydroState})
      : super(
            backgroundColor: backgroundColor,
            dayPeriodBorderSide: dayPeriodBorderSide,
            dayPeriodColor: dayPeriodColor,
            dayPeriodShape: dayPeriodShape,
            dayPeriodTextColor: dayPeriodTextColor,
            dayPeriodTextStyle: dayPeriodTextStyle,
            dialBackgroundColor: dialBackgroundColor,
            dialHandColor: dialHandColor,
            dialTextColor: dialTextColor,
            entryModeIconColor: entryModeIconColor,
            helpTextStyle: helpTextStyle,
            hourMinuteColor: hourMinuteColor,
            hourMinuteShape: hourMinuteShape,
            hourMinuteTextColor: hourMinuteTextColor,
            hourMinuteTextStyle: hourMinuteTextStyle,
            inputDecorationTheme: inputDecorationTheme,
            shape: shape) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hourMinuteTextColor'] = _36c2.maybeBoxObject(
        object: this.hourMinuteTextColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hourMinuteColor'] = _36c2.maybeBoxObject(
        object: this.hourMinuteColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dayPeriodTextColor'] = _36c2.maybeBoxObject(
        object: this.dayPeriodTextColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dayPeriodColor'] = _36c2.maybeBoxObject(
        object: this.dayPeriodColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dialHandColor'] = _36c2.maybeBoxObject(
        object: this.dialHandColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dialBackgroundColor'] = _36c2.maybeBoxObject(
        object: this.dialBackgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dialTextColor'] = _36c2.maybeBoxObject(
        object: this.dialTextColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['entryModeIconColor'] = _36c2.maybeBoxObject(
        object: this.entryModeIconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hourMinuteTextStyle'] = _36c2.maybeBoxObject(
        object: this.hourMinuteTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dayPeriodTextStyle'] = _36c2.maybeBoxObject(
        object: this.dayPeriodTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['helpTextStyle'] = _36c2.maybeBoxObject(
        object: this.helpTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['hourMinuteShape'] = _36c2.maybeBoxObject(
        object: this.hourMinuteShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dayPeriodShape'] = _36c2.maybeBoxObject(
        object: this.dayPeriodShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dayPeriodBorderSide'] = _36c2.maybeBoxObject(
        object: this.dayPeriodBorderSide,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['inputDecorationTheme'] = _36c2.maybeBoxObject(
        object: this.inputDecorationTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                        parentState: hydroState),
                dayPeriodBorderSide:
                    _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['dayPeriodBorderSide']
                            : null,
                        parentState: hydroState),
                dayPeriodColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dayPeriodColor'] : null,
                    parentState: hydroState),
                dayPeriodShape: _36c2.maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dayPeriodShape'] : null, parentState: hydroState),
                dayPeriodTextColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dayPeriodTextColor'] : null, parentState: hydroState),
                dayPeriodTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dayPeriodTextStyle'] : null, parentState: hydroState),
                dialBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dialBackgroundColor'] : null, parentState: hydroState),
                dialHandColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dialHandColor'] : null, parentState: hydroState),
                dialTextColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dialTextColor'] : null, parentState: hydroState),
                entryModeIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['entryModeIconColor'] : null, parentState: hydroState),
                helpTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helpTextStyle'] : null, parentState: hydroState),
                hourMinuteColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hourMinuteColor'] : null, parentState: hydroState),
                hourMinuteShape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hourMinuteShape'] : null, parentState: hydroState),
                hourMinuteTextColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hourMinuteTextColor'] : null, parentState: hydroState),
                hourMinuteTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hourMinuteTextStyle'] : null, parentState: hydroState),
                inputDecorationTheme: _36c2.maybeUnBoxAndBuildArgument<_ea86.InputDecorationTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inputDecorationTheme'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState)),
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

  _f792.TimePickerThemeData unwrap() => this;
  _f792.TimePickerThemeData get vmObject => this;
  @_fac9.override
  _f792.TimePickerThemeData copyWith(
      {_a643.Color? backgroundColor,
      _6be9.BorderSide? dayPeriodBorderSide,
      _a643.Color? dayPeriodColor,
      _6be9.OutlinedBorder? dayPeriodShape,
      _a643.Color? dayPeriodTextColor,
      _74d0.TextStyle? dayPeriodTextStyle,
      _a643.Color? dialBackgroundColor,
      _a643.Color? dialHandColor,
      _a643.Color? dialTextColor,
      _a643.Color? entryModeIconColor,
      _74d0.TextStyle? helpTextStyle,
      _a643.Color? hourMinuteColor,
      _6be9.ShapeBorder? hourMinuteShape,
      _a643.Color? hourMinuteTextColor,
      _74d0.TextStyle? hourMinuteTextStyle,
      _ea86.InputDecorationTheme? inputDecorationTheme,
      _6be9.ShapeBorder? shape}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_f792.TimePickerThemeData, _fac9.dynamic>(
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

void loadTimePickerThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['timePickerThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTimePickerThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['backgroundColor']
                  : null,
              parentState: hydroState),
          dayPeriodBorderSide:
              _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['dayPeriodBorderSide']
                      : null,
                  parentState: hydroState),
          dayPeriodColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dayPeriodColor'] : null,
              parentState: hydroState),
          dayPeriodShape: _36c2.maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dayPeriodShape'] : null, parentState: hydroState),
          dayPeriodTextColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dayPeriodTextColor'] : null, parentState: hydroState),
          dayPeriodTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dayPeriodTextStyle'] : null, parentState: hydroState),
          dialBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dialBackgroundColor'] : null, parentState: hydroState),
          dialHandColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dialHandColor'] : null, parentState: hydroState),
          dialTextColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dialTextColor'] : null, parentState: hydroState),
          entryModeIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['entryModeIconColor'] : null, parentState: hydroState),
          helpTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['helpTextStyle'] : null, parentState: hydroState),
          hourMinuteColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hourMinuteColor'] : null, parentState: hydroState),
          hourMinuteShape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hourMinuteShape'] : null, parentState: hydroState),
          hourMinuteTextColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hourMinuteTextColor'] : null, parentState: hydroState),
          hourMinuteTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hourMinuteTextStyle'] : null, parentState: hydroState),
          inputDecorationTheme: _36c2.maybeUnBoxAndBuildArgument<_ea86.InputDecorationTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inputDecorationTheme'] : null, parentState: hydroState),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState))
    ];
  });
  table['timePickerThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_f792.TimePickerThemeData>(
          object: _f792.TimePickerThemeData.lerp(
              _36c2.maybeUnBoxAndBuildArgument<_f792.TimePickerThemeData?,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_f792.TimePickerThemeData?,
                      _fac9.dynamic>(luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_f792.TimePickerThemeData>(boxer: (
      {required _f792.TimePickerThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTimePickerThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
