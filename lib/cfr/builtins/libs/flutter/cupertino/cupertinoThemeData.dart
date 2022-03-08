import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/cupertino/text_theme.dart' as _1bc7;
import 'package:flutter/src/cupertino/theme.dart' as _2b5f;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoThemeData
    extends _36c2.VMManagedBox<_2b5f.CupertinoThemeData> {
  VMManagedCupertinoThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['brightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == vmObject.brightness;
    });
    table['primaryColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.primaryColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['primaryContrastingColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.primaryContrastingColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textTheme'] = _36c2.maybeBoxObject<_1bc7.CupertinoTextThemeData?>(
        object: vmObject.textTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['barBackgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.barBackgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scaffoldBackgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.scaffoldBackgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getPrimaryColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.primaryColor,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getPrimaryContrastingColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.primaryContrastingColor,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getTextTheme'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_1bc7.CupertinoTextThemeData>(
            object: vmObject.textTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getBarBackgroundColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.barBackgroundColor,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getScaffoldBackgroundColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.scaffoldBackgroundColor,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['noDefault'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_2b5f.NoDefaultCupertinoThemeData>(
            object: vmObject.noDefault(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['resolveFrom'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_2b5f.CupertinoThemeData>(
            object: vmObject.resolveFrom(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_2b5f.CupertinoThemeData>(
            object: vmObject.copyWith(
                barBackgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['barBackgroundColor']
                            : null,
                        parentState: hydroState),
                brightness: _36c2.maybeUnBoxEnum(
                    values: _a643.Brightness.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['brightness']
                        : null),
                primaryColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColor'] : null,
                        parentState: hydroState),
                primaryContrastingColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryContrastingColor'] : null, parentState: hydroState),
                scaffoldBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scaffoldBackgroundColor'] : null, parentState: hydroState),
                textTheme: _36c2.maybeUnBoxAndBuildArgument<_1bc7.CupertinoTextThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textTheme'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
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
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _2b5f.CupertinoThemeData vmObject;
}

class RTManagedCupertinoThemeData extends _2b5f.CupertinoThemeData
    implements _36c2.Box<_2b5f.CupertinoThemeData> {
  RTManagedCupertinoThemeData(
      {_a643.Color? barBackgroundColor,
      _a643.Brightness? brightness,
      _a643.Color? primaryColor,
      _a643.Color? primaryContrastingColor,
      _a643.Color? scaffoldBackgroundColor,
      _1bc7.CupertinoTextThemeData? textTheme,
      required this.table,
      required this.hydroState})
      : super(
            barBackgroundColor: barBackgroundColor,
            brightness: brightness,
            primaryColor: primaryColor,
            primaryContrastingColor: primaryContrastingColor,
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            textTheme: textTheme) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['brightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == this.brightness;
    });
    table['primaryColor'] = _36c2.maybeBoxObject(
        object: this.primaryColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['primaryContrastingColor'] = _36c2.maybeBoxObject(
        object: this.primaryContrastingColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textTheme'] = _36c2.maybeBoxObject(
        object: this.textTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['barBackgroundColor'] = _36c2.maybeBoxObject(
        object: this.barBackgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scaffoldBackgroundColor'] = _36c2.maybeBoxObject(
        object: this.scaffoldBackgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getPrimaryColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.primaryColor];
    });
    table['_dart_getPrimaryContrastingColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.primaryContrastingColor];
    });
    table['_dart_getTextTheme'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textTheme];
    });
    table['_dart_getBarBackgroundColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.barBackgroundColor];
    });
    table['_dart_getScaffoldBackgroundColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.scaffoldBackgroundColor];
    });
    table['_dart_noDefault'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.noDefault(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_resolveFrom'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.resolveFrom(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                barBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['barBackgroundColor']
                        : null,
                    parentState: hydroState),
                brightness: _36c2.maybeUnBoxEnum(
                    values: _a643.Brightness.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['brightness']
                        : null),
                primaryColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColor'] : null,
                    parentState: hydroState),
                primaryContrastingColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryContrastingColor'] : null,
                    parentState: hydroState),
                scaffoldBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scaffoldBackgroundColor'] : null, parentState: hydroState),
                textTheme: _36c2.maybeUnBoxAndBuildArgument<_1bc7.CupertinoTextThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textTheme'] : null, parentState: hydroState)),
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
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _2b5f.CupertinoThemeData unwrap() => this;
  _2b5f.CupertinoThemeData get vmObject => this;
  @_fac9.override
  _a643.Color get primaryColor {
    _36c2.Closure closure = table["getPrimaryColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color get primaryContrastingColor {
    _36c2.Closure closure = table["getPrimaryContrastingColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _1bc7.CupertinoTextThemeData get textTheme {
    _36c2.Closure closure = table["getTextTheme"];
    return _36c2.maybeUnBoxAndBuildArgument<_1bc7.CupertinoTextThemeData,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color get barBackgroundColor {
    _36c2.Closure closure = table["getBarBackgroundColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color get scaffoldBackgroundColor {
    _36c2.Closure closure = table["getScaffoldBackgroundColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _2b5f.NoDefaultCupertinoThemeData noDefault() {
    _36c2.Closure closure = table["noDefault"];
    return _36c2.maybeUnBoxAndBuildArgument<_2b5f.NoDefaultCupertinoThemeData,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _2b5f.CupertinoThemeData resolveFrom(context) {
    _36c2.Closure closure = table["resolveFrom"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_2b5f.CupertinoThemeData, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _2b5f.CupertinoThemeData copyWith(
      {_a643.Color? barBackgroundColor,
      _a643.Brightness? brightness,
      _a643.Color? primaryColor,
      _a643.Color? primaryContrastingColor,
      _a643.Color? scaffoldBackgroundColor,
      _1bc7.CupertinoTextThemeData? textTheme}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_2b5f.CupertinoThemeData, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
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

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadCupertinoThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['cupertinoThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCupertinoThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          barBackgroundColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['barBackgroundColor']
                      : null,
                  parentState: hydroState),
          brightness: _36c2.maybeUnBoxEnum(
              values: _a643.Brightness.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['brightness']
                  : null),
          primaryColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColor'] : null,
                  parentState: hydroState),
          primaryContrastingColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryContrastingColor'] : null,
                  parentState: hydroState),
          scaffoldBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scaffoldBackgroundColor'] : null, parentState: hydroState),
          textTheme: _36c2.maybeUnBoxAndBuildArgument<_1bc7.CupertinoTextThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textTheme'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_2b5f.CupertinoThemeData>(boxer: (
      {required _2b5f.CupertinoThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCupertinoThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
