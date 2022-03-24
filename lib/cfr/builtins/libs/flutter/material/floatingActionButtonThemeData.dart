import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/rendering/box.dart' as _be2e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

import 'package:flutter/src/material/floating_action_button_theme.dart'
    as _3079;


class VMManagedFloatingActionButtonThemeData
    extends _36c2.VMManagedBox<_3079.FloatingActionButtonThemeData> {
  VMManagedFloatingActionButtonThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['foregroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.foregroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
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
    table['splashColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.splashColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = vmObject.elevation;
    table['focusElevation'] = vmObject.focusElevation;
    table['hoverElevation'] = vmObject.hoverElevation;
    table['disabledElevation'] = vmObject.disabledElevation;
    table['highlightElevation'] = vmObject.highlightElevation;
    table['shape'] = _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableFeedback'] = vmObject.enableFeedback;
    table['sizeConstraints'] = _36c2.maybeBoxObject<_be2e.BoxConstraints?>(
        object: vmObject.sizeConstraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['smallSizeConstraints'] = _36c2.maybeBoxObject<_be2e.BoxConstraints?>(
        object: vmObject.smallSizeConstraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['largeSizeConstraints'] = _36c2.maybeBoxObject<_be2e.BoxConstraints?>(
        object: vmObject.largeSizeConstraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['extendedSizeConstraints'] =
        _36c2.maybeBoxObject<_be2e.BoxConstraints?>(
            object: vmObject.extendedSizeConstraints,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['extendedIconLabelSpacing'] = vmObject.extendedIconLabelSpacing;
    table['extendedPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.extendedPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['extendedTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.extendedTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_3079.FloatingActionButtonThemeData>(
            object: vmObject.copyWith(
                backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['backgroundColor']
                        : null,
                    parentState: hydroState),
                disabledElevation: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['disabledElevation']
                    : null?.toDouble(),
                elevation: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['elevation']
                    : null?.toDouble(),
                enableFeedback: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['enableFeedback']
                    : null,
                extendedIconLabelSpacing: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['extendedIconLabelSpacing']
                    : null?.toDouble(),
                extendedPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['extendedPadding'] : null,
                    parentState: hydroState),
                extendedSizeConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['extendedSizeConstraints'] : null, parentState: hydroState),
                extendedTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['extendedTextStyle'] : null, parentState: hydroState),
                focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
                focusElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusElevation'] : null?.toDouble(),
                foregroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foregroundColor'] : null, parentState: hydroState),
                highlightElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['highlightElevation'] : null?.toDouble(),
                hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
                hoverElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverElevation'] : null?.toDouble(),
                largeSizeConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['largeSizeConstraints'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
                sizeConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['sizeConstraints'] : null, parentState: hydroState),
                smallSizeConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['smallSizeConstraints'] : null, parentState: hydroState),
                splashColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashColor'] : null, parentState: hydroState)),
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

  final _3079.FloatingActionButtonThemeData vmObject;
}

class RTManagedFloatingActionButtonThemeData
    extends _3079.FloatingActionButtonThemeData
    implements _36c2.Box<_3079.FloatingActionButtonThemeData> {
  RTManagedFloatingActionButtonThemeData(
      {_a643.Color? backgroundColor,
      _fac9.double? disabledElevation,
      _fac9.double? elevation,
      _fac9.bool? enableFeedback,
      _fac9.double? extendedIconLabelSpacing,
      _96d1.EdgeInsetsGeometry? extendedPadding,
      _be2e.BoxConstraints? extendedSizeConstraints,
      _74d0.TextStyle? extendedTextStyle,
      _a643.Color? focusColor,
      _fac9.double? focusElevation,
      _a643.Color? foregroundColor,
      _fac9.double? highlightElevation,
      _a643.Color? hoverColor,
      _fac9.double? hoverElevation,
      _be2e.BoxConstraints? largeSizeConstraints,
      _6be9.ShapeBorder? shape,
      _be2e.BoxConstraints? sizeConstraints,
      _be2e.BoxConstraints? smallSizeConstraints,
      _a643.Color? splashColor,
      required this.table,
      required this.hydroState})
      : super(
            backgroundColor: backgroundColor,
            disabledElevation: disabledElevation,
            elevation: elevation,
            enableFeedback: enableFeedback,
            extendedIconLabelSpacing: extendedIconLabelSpacing,
            extendedPadding: extendedPadding,
            extendedSizeConstraints: extendedSizeConstraints,
            extendedTextStyle: extendedTextStyle,
            focusColor: focusColor,
            focusElevation: focusElevation,
            foregroundColor: foregroundColor,
            highlightElevation: highlightElevation,
            hoverColor: hoverColor,
            hoverElevation: hoverElevation,
            largeSizeConstraints: largeSizeConstraints,
            shape: shape,
            sizeConstraints: sizeConstraints,
            smallSizeConstraints: smallSizeConstraints,
            splashColor: splashColor) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['foregroundColor'] = _36c2.maybeBoxObject(
        object: this.foregroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
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
    table['splashColor'] = _36c2.maybeBoxObject(
        object: this.splashColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusElevation'] = _36c2.maybeBoxObject(
        object: this.focusElevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hoverElevation'] = _36c2.maybeBoxObject(
        object: this.hoverElevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledElevation'] = _36c2.maybeBoxObject(
        object: this.disabledElevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['highlightElevation'] = _36c2.maybeBoxObject(
        object: this.highlightElevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['enableFeedback'] = _36c2.maybeBoxObject(
        object: this.enableFeedback,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['sizeConstraints'] = _36c2.maybeBoxObject(
        object: this.sizeConstraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['smallSizeConstraints'] = _36c2.maybeBoxObject(
        object: this.smallSizeConstraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['largeSizeConstraints'] = _36c2.maybeBoxObject(
        object: this.largeSizeConstraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['extendedSizeConstraints'] = _36c2.maybeBoxObject(
        object: this.extendedSizeConstraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['extendedIconLabelSpacing'] = _36c2.maybeBoxObject(
        object: this.extendedIconLabelSpacing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['extendedPadding'] = _36c2.maybeBoxObject(
        object: this.extendedPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['extendedTextStyle'] = _36c2.maybeBoxObject(
        object: this.extendedTextStyle,
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
                disabledElevation:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['disabledElevation']
                            : null,
                        parentState: hydroState),
                elevation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null,
                    parentState: hydroState),
                enableFeedback: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableFeedback'] : null, parentState: hydroState),
                extendedIconLabelSpacing: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['extendedIconLabelSpacing'] : null, parentState: hydroState),
                extendedPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['extendedPadding'] : null, parentState: hydroState),
                extendedSizeConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['extendedSizeConstraints'] : null, parentState: hydroState),
                extendedTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['extendedTextStyle'] : null, parentState: hydroState),
                focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
                focusElevation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusElevation'] : null, parentState: hydroState),
                foregroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foregroundColor'] : null, parentState: hydroState),
                highlightElevation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['highlightElevation'] : null, parentState: hydroState),
                hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
                hoverElevation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverElevation'] : null, parentState: hydroState),
                largeSizeConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['largeSizeConstraints'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
                sizeConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['sizeConstraints'] : null, parentState: hydroState),
                smallSizeConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['smallSizeConstraints'] : null, parentState: hydroState),
                splashColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashColor'] : null, parentState: hydroState)),
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

  _3079.FloatingActionButtonThemeData unwrap() => this;
  _3079.FloatingActionButtonThemeData get vmObject => this;
  @_fac9.override
  _3079.FloatingActionButtonThemeData copyWith(
      {_a643.Color? backgroundColor,
      _fac9.double? disabledElevation,
      _fac9.double? elevation,
      _fac9.bool? enableFeedback,
      _fac9.double? extendedIconLabelSpacing,
      _96d1.EdgeInsetsGeometry? extendedPadding,
      _be2e.BoxConstraints? extendedSizeConstraints,
      _74d0.TextStyle? extendedTextStyle,
      _a643.Color? focusColor,
      _fac9.double? focusElevation,
      _a643.Color? foregroundColor,
      _fac9.double? highlightElevation,
      _a643.Color? hoverColor,
      _fac9.double? hoverElevation,
      _be2e.BoxConstraints? largeSizeConstraints,
      _6be9.ShapeBorder? shape,
      _be2e.BoxConstraints? sizeConstraints,
      _be2e.BoxConstraints? smallSizeConstraints,
      _a643.Color? splashColor}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_3079.FloatingActionButtonThemeData,
            _fac9.dynamic>(
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

void loadFloatingActionButtonThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['floatingActionButtonThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedFloatingActionButtonThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          backgroundColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                  parentState: hydroState),
          disabledElevation: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['disabledElevation']
              : null?.toDouble(),
          elevation: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['elevation']
              : null?.toDouble(),
          enableFeedback: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['enableFeedback']
              : null,
          extendedIconLabelSpacing: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['extendedIconLabelSpacing']
              : null?.toDouble(),
          extendedPadding:
              _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['extendedPadding']
                      : null,
                  parentState: hydroState),
          extendedSizeConstraints:
              _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['extendedSizeConstraints'] : null,
                  parentState: hydroState),
          extendedTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['extendedTextStyle'] : null, parentState: hydroState),
          focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
          focusElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusElevation'] : null?.toDouble(),
          foregroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foregroundColor'] : null, parentState: hydroState),
          highlightElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['highlightElevation'] : null?.toDouble(),
          hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
          hoverElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverElevation'] : null?.toDouble(),
          largeSizeConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['largeSizeConstraints'] : null, parentState: hydroState),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          sizeConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['sizeConstraints'] : null, parentState: hydroState),
          smallSizeConstraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['smallSizeConstraints'] : null, parentState: hydroState),
          splashColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashColor'] : null, parentState: hydroState))
    ];
  });
  table['floatingActionButtonThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _3079.FloatingActionButtonThemeData.lerp(
        _36c2.maybeUnBoxAndBuildArgument<_3079.FloatingActionButtonThemeData?,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
        _36c2.maybeUnBoxAndBuildArgument<_3079.FloatingActionButtonThemeData?,
            _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_3079.FloatingActionButtonThemeData?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_3079.FloatingActionButtonThemeData>(boxer: (
      {required _3079.FloatingActionButtonThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFloatingActionButtonThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
