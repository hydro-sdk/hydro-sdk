import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/image_cache.dart' as _2e0e;
import 'package:flutter/src/painting/image_provider.dart' as _61fa;
import 'package:flutter/src/painting/image_stream.dart' as _f25c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedNetworkImage extends _36c2.VMManagedBox<_61fa.NetworkImage> {
  VMManagedNetworkImage(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getUrl'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.url,
      ];
    });
    table['getScale'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.scale,
      ];
    });
    table['getHeaders'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.headers;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_fac9.Map?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_f25c.ImageStream>(
            object: vmObject.resolve(_36c2.maybeUnBoxAndBuildArgument<
                _61fa.ImageConfiguration,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['obtainCacheStatus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedhandleError = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['handleError']
          : null;
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.obtainCacheStatus(
                handleError: unpackedhandleError != null
                    ? (exception, stackTrace) => unpackedhandleError.dispatch(
                          [luaCallerArguments[0], exception, stackTrace],
                          parentState: hydroState,
                        )
                    : null,
                configuration: _36c2.maybeUnBoxAndBuildArgument<
                        _61fa.ImageConfiguration, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['configuration']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['evict'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.evict(
                cache: _36c2.maybeUnBoxAndBuildArgument<_2e0e.ImageCache?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['cache']
                        : null,
                    parentState: hydroState),
                configuration: _36c2.maybeUnBoxAndBuildArgument<
                        _61fa.ImageConfiguration, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['configuration']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['obtainKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.obtainKey(_36c2.maybeUnBoxAndBuildArgument<
                _61fa.ImageConfiguration,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _61fa.NetworkImage vmObject;
}

void loadNetworkImage(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['networkImage'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_61fa.NetworkImage>(
          object: _61fa.NetworkImage(luaCallerArguments[1],
              headers: _36c2.maybeUnBoxAndBuildArgument<
                      _fac9.Map<_fac9.String, _fac9.String>?, _fac9.String>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['headers']
                      : null,
                  parentState: hydroState),
              scale: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['scale']
                  : null?.toDouble()),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  _36c2.registerBoxer<_61fa.NetworkImage>(boxer: (
      {required _61fa.NetworkImage vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedNetworkImage(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
