import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/chip_theme.dart' as _c6ff;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/text_style.dart' as _74d0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedChipThemeData extends _36c2.VMManagedBox<_c6ff.ChipThemeData> {
  VMManagedChipThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['deleteIconColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.deleteIconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.disabledColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.selectedColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondarySelectedColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.secondarySelectedColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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
    table['labelPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.labelPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['padding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(
        object: vmObject.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['side'] = _36c2.maybeBoxObject<_6be9.BorderSide?>(
        object: vmObject.side,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject<_6be9.OutlinedBorder?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle>(
        object: vmObject.labelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondaryLabelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle>(
        object: vmObject.secondaryLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['brightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == vmObject.brightness;
    });
    table['elevation'] = vmObject.elevation;
    table['pressElevation'] = vmObject.pressElevation;
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_c6ff.ChipThemeData>(
            object: vmObject.copyWith(
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['backgroundColor']
                            : null,
                        parentState: hydroState),
                brightness: _36c2.maybeUnBoxEnum(
                    values: _a643.Brightness.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['brightness']
                        : null),
                checkmarkColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['checkmarkColor'] : null,
                        parentState: hydroState),
                deleteIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['deleteIconColor'] : null, parentState: hydroState),
                disabledColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledColor'] : null, parentState: hydroState),
                elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
                labelPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelPadding'] : null, parentState: hydroState),
                labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null, parentState: hydroState),
                padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
                pressElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressElevation'] : null?.toDouble(),
                secondaryLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondaryLabelStyle'] : null, parentState: hydroState),
                secondarySelectedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondarySelectedColor'] : null, parentState: hydroState),
                selectedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedColor'] : null, parentState: hydroState),
                selectedShadowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedShadowColor'] : null, parentState: hydroState),
                shadowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
                side: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['side'] : null, parentState: hydroState)),
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

  final _c6ff.ChipThemeData vmObject;
}

class RTManagedChipThemeData extends _c6ff.ChipThemeData
    implements _36c2.Box<_c6ff.ChipThemeData> {
  RTManagedChipThemeData(
      {_a643.Color? checkmarkColor,
      _a643.Color? deleteIconColor,
      _fac9.double? elevation,
      _96d1.EdgeInsetsGeometry? labelPadding,
      _fac9.double? pressElevation,
      _a643.Color? selectedShadowColor,
      _a643.Color? shadowColor,
      _6be9.OutlinedBorder? shape,
      _fac9.bool? showCheckmark,
      _6be9.BorderSide? side,
      required _a643.Color backgroundColor,
      required _a643.Brightness brightness,
      required _a643.Color disabledColor,
      required _74d0.TextStyle labelStyle,
      required _96d1.EdgeInsetsGeometry padding,
      required _74d0.TextStyle secondaryLabelStyle,
      required _a643.Color secondarySelectedColor,
      required _a643.Color selectedColor,
      required this.table,
      required this.hydroState})
      : super(
            checkmarkColor: checkmarkColor,
            deleteIconColor: deleteIconColor,
            elevation: elevation,
            labelPadding: labelPadding,
            pressElevation: pressElevation,
            selectedShadowColor: selectedShadowColor,
            shadowColor: shadowColor,
            shape: shape,
            showCheckmark: showCheckmark,
            side: side,
            backgroundColor: backgroundColor,
            brightness: brightness,
            disabledColor: disabledColor,
            labelStyle: labelStyle,
            padding: padding,
            secondaryLabelStyle: secondaryLabelStyle,
            secondarySelectedColor: secondarySelectedColor,
            selectedColor: selectedColor) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['deleteIconColor'] = _36c2.maybeBoxObject(
        object: this.deleteIconColor,
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
    table['secondarySelectedColor'] = _36c2.maybeBoxObject(
        object: this.secondarySelectedColor,
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
    table['labelPadding'] = _36c2.maybeBoxObject(
        object: this.labelPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['padding'] = _36c2.maybeBoxObject(
        object: this.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['side'] = _36c2.maybeBoxObject(
        object: this.side, hydroState: hydroState, table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['labelStyle'] = _36c2.maybeBoxObject(
        object: this.labelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondaryLabelStyle'] = _36c2.maybeBoxObject(
        object: this.secondaryLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['brightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == this.brightness;
    });
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pressElevation'] = _36c2.maybeBoxObject(
        object: this.pressElevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['backgroundColor']
                        : null,
                    parentState: hydroState),
                brightness: _36c2.maybeUnBoxEnum(
                    values: _a643.Brightness.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['brightness']
                        : null),
                checkmarkColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['checkmarkColor'] : null,
                    parentState: hydroState),
                deleteIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['deleteIconColor'] : null,
                    parentState: hydroState),
                disabledColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledColor'] : null, parentState: hydroState),
                elevation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null, parentState: hydroState),
                labelPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelPadding'] : null, parentState: hydroState),
                labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null, parentState: hydroState),
                padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
                pressElevation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressElevation'] : null, parentState: hydroState),
                secondaryLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondaryLabelStyle'] : null, parentState: hydroState),
                secondarySelectedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondarySelectedColor'] : null, parentState: hydroState),
                selectedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedColor'] : null, parentState: hydroState),
                selectedShadowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedShadowColor'] : null, parentState: hydroState),
                shadowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
                side: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['side'] : null, parentState: hydroState)),
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

  _c6ff.ChipThemeData unwrap() => this;
  _c6ff.ChipThemeData get vmObject => this;
  @_fac9.override
  _c6ff.ChipThemeData copyWith(
      {_a643.Color? backgroundColor,
      _a643.Brightness? brightness,
      _a643.Color? checkmarkColor,
      _a643.Color? deleteIconColor,
      _a643.Color? disabledColor,
      _fac9.double? elevation,
      _96d1.EdgeInsetsGeometry? labelPadding,
      _74d0.TextStyle? labelStyle,
      _96d1.EdgeInsetsGeometry? padding,
      _fac9.double? pressElevation,
      _74d0.TextStyle? secondaryLabelStyle,
      _a643.Color? secondarySelectedColor,
      _a643.Color? selectedColor,
      _a643.Color? selectedShadowColor,
      _a643.Color? shadowColor,
      _6be9.OutlinedBorder? shape,
      _6be9.BorderSide? side}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_c6ff.ChipThemeData, _fac9.dynamic>(
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

void loadChipThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['chipThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedChipThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          checkmarkColor: _36c2
              .maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['checkmarkColor'] : null,
                  parentState: hydroState),
          deleteIconColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['deleteIconColor']
                      : null,
                  parentState: hydroState),
          elevation: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['elevation']
              : null?.toDouble(),
          labelPadding:
              _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelPadding'] : null,
                  parentState: hydroState),
          pressElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressElevation'] : null?.toDouble(),
          selectedShadowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedShadowColor'] : null, parentState: hydroState),
          shadowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null, parentState: hydroState),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          showCheckmark: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showCheckmark'] : null,
          side: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['side'] : null, parentState: hydroState),
          backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null, parentState: hydroState),
          brightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['brightness'] : null),
          disabledColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledColor'] : null, parentState: hydroState),
          labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null, parentState: hydroState),
          padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
          secondaryLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondaryLabelStyle'] : null, parentState: hydroState),
          secondarySelectedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondarySelectedColor'] : null, parentState: hydroState),
          selectedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedColor'] : null, parentState: hydroState))
    ];
  });
  table['chipThemeDataFromDefaults'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_c6ff.ChipThemeData>(
          object: _c6ff.ChipThemeData.fromDefaults(
              brightness: _36c2.maybeUnBoxEnum(
                  values: _a643.Brightness.values,
                  boxedEnum: luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['brightness']
                      : null),
              primaryColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['primaryColor']
                      : null,
                  parentState: hydroState),
              labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null,
                  parentState: hydroState),
              secondaryColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondaryColor'] : null,
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['chipThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _c6ff.ChipThemeData.lerp(
        _36c2.maybeUnBoxAndBuildArgument<_c6ff.ChipThemeData?, _fac9.dynamic>(
            luaCallerArguments[1],
            parentState: hydroState),
        _36c2.maybeUnBoxAndBuildArgument<_c6ff.ChipThemeData?, _fac9.dynamic>(
            luaCallerArguments[2],
            parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_c6ff.ChipThemeData?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_c6ff.ChipThemeData>(boxer: (
      {required _c6ff.ChipThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedChipThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
