import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/system_chrome.dart' as _8d60;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSystemUiOverlayStyle
    extends _36c2.VMManagedBox<_8d60.SystemUiOverlayStyle> {
  VMManagedSystemUiOverlayStyle(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['systemNavigationBarColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.systemNavigationBarColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['systemNavigationBarDividerColor'] =
        _36c2.maybeBoxObject<_a643.Color?>(
            object: vmObject.systemNavigationBarDividerColor,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['systemNavigationBarIconBrightness'] =
        _a643.Brightness.values.indexWhere((x) {
      return x == vmObject.systemNavigationBarIconBrightness;
    });
    table['systemNavigationBarContrastEnforced'] =
        vmObject.systemNavigationBarContrastEnforced;
    table['statusBarColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.statusBarColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['statusBarBrightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == vmObject.statusBarBrightness;
    });
    table['statusBarIconBrightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == vmObject.statusBarIconBrightness;
    });
    table['systemStatusBarContrastEnforced'] =
        vmObject.systemStatusBarContrastEnforced;
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8d60.SystemUiOverlayStyle>(
            object: vmObject.copyWith(
                statusBarBrightness: _36c2.maybeUnBoxEnum(
                    values: _a643.Brightness.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['statusBarBrightness']
                        : null),
                statusBarColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['statusBarColor']
                        : null,
                    parentState: hydroState),
                statusBarIconBrightness: _36c2.maybeUnBoxEnum(
                    values: _a643.Brightness.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['statusBarIconBrightness']
                        : null),
                systemNavigationBarColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemNavigationBarColor'] : null,
                    parentState: hydroState),
                systemNavigationBarContrastEnforced: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemNavigationBarContrastEnforced'] : null,
                systemNavigationBarDividerColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemNavigationBarDividerColor'] : null, parentState: hydroState),
                systemNavigationBarIconBrightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemNavigationBarIconBrightness'] : null),
                systemStatusBarContrastEnforced: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemStatusBarContrastEnforced'] : null),
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

  final _8d60.SystemUiOverlayStyle vmObject;
}

class RTManagedSystemUiOverlayStyle extends _8d60.SystemUiOverlayStyle
    implements _36c2.Box<_8d60.SystemUiOverlayStyle> {
  RTManagedSystemUiOverlayStyle(
      {_a643.Brightness? statusBarBrightness,
      _a643.Color? statusBarColor,
      _a643.Brightness? statusBarIconBrightness,
      _a643.Color? systemNavigationBarColor,
      _fac9.bool? systemNavigationBarContrastEnforced,
      _a643.Color? systemNavigationBarDividerColor,
      _a643.Brightness? systemNavigationBarIconBrightness,
      _fac9.bool? systemStatusBarContrastEnforced,
      required this.table,
      required this.hydroState})
      : super(
            statusBarBrightness: statusBarBrightness,
            statusBarColor: statusBarColor,
            statusBarIconBrightness: statusBarIconBrightness,
            systemNavigationBarColor: systemNavigationBarColor,
            systemNavigationBarContrastEnforced:
                systemNavigationBarContrastEnforced,
            systemNavigationBarDividerColor: systemNavigationBarDividerColor,
            systemNavigationBarIconBrightness:
                systemNavigationBarIconBrightness,
            systemStatusBarContrastEnforced: systemStatusBarContrastEnforced) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['systemNavigationBarColor'] = _36c2.maybeBoxObject(
        object: this.systemNavigationBarColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['systemNavigationBarDividerColor'] = _36c2.maybeBoxObject(
        object: this.systemNavigationBarDividerColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['systemNavigationBarIconBrightness'] =
        _a643.Brightness.values.indexWhere((x) {
      return x == this.systemNavigationBarIconBrightness;
    });
    table['systemNavigationBarContrastEnforced'] = _36c2.maybeBoxObject(
        object: this.systemNavigationBarContrastEnforced,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['statusBarColor'] = _36c2.maybeBoxObject(
        object: this.statusBarColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['statusBarBrightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == this.statusBarBrightness;
    });
    table['statusBarIconBrightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == this.statusBarIconBrightness;
    });
    table['systemStatusBarContrastEnforced'] = _36c2.maybeBoxObject(
        object: this.systemStatusBarContrastEnforced,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                statusBarBrightness: _36c2.maybeUnBoxEnum(
                    values: _a643.Brightness.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['statusBarBrightness']
                        : null),
                statusBarColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['statusBarColor']
                        : null,
                    parentState: hydroState),
                statusBarIconBrightness: _36c2.maybeUnBoxEnum(
                    values: _a643.Brightness.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['statusBarIconBrightness']
                        : null),
                systemNavigationBarColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemNavigationBarColor'] : null,
                    parentState: hydroState),
                systemNavigationBarContrastEnforced: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemNavigationBarContrastEnforced'] : null, parentState: hydroState),
                systemNavigationBarDividerColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemNavigationBarDividerColor'] : null, parentState: hydroState),
                systemNavigationBarIconBrightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemNavigationBarIconBrightness'] : null),
                systemStatusBarContrastEnforced: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemStatusBarContrastEnforced'] : null, parentState: hydroState)),
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

  _8d60.SystemUiOverlayStyle unwrap() => this;
  _8d60.SystemUiOverlayStyle get vmObject => this;
  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _8d60.SystemUiOverlayStyle copyWith(
      {_a643.Brightness? statusBarBrightness,
      _a643.Color? statusBarColor,
      _a643.Brightness? statusBarIconBrightness,
      _a643.Color? systemNavigationBarColor,
      _fac9.bool? systemNavigationBarContrastEnforced,
      _a643.Color? systemNavigationBarDividerColor,
      _a643.Brightness? systemNavigationBarIconBrightness,
      _fac9.bool? systemStatusBarContrastEnforced}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_8d60.SystemUiOverlayStyle, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSystemUiOverlayStyle(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['systemUiOverlayStyle'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSystemUiOverlayStyle(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          statusBarBrightness: _36c2.maybeUnBoxEnum(
              values: _a643.Brightness.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['statusBarBrightness']
                  : null),
          statusBarColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['statusBarColor'] : null,
              parentState: hydroState),
          statusBarIconBrightness: _36c2.maybeUnBoxEnum(
              values: _a643.Brightness.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['statusBarIconBrightness']
                  : null),
          systemNavigationBarColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['systemNavigationBarColor']
                  : null,
              parentState: hydroState),
          systemNavigationBarContrastEnforced: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['systemNavigationBarContrastEnforced']
              : null,
          systemNavigationBarDividerColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemNavigationBarDividerColor'] : null,
                  parentState: hydroState),
          systemNavigationBarIconBrightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemNavigationBarIconBrightness'] : null),
          systemStatusBarContrastEnforced: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemStatusBarContrastEnforced'] : null)
    ];
  });
  _36c2.registerBoxer<_8d60.SystemUiOverlayStyle>(boxer: (
      {required _8d60.SystemUiOverlayStyle vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSystemUiOverlayStyle(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
