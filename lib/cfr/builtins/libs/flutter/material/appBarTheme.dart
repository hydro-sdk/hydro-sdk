import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/app_bar_theme.dart' as _a931;
import 'package:flutter/src/material/text_theme.dart' as _e1f4;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/services/system_chrome.dart' as _8d60;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/icon_theme_data.dart' as _05d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAppBarTheme extends _36c2.VMManagedBox<_a931.AppBarTheme> {
  VMManagedAppBarTheme(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['brightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == vmObject.brightness;
    });
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['foregroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.foregroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = vmObject.elevation;
    table['shadowColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.shadowColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData?>(
        object: vmObject.iconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actionsIconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData?>(
        object: vmObject.actionsIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textTheme'] = _36c2.maybeBoxObject<_e1f4.TextTheme?>(
        object: vmObject.textTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['centerTitle'] = vmObject.centerTitle;
    table['titleSpacing'] = vmObject.titleSpacing;
    table['toolbarHeight'] = vmObject.toolbarHeight;
    table['toolbarTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.toolbarTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['titleTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.titleTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['systemOverlayStyle'] =
        _36c2.maybeBoxObject<_8d60.SystemUiOverlayStyle?>(
            object: vmObject.systemOverlayStyle,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['backwardsCompatibility'] = vmObject.backwardsCompatibility;
    table['getColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.color;
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
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a931.AppBarTheme>(
            object: vmObject.copyWith(
                actionsIconTheme:
                    _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['actionsIconTheme']
                            : null,
                        parentState: hydroState),
                backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                    parentState: hydroState),
                backwardsCompatibility: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['backwardsCompatibility']
                    : null,
                brightness: _36c2.maybeUnBoxEnum(
                    values: _a643.Brightness.values,
                    boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['brightness'] : null),
                centerTitle: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['centerTitle'] : null,
                color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null, parentState: hydroState),
                elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
                foregroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foregroundColor'] : null, parentState: hydroState),
                iconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconTheme'] : null, parentState: hydroState),
                shadowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
                systemOverlayStyle: _36c2.maybeUnBoxAndBuildArgument<_8d60.SystemUiOverlayStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemOverlayStyle'] : null, parentState: hydroState),
                textTheme: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textTheme'] : null, parentState: hydroState),
                titleSpacing: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['titleSpacing'] : null?.toDouble(),
                titleTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['titleTextStyle'] : null, parentState: hydroState),
                toolbarHeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toolbarHeight'] : null?.toDouble(),
                toolbarTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toolbarTextStyle'] : null, parentState: hydroState)),
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

  final _a931.AppBarTheme vmObject;
}

class RTManagedAppBarTheme extends _a931.AppBarTheme
    implements _36c2.Box<_a931.AppBarTheme> {
  RTManagedAppBarTheme(
      {_05d1.IconThemeData? actionsIconTheme,
      _a643.Color? backgroundColor,
      _fac9.bool? backwardsCompatibility,
      _a643.Brightness? brightness,
      _fac9.bool? centerTitle,
      _a643.Color? color,
      _fac9.double? elevation,
      _a643.Color? foregroundColor,
      _05d1.IconThemeData? iconTheme,
      _a643.Color? shadowColor,
      _6be9.ShapeBorder? shape,
      _8d60.SystemUiOverlayStyle? systemOverlayStyle,
      _e1f4.TextTheme? textTheme,
      _fac9.double? titleSpacing,
      _74d0.TextStyle? titleTextStyle,
      _fac9.double? toolbarHeight,
      _74d0.TextStyle? toolbarTextStyle,
      required this.table,
      required this.hydroState})
      : super(
            actionsIconTheme: actionsIconTheme,
            backgroundColor: backgroundColor,
            backwardsCompatibility: backwardsCompatibility,
            brightness: brightness,
            centerTitle: centerTitle,
            color: color,
            elevation: elevation,
            foregroundColor: foregroundColor,
            iconTheme: iconTheme,
            shadowColor: shadowColor,
            shape: shape,
            systemOverlayStyle: systemOverlayStyle,
            textTheme: textTheme,
            titleSpacing: titleSpacing,
            titleTextStyle: titleTextStyle,
            toolbarHeight: toolbarHeight,
            toolbarTextStyle: toolbarTextStyle) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['brightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == this.brightness;
    });
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['foregroundColor'] = _36c2.maybeBoxObject(
        object: this.foregroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shadowColor'] = _36c2.maybeBoxObject(
        object: this.shadowColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['iconTheme'] = _36c2.maybeBoxObject(
        object: this.iconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actionsIconTheme'] = _36c2.maybeBoxObject(
        object: this.actionsIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textTheme'] = _36c2.maybeBoxObject(
        object: this.textTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['centerTitle'] = _36c2.maybeBoxObject(
        object: this.centerTitle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['titleSpacing'] = _36c2.maybeBoxObject(
        object: this.titleSpacing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toolbarHeight'] = _36c2.maybeBoxObject(
        object: this.toolbarHeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toolbarTextStyle'] = _36c2.maybeBoxObject(
        object: this.toolbarTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['titleTextStyle'] = _36c2.maybeBoxObject(
        object: this.titleTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['systemOverlayStyle'] = _36c2.maybeBoxObject(
        object: this.systemOverlayStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backwardsCompatibility'] = _36c2.maybeBoxObject(
        object: this.backwardsCompatibility,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.color];
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                actionsIconTheme:
                    _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['actionsIconTheme']
                            : null,
                        parentState: hydroState),
                backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                    parentState: hydroState),
                backwardsCompatibility:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backwardsCompatibility'] : null,
                        parentState: hydroState),
                brightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['brightness'] : null),
                centerTitle: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['centerTitle'] : null, parentState: hydroState),
                color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null, parentState: hydroState),
                elevation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null, parentState: hydroState),
                foregroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foregroundColor'] : null, parentState: hydroState),
                iconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconTheme'] : null, parentState: hydroState),
                shadowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
                systemOverlayStyle: _36c2.maybeUnBoxAndBuildArgument<_8d60.SystemUiOverlayStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemOverlayStyle'] : null, parentState: hydroState),
                textTheme: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textTheme'] : null, parentState: hydroState),
                titleSpacing: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['titleSpacing'] : null, parentState: hydroState),
                titleTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['titleTextStyle'] : null, parentState: hydroState),
                toolbarHeight: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toolbarHeight'] : null, parentState: hydroState),
                toolbarTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toolbarTextStyle'] : null, parentState: hydroState)),
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

  _a931.AppBarTheme unwrap() => this;
  _a931.AppBarTheme get vmObject => this;
  @_fac9.override
  _a643.Color? get color {
    _36c2.Closure closure = table["getColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a931.AppBarTheme copyWith(
      {_05d1.IconThemeData? actionsIconTheme,
      _a643.Color? backgroundColor,
      _fac9.bool? backwardsCompatibility,
      _a643.Brightness? brightness,
      _fac9.bool? centerTitle,
      _a643.Color? color,
      _fac9.double? elevation,
      _a643.Color? foregroundColor,
      _05d1.IconThemeData? iconTheme,
      _a643.Color? shadowColor,
      _6be9.ShapeBorder? shape,
      _8d60.SystemUiOverlayStyle? systemOverlayStyle,
      _e1f4.TextTheme? textTheme,
      _fac9.double? titleSpacing,
      _74d0.TextStyle? titleTextStyle,
      _fac9.double? toolbarHeight,
      _74d0.TextStyle? toolbarTextStyle}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_a931.AppBarTheme, _fac9.dynamic>(
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

void loadAppBarTheme(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['appBarTheme'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedAppBarTheme(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          actionsIconTheme:
              _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['actionsIconTheme']
                      : null,
                  parentState: hydroState),
          backgroundColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['backgroundColor']
                      : null,
                  parentState: hydroState),
          backwardsCompatibility: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['backwardsCompatibility']
              : null,
          brightness: _36c2.maybeUnBoxEnum(
              values: _a643.Brightness.values,
              boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['brightness'] : null),
          centerTitle: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['centerTitle'] : null,
          color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null, parentState: hydroState),
          elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
          foregroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foregroundColor'] : null, parentState: hydroState),
          iconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconTheme'] : null, parentState: hydroState),
          shadowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null, parentState: hydroState),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          systemOverlayStyle: _36c2.maybeUnBoxAndBuildArgument<_8d60.SystemUiOverlayStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemOverlayStyle'] : null, parentState: hydroState),
          textTheme: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textTheme'] : null, parentState: hydroState),
          titleSpacing: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['titleSpacing'] : null?.toDouble(),
          titleTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['titleTextStyle'] : null, parentState: hydroState),
          toolbarHeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toolbarHeight'] : null?.toDouble(),
          toolbarTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toolbarTextStyle'] : null, parentState: hydroState))
    ];
  });
  table['appBarThemeOf'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_a931.AppBarTheme>(
          object: _a931.AppBarTheme.of(_36c2.maybeUnBoxAndBuildArgument<
              _e2dc.BuildContext,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['appBarThemeLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_a931.AppBarTheme>(
          object: _a931.AppBarTheme.lerp(
              _36c2.maybeUnBoxAndBuildArgument<_a931.AppBarTheme?,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_a931.AppBarTheme?,
                      _fac9.dynamic>(luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_a931.AppBarTheme>(boxer: (
      {required _a931.AppBarTheme vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAppBarTheme(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
