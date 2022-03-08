import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/widgets/localizations.dart' as _a483;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLocalizationsDelegate
    extends _36c2.VMManagedBox<_a483.LocalizationsDelegate<_fac9.dynamic>> {
  VMManagedLocalizationsDelegate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['isSupported'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isSupported(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Locale, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['load'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.load(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Locale, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['shouldReload'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldReload(_36c2.maybeUnBoxAndBuildArgument<
            _a483.LocalizationsDelegate<_fac9.dynamic>,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['getType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Type>(
            object: vmObject.type,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
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

  final _a483.LocalizationsDelegate<_fac9.dynamic> vmObject;
}

class RTManagedLocalizationsDelegate extends _a483.LocalizationsDelegate
    implements _36c2.Box<_a483.LocalizationsDelegate> {
  RTManagedLocalizationsDelegate(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_isSupported'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: isSupported(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Locale, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_load'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: load(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Locale, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_shouldReload'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: shouldReload(_36c2.maybeUnBoxAndBuildArgument<
                _a483.LocalizationsDelegate<_fac9.dynamic>,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.type];
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

  _a483.LocalizationsDelegate unwrap() => this;
  _a483.LocalizationsDelegate get vmObject => this;
  @_fac9.override
  _fac9.bool isSupported(locale) {
    _36c2.Closure closure = table["isSupported"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<_fac9.dynamic> load(locale) {
    _36c2.Closure closure = table["load"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.dynamic>, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool shouldReload(old) {
    _36c2.Closure closure = table["shouldReload"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.Type get type {
    _36c2.Closure closure = table["getType"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Type, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadLocalizationsDelegate(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['localizationsDelegate'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedLocalizationsDelegate(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_a483.LocalizationsDelegate>(boxer: (
      {required _a483.LocalizationsDelegate vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedLocalizationsDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
