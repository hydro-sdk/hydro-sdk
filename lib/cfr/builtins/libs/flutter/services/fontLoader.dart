import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;

import 'package:flutter/src/services/font_loader.dart' as _1f81;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFontLoader extends _36c2.VMManagedBox<_1f81.FontLoader> {
  VMManagedFontLoader(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['family'] = vmObject.family;
    table['addFont'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.addFont(_36c2.maybeUnBoxAndBuildArgument<
          _7de1.Future<_7537.ByteData>,
          _7537.ByteData>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['load'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.load(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _1f81.FontLoader vmObject;
}

class RTManagedFontLoader extends _1f81.FontLoader
    implements _36c2.Box<_1f81.FontLoader> {
  RTManagedFontLoader(_fac9.String family$,
      {required this.table, required this.hydroState})
      : super(
          family$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['family'] = _36c2.maybeBoxObject(
        object: this.family, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_addFont'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.addFont(_36c2.maybeUnBoxAndBuildArgument<
          _7de1.Future<_7537.ByteData>,
          _7537.ByteData>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_load'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.load(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_loadFont'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.loadFont(
                _36c2
                    .maybeUnBoxAndBuildArgument<_7537.Uint8List, _fac9.dynamic>(
                        luaCallerArguments[1],
                        parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _1f81.FontLoader unwrap() => this;
  _1f81.FontLoader get vmObject => this;
  @_fac9.override
  void addFont(bytes) {
    _36c2.Closure closure = table["addFont"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<void> load() {
    _36c2.Closure closure = table["load"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _7de1.Future<void> loadFont(list, family) {
    _36c2.Closure closure = table["loadFont"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadFontLoader(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['fontLoader'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedFontLoader(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_1f81.FontLoader>(boxer: (
      {required _1f81.FontLoader vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFontLoader(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
