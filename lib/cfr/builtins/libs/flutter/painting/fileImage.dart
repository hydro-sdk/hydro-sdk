import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:io' as _81fb;
import 'dart:typed_data' as _7537;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/image_cache.dart' as _2e0e;
import 'package:flutter/src/painting/image_provider.dart' as _61fa;
import 'package:flutter/src/painting/image_stream.dart' as _f25c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFileImage extends _36c2.VMManagedBox<_61fa.FileImage> {
  VMManagedFileImage(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['file'] = _36c2.maybeBoxObject<_81fb.File>(
        object: vmObject.file,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scale'] = vmObject.scale;
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
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _61fa.FileImage vmObject;
}

class RTManagedFileImage extends _61fa.FileImage
    implements _36c2.Box<_61fa.FileImage> {
  RTManagedFileImage(_81fb.File file$,
      {required _fac9.double scale,
      required this.table,
      required this.hydroState})
      : super(file$, scale: scale) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['file'] = _36c2.maybeBoxObject(
        object: this.file, hydroState: hydroState, table: _36c2.HydroTable());
    table['scale'] = _36c2.maybeBoxObject(
        object: this.scale, hydroState: hydroState, table: _36c2.HydroTable());

    table['_dart_obtainKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.obtainKey(_36c2.maybeUnBoxAndBuildArgument<
                _61fa.ImageConfiguration,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
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
    table['_dart_resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.resolve(_36c2.maybeUnBoxAndBuildArgument<
                _61fa.ImageConfiguration,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_createStream'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createStream(_36c2.maybeUnBoxAndBuildArgument<
                _61fa.ImageConfiguration,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_obtainCacheStatus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedhandleError = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['handleError']
          : null;
      return [
        _36c2.maybeBoxObject(
            object: super.obtainCacheStatus(
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
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_resolveStreamForKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhandleError = luaCallerArguments[4];
      super.resolveStreamForKey(
          _36c2.maybeUnBoxAndBuildArgument<_61fa.ImageConfiguration,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_f25c.ImageStream, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_61fa.FileImage, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          (exception, stackTrace) => unpackedhandleError.dispatch(
                [luaCallerArguments[0], exception, stackTrace],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_evict'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.evict(
                cache: _36c2
                    .maybeUnBoxAndBuildArgument<_2e0e.ImageCache?, _fac9.dynamic>(
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
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _61fa.FileImage unwrap() => this;
  _61fa.FileImage get vmObject => this;
  @_fac9.override
  _7de1.Future<_61fa.FileImage> obtainKey(configuration) {
    _36c2.Closure closure = table["obtainKey"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_61fa.FileImage>,
            _61fa.FileImage>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _f25c.ImageStream createStream(configuration) {
    _36c2.Closure closure = table["createStream"];
    return _36c2.maybeUnBoxAndBuildArgument<_f25c.ImageStream, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _7de1.Future<_2e0e.ImageCacheStatus?> obtainCacheStatus(
      {void Function(_fac9.Object exception, _fac9.StackTrace? stackTrace)?
          handleError,
      required _61fa.ImageConfiguration configuration}) {
    _36c2.Closure closure = table["obtainCacheStatus"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _7de1.Future<_2e0e.ImageCacheStatus?>, _2e0e.ImageCacheStatus?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void resolveStreamForKey(configuration, stream, key, handleError) {
    _36c2.Closure closure = table["resolveStreamForKey"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<_fac9.bool> evict(
      {_2e0e.ImageCache? cache,
      _61fa.ImageConfiguration configuration =
          _61fa.ImageConfiguration.empty}) {
    _36c2.Closure closure = table["evict"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }
}

void loadFileImage(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['fileImage'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedFileImage(
          _36c2.maybeUnBoxAndBuildArgument<_81fb.File, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState,
          scale: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['scale']
              : null?.toDouble())
    ];
  });
  _36c2.registerBoxer<_61fa.FileImage>(boxer: (
      {required _61fa.FileImage vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFileImage(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
