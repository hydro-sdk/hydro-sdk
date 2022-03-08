import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/color_scheme.dart' as _63b9;
import 'package:flutter/src/material/colors.dart' as _4450;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedColorScheme extends _36c2.VMManagedBox<_63b9.ColorScheme> {
  VMManagedColorScheme(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['primary'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.primary,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['primaryVariant'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.primaryVariant,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondary'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.secondary,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondaryVariant'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.secondaryVariant,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['surface'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.surface,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['background'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.background,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['error'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.error,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['onPrimary'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.onPrimary,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['onSecondary'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.onSecondary,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['onSurface'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.onSurface,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['onBackground'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.onBackground,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['onError'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.onError,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['brightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == vmObject.brightness;
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_63b9.ColorScheme>(
            object: vmObject.copyWith(
                background: _36c2
                    .maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['background']
                            : null,
                        parentState: hydroState),
                brightness: _36c2.maybeUnBoxEnum(
                    values: _a643.Brightness.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['brightness']
                        : null),
                error: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['error'] : null,
                    parentState: hydroState),
                onBackground: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onBackground'] : null, parentState: hydroState),
                onError: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onError'] : null, parentState: hydroState),
                onPrimary: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onPrimary'] : null, parentState: hydroState),
                onSecondary: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onSecondary'] : null, parentState: hydroState),
                onSurface: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onSurface'] : null, parentState: hydroState),
                primary: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primary'] : null, parentState: hydroState),
                primaryVariant: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryVariant'] : null, parentState: hydroState),
                secondary: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondary'] : null, parentState: hydroState),
                secondaryVariant: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondaryVariant'] : null, parentState: hydroState),
                surface: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['surface'] : null, parentState: hydroState)),
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

  final _63b9.ColorScheme vmObject;
}

class RTManagedColorScheme extends _63b9.ColorScheme
    implements _36c2.Box<_63b9.ColorScheme> {
  RTManagedColorScheme(
      {required _a643.Color background,
      required _a643.Brightness brightness,
      required _a643.Color error,
      required _a643.Color onBackground,
      required _a643.Color onError,
      required _a643.Color onPrimary,
      required _a643.Color onSecondary,
      required _a643.Color onSurface,
      required _a643.Color primary,
      required _a643.Color primaryVariant,
      required _a643.Color secondary,
      required _a643.Color secondaryVariant,
      required _a643.Color surface,
      required this.table,
      required this.hydroState})
      : super(
            background: background,
            brightness: brightness,
            error: error,
            onBackground: onBackground,
            onError: onError,
            onPrimary: onPrimary,
            onSecondary: onSecondary,
            onSurface: onSurface,
            primary: primary,
            primaryVariant: primaryVariant,
            secondary: secondary,
            secondaryVariant: secondaryVariant,
            surface: surface) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['primary'] = _36c2.maybeBoxObject(
        object: this.primary,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['primaryVariant'] = _36c2.maybeBoxObject(
        object: this.primaryVariant,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondary'] = _36c2.maybeBoxObject(
        object: this.secondary,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondaryVariant'] = _36c2.maybeBoxObject(
        object: this.secondaryVariant,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['surface'] = _36c2.maybeBoxObject(
        object: this.surface,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['background'] = _36c2.maybeBoxObject(
        object: this.background,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['error'] = _36c2.maybeBoxObject(
        object: this.error, hydroState: hydroState, table: _36c2.HydroTable());
    table['onPrimary'] = _36c2.maybeBoxObject(
        object: this.onPrimary,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['onSecondary'] = _36c2.maybeBoxObject(
        object: this.onSecondary,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['onSurface'] = _36c2.maybeBoxObject(
        object: this.onSurface,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['onBackground'] = _36c2.maybeBoxObject(
        object: this.onBackground,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['onError'] = _36c2.maybeBoxObject(
        object: this.onError,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['brightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == this.brightness;
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                background: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['background']
                        : null,
                    parentState: hydroState),
                brightness: _36c2.maybeUnBoxEnum(
                    values: _a643.Brightness.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['brightness']
                        : null),
                error: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['error'] : null,
                    parentState: hydroState),
                onBackground: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onBackground'] : null,
                    parentState: hydroState),
                onError: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onError'] : null, parentState: hydroState),
                onPrimary: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onPrimary'] : null, parentState: hydroState),
                onSecondary: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onSecondary'] : null, parentState: hydroState),
                onSurface: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onSurface'] : null, parentState: hydroState),
                primary: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primary'] : null, parentState: hydroState),
                primaryVariant: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryVariant'] : null, parentState: hydroState),
                secondary: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondary'] : null, parentState: hydroState),
                secondaryVariant: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondaryVariant'] : null, parentState: hydroState),
                surface: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['surface'] : null, parentState: hydroState)),
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

  _63b9.ColorScheme unwrap() => this;
  _63b9.ColorScheme get vmObject => this;
  @_fac9.override
  _63b9.ColorScheme copyWith(
      {_a643.Color? background,
      _a643.Brightness? brightness,
      _a643.Color? error,
      _a643.Color? onBackground,
      _a643.Color? onError,
      _a643.Color? onPrimary,
      _a643.Color? onSecondary,
      _a643.Color? onSurface,
      _a643.Color? primary,
      _a643.Color? primaryVariant,
      _a643.Color? secondary,
      _a643.Color? secondaryVariant,
      _a643.Color? surface}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_63b9.ColorScheme, _fac9.dynamic>(
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

void loadColorScheme(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['colorScheme'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedColorScheme(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          background: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['background']
                  : null,
              parentState: hydroState),
          brightness: _36c2.maybeUnBoxEnum(
              values: _a643.Brightness.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['brightness']
                  : null),
          error: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['error'] : null,
              parentState: hydroState),
          onBackground:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onBackground'] : null,
                  parentState: hydroState),
          onError: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onError'] : null,
              parentState: hydroState),
          onPrimary: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onPrimary'] : null, parentState: hydroState),
          onSecondary: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onSecondary'] : null, parentState: hydroState),
          onSurface: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onSurface'] : null, parentState: hydroState),
          primary: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primary'] : null, parentState: hydroState),
          primaryVariant: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryVariant'] : null, parentState: hydroState),
          secondary: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondary'] : null, parentState: hydroState),
          secondaryVariant: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondaryVariant'] : null, parentState: hydroState),
          surface: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['surface'] : null, parentState: hydroState))
    ];
  });
  table['colorSchemeFromSwatch'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_63b9.ColorScheme>(
          object: _63b9.ColorScheme.fromSwatch(
              accentColor:
                  _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['accentColor'] : null,
                      parentState: hydroState),
              backgroundColor:
                  _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                      parentState: hydroState),
              brightness: _36c2.maybeUnBoxEnum(
                  values: _a643.Brightness.values,
                  boxedEnum: luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['brightness']
                      : null),
              cardColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cardColor'] : null,
                  parentState: hydroState),
              errorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorColor'] : null, parentState: hydroState),
              primaryColorDark: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColorDark'] : null, parentState: hydroState),
              primarySwatch: _36c2.maybeUnBoxAndBuildArgument<_4450.MaterialColor, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primarySwatch'] : null, parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['colorSchemeLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_63b9.ColorScheme>(
          object: _63b9.ColorScheme.lerp(
              _36c2
                  .maybeUnBoxAndBuildArgument<_63b9.ColorScheme, _fac9.dynamic>(
                      luaCallerArguments[1],
                      parentState: hydroState),
              _36c2
                  .maybeUnBoxAndBuildArgument<_63b9.ColorScheme, _fac9.dynamic>(
                      luaCallerArguments[2],
                      parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_63b9.ColorScheme>(boxer: (
      {required _63b9.ColorScheme vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedColorScheme(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
