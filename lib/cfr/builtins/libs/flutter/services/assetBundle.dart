import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;

import 'package:flutter/src/services/asset_bundle.dart' as _136d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAssetBundle extends _36c2.VMManagedBox<_136d.AssetBundle> {
  VMManagedAssetBundle(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['load'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.load(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['loadString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.loadString(luaCallerArguments[1],
                cache: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['cache']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['loadStructuredData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedparser = luaCallerArguments[2];
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.loadStructuredData(
                luaCallerArguments[1],
                (value) => _36c2.maybeUnBoxAndBuildArgument<
                        _7de1.Future<_fac9.dynamic>, _fac9.dynamic>(
                    unpackedparser.dispatch(
                      [luaCallerArguments[0], value],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['evict'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.evict(luaCallerArguments[1]);
      return [];
    });
    table['clear'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.clear();
      return [];
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

  final _136d.AssetBundle vmObject;
}

class RTManagedAssetBundle extends _136d.AssetBundle
    implements _36c2.Box<_136d.AssetBundle> {
  RTManagedAssetBundle({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_load'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: load(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_loadString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.loadString(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                cache:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['cache']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_loadStructuredData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedparser = luaCallerArguments[2];
      return [
        _36c2.maybeBoxObject(
            object: loadStructuredData(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                (value) => _36c2.maybeUnBoxAndBuildArgument<
                        _7de1.Future<_fac9.dynamic>, _fac9.dynamic>(
                    unpackedparser.dispatch(
                      [luaCallerArguments[0], value],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_evict'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.evict(_36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_clear'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.clear();
      return [];
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

  _136d.AssetBundle unwrap() => this;
  _136d.AssetBundle get vmObject => this;
  @_fac9.override
  _7de1.Future<_7537.ByteData> load(key) {
    _36c2.Closure closure = table["load"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_7537.ByteData>,
            _7537.ByteData>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _7de1.Future<_fac9.String> loadString(key, {_fac9.bool cache = true}) {
    _36c2.Closure closure = table["loadString"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.String>, _fac9.String>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _7de1.Future<T> loadStructuredData<T>(key, parser) {
    _36c2.Closure closure = table["loadStructuredData"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<T>, T>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void evict(key) {
    _36c2.Closure closure = table["evict"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void clear() {
    _36c2.Closure closure = table["clear"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadAssetBundle(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['assetBundle'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedAssetBundle(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_136d.AssetBundle>(boxer: (
      {required _136d.AssetBundle vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAssetBundle(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
