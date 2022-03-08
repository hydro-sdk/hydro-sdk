import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/text_theme.dart' as _e1f4;
import 'package:flutter/src/painting/text_style.dart' as _74d0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextTheme extends _36c2.VMManagedBox<_e1f4.TextTheme> {
  VMManagedTextTheme(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['headline1'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.headline1,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headline2'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.headline2,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headline3'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.headline3,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headline4'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.headline4,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headline5'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.headline5,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headline6'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.headline6,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['subtitle1'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.subtitle1,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['subtitle2'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.subtitle2,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bodyText1'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.bodyText1,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bodyText2'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.bodyText2,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['caption'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.caption,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['button'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.button,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overline'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.overline,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e1f4.TextTheme>(
            object: vmObject.copyWith(
                bodyText1: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bodyText1'] : null,
                    parentState: hydroState),
                bodyText2: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['bodyText2']
                        : null,
                    parentState: hydroState),
                button: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['button'] : null,
                    parentState: hydroState),
                caption: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['caption'] : null,
                    parentState: hydroState),
                headline1: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline1'] : null, parentState: hydroState),
                headline2: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline2'] : null, parentState: hydroState),
                headline3: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline3'] : null, parentState: hydroState),
                headline4: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline4'] : null, parentState: hydroState),
                headline5: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline5'] : null, parentState: hydroState),
                headline6: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline6'] : null, parentState: hydroState),
                overline: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overline'] : null, parentState: hydroState),
                subtitle1: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['subtitle1'] : null, parentState: hydroState),
                subtitle2: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['subtitle2'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['merge'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e1f4.TextTheme>(
            object: vmObject.merge(_36c2.maybeUnBoxAndBuildArgument<
                _e1f4.TextTheme?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['apply'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e1f4.TextTheme>(
            object: vmObject.apply(
                bodyColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bodyColor'] : null,
                    parentState: hydroState),
                decoration: _36c2.maybeUnBoxAndBuildArgument<_a643.TextDecoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null,
                    parentState: hydroState),
                decorationColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['decorationColor']
                        : null,
                    parentState: hydroState),
                decorationStyle: _36c2.maybeUnBoxEnum(
                    values: _a643.TextDecorationStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationStyle'] : null),
                displayColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['displayColor'] : null, parentState: hydroState),
                fontFamily: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamily'] : null,
                fontSizeDelta: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontSizeDelta'] : null?.toDouble(),
                fontSizeFactor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontSizeFactor'] : null?.toDouble()),
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

  final _e1f4.TextTheme vmObject;
}

class RTManagedTextTheme extends _e1f4.TextTheme
    implements _36c2.Box<_e1f4.TextTheme> {
  RTManagedTextTheme(
      {_74d0.TextStyle? bodyText1,
      _74d0.TextStyle? bodyText2,
      _74d0.TextStyle? button,
      _74d0.TextStyle? caption,
      _74d0.TextStyle? headline1,
      _74d0.TextStyle? headline2,
      _74d0.TextStyle? headline3,
      _74d0.TextStyle? headline4,
      _74d0.TextStyle? headline5,
      _74d0.TextStyle? headline6,
      _74d0.TextStyle? overline,
      _74d0.TextStyle? subtitle1,
      _74d0.TextStyle? subtitle2,
      required this.table,
      required this.hydroState})
      : super(
            bodyText1: bodyText1,
            bodyText2: bodyText2,
            button: button,
            caption: caption,
            headline1: headline1,
            headline2: headline2,
            headline3: headline3,
            headline4: headline4,
            headline5: headline5,
            headline6: headline6,
            overline: overline,
            subtitle1: subtitle1,
            subtitle2: subtitle2) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['headline1'] = _36c2.maybeBoxObject(
        object: this.headline1,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headline2'] = _36c2.maybeBoxObject(
        object: this.headline2,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headline3'] = _36c2.maybeBoxObject(
        object: this.headline3,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headline4'] = _36c2.maybeBoxObject(
        object: this.headline4,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headline5'] = _36c2.maybeBoxObject(
        object: this.headline5,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headline6'] = _36c2.maybeBoxObject(
        object: this.headline6,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['subtitle1'] = _36c2.maybeBoxObject(
        object: this.subtitle1,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['subtitle2'] = _36c2.maybeBoxObject(
        object: this.subtitle2,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bodyText1'] = _36c2.maybeBoxObject(
        object: this.bodyText1,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bodyText2'] = _36c2.maybeBoxObject(
        object: this.bodyText2,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['caption'] = _36c2.maybeBoxObject(
        object: this.caption,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['button'] = _36c2.maybeBoxObject(
        object: this.button, hydroState: hydroState, table: _36c2.HydroTable());
    table['overline'] = _36c2.maybeBoxObject(
        object: this.overline,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                bodyText1: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bodyText1'] : null,
                    parentState: hydroState),
                bodyText2: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['bodyText2']
                        : null,
                    parentState: hydroState),
                button: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['button'] : null,
                    parentState: hydroState),
                caption: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['caption'] : null,
                    parentState: hydroState),
                headline1: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline1'] : null, parentState: hydroState),
                headline2: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline2'] : null, parentState: hydroState),
                headline3: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline3'] : null, parentState: hydroState),
                headline4: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline4'] : null, parentState: hydroState),
                headline5: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline5'] : null, parentState: hydroState),
                headline6: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline6'] : null, parentState: hydroState),
                overline: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overline'] : null, parentState: hydroState),
                subtitle1: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['subtitle1'] : null, parentState: hydroState),
                subtitle2: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['subtitle2'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_merge'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.merge(_36c2.maybeUnBoxAndBuildArgument<
                _e1f4.TextTheme?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_apply'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.apply(
                bodyColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bodyColor'] : null,
                    parentState: hydroState),
                decoration: _36c2.maybeUnBoxAndBuildArgument<_a643.TextDecoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null,
                    parentState: hydroState),
                decorationColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['decorationColor']
                        : null,
                    parentState: hydroState),
                decorationStyle: _36c2.maybeUnBoxEnum(
                    values: _a643.TextDecorationStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationStyle'] : null),
                displayColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['displayColor'] : null, parentState: hydroState),
                fontFamily: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamily'] : null, parentState: hydroState),
                fontSizeDelta: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontSizeDelta'] : null, parentState: hydroState),
                fontSizeFactor: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontSizeFactor'] : null, parentState: hydroState)),
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

  _e1f4.TextTheme unwrap() => this;
  _e1f4.TextTheme get vmObject => this;
  @_fac9.override
  _e1f4.TextTheme copyWith(
      {_74d0.TextStyle? bodyText1,
      _74d0.TextStyle? bodyText2,
      _74d0.TextStyle? button,
      _74d0.TextStyle? caption,
      _74d0.TextStyle? headline1,
      _74d0.TextStyle? headline2,
      _74d0.TextStyle? headline3,
      _74d0.TextStyle? headline4,
      _74d0.TextStyle? headline5,
      _74d0.TextStyle? headline6,
      _74d0.TextStyle? overline,
      _74d0.TextStyle? subtitle1,
      _74d0.TextStyle? subtitle2}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e1f4.TextTheme merge(other) {
    _36c2.Closure closure = table["merge"];
    return _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e1f4.TextTheme apply(
      {_a643.Color? bodyColor,
      _a643.TextDecoration? decoration,
      _a643.Color? decorationColor,
      _a643.TextDecorationStyle? decorationStyle,
      _a643.Color? displayColor,
      _fac9.String? fontFamily,
      _fac9.double fontSizeDelta = 0.0,
      _fac9.double fontSizeFactor = 1.0}) {
    _36c2.Closure closure = table["apply"];
    return _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme, _fac9.dynamic>(
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

void loadTextTheme(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textTheme'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTextTheme(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          bodyText1:
              _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['bodyText1']
                      : null,
                  parentState: hydroState),
          bodyText2:
              _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['bodyText2']
                      : null,
                  parentState: hydroState),
          button: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['button'] : null,
              parentState: hydroState),
          caption: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['caption'] : null, parentState: hydroState),
          headline1: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline1'] : null, parentState: hydroState),
          headline2: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline2'] : null, parentState: hydroState),
          headline3: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline3'] : null, parentState: hydroState),
          headline4: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline4'] : null, parentState: hydroState),
          headline5: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline5'] : null, parentState: hydroState),
          headline6: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headline6'] : null, parentState: hydroState),
          overline: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overline'] : null, parentState: hydroState),
          subtitle1: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['subtitle1'] : null, parentState: hydroState),
          subtitle2: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['subtitle2'] : null, parentState: hydroState))
    ];
  });
  table['textThemeLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_e1f4.TextTheme>(
          object: _e1f4.TextTheme.lerp(
              _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_e1f4.TextTheme>(boxer: (
      {required _e1f4.TextTheme vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextTheme(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
