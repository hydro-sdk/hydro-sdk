import 'dart:core' as _fac9;

import 'package:flutter/src/painting/image_cache.dart' as _2e0e;
import 'package:flutter/src/painting/image_stream.dart' as _f25c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedImageCache extends _36c2.VMManagedBox<_2e0e.ImageCache> {
  VMManagedImageCache(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getMaximumSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.maximumSize,
      ];
    });
    table['setMaximumSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.maximumSize = (luaCallerArguments[1]);
      return [];
    });
    table['getCurrentSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.currentSize,
      ];
    });
    table['getMaximumSizeBytes'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.maximumSizeBytes,
      ];
    });
    table['setMaximumSizeBytes'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.maximumSizeBytes = (luaCallerArguments[1]);
      return [];
    });
    table['getCurrentSizeBytes'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.currentSizeBytes,
      ];
    });
    table['clear'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.clear();
      return [];
    });
    table['evict'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.evict(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            includeLive: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['includeLive']
                : null),
      ];
    });
    table['putIfAbsent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedloader = luaCallerArguments[2];
      _36c2.Closure? unpackedonError = luaCallerArguments.length >= 4
          ? luaCallerArguments[3]['onError']
          : null;
      final returnValue = vmObject.putIfAbsent(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          () => _36c2.maybeUnBoxAndBuildArgument<_f25c.ImageStreamCompleter,
                  _fac9.dynamic>(
              unpackedloader.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              )[0],
              parentState: hydroState),
          onError: unpackedonError != null
              ? (exception, stackTrace) => unpackedonError.dispatch(
                    [luaCallerArguments[0], exception, stackTrace],
                    parentState: hydroState,
                  )
              : null);
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_f25c.ImageStreamCompleter?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['statusForKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_2e0e.ImageCacheStatus>(
            object: vmObject.statusForKey(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['containsKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.containsKey(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['getLiveImageCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.liveImageCount,
      ];
    });
    table['getPendingImageCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.pendingImageCount,
      ];
    });
    table['clearLiveImages'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.clearLiveImages();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _2e0e.ImageCache vmObject;
}

class RTManagedImageCache extends _2e0e.ImageCache
    implements _36c2.Box<_2e0e.ImageCache> {
  RTManagedImageCache({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getMaximumSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.maximumSize];
    });
    table['_dart_setMaximumSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.maximumSize =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getCurrentSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.currentSize];
    });
    table['_dart_getMaximumSizeBytes'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.maximumSizeBytes];
    });
    table['_dart_setMaximumSizeBytes'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.maximumSizeBytes =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getCurrentSizeBytes'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.currentSizeBytes];
    });
    table['_dart_clear'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.clear();
      return [];
    });
    table['_dart_evict'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.evict(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                includeLive:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['includeLive']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_putIfAbsent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedloader = luaCallerArguments[2];
      _36c2.Closure? unpackedonError = luaCallerArguments.length >= 4
          ? luaCallerArguments[3]['onError']
          : null;
      return [
        _36c2.maybeBoxObject(
            object: super.putIfAbsent(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                () => _36c2.maybeUnBoxAndBuildArgument<
                        _f25c.ImageStreamCompleter, _fac9.dynamic>(
                    unpackedloader.dispatch(
                      [luaCallerArguments[0]],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState),
                onError: unpackedonError != null
                    ? (exception, stackTrace) => unpackedonError.dispatch(
                          [luaCallerArguments[0], exception, stackTrace],
                          parentState: hydroState,
                        )
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_statusForKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.statusForKey(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_containsKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.containsKey(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getLiveImageCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.liveImageCount];
    });
    table['_dart_getPendingImageCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.pendingImageCount];
    });
    table['_dart_clearLiveImages'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.clearLiveImages();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _2e0e.ImageCache unwrap() => this;
  _2e0e.ImageCache get vmObject => this;
  @_fac9.override
  _fac9.int get maximumSize {
    _36c2.Closure closure = table["getMaximumSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set maximumSize(value) {
    _36c2.Closure closure = table["setMaximumSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get currentSize {
    _36c2.Closure closure = table["getCurrentSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get maximumSizeBytes {
    _36c2.Closure closure = table["getMaximumSizeBytes"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set maximumSizeBytes(value) {
    _36c2.Closure closure = table["setMaximumSizeBytes"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get currentSizeBytes {
    _36c2.Closure closure = table["getCurrentSizeBytes"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void clear() {
    _36c2.Closure closure = table["clear"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool evict(key, {_fac9.bool includeLive = true}) {
    _36c2.Closure closure = table["evict"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _f25c.ImageStreamCompleter? putIfAbsent(key, loader,
      {void Function(_fac9.Object exception, _fac9.StackTrace? stackTrace)?
          onError}) {
    _36c2.Closure closure = table["putIfAbsent"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_f25c.ImageStreamCompleter?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _2e0e.ImageCacheStatus statusForKey(key) {
    _36c2.Closure closure = table["statusForKey"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_2e0e.ImageCacheStatus, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool containsKey(key) {
    _36c2.Closure closure = table["containsKey"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get liveImageCount {
    _36c2.Closure closure = table["getLiveImageCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get pendingImageCount {
    _36c2.Closure closure = table["getPendingImageCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void clearLiveImages() {
    _36c2.Closure closure = table["clearLiveImages"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadImageCache(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['imageCache'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedImageCache(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_2e0e.ImageCache>(boxer: (
      {required _2e0e.ImageCache vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedImageCache(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
