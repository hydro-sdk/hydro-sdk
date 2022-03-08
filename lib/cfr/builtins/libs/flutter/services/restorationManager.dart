import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/services/restoration.dart' as _6d4f;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRestorationManager
    extends _36c2.VMManagedBox<_6d4f.RestorationManager> {
  VMManagedRestorationManager(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getRootBucket'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.rootBucket,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getIsReplacing'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isReplacing,
      ];
    });
    table['flushData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.flushData();
      return [];
    });
    table['addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
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

  final _6d4f.RestorationManager vmObject;
}

class RTManagedRestorationManager extends _6d4f.RestorationManager
    implements _36c2.Box<_6d4f.RestorationManager> {
  RTManagedRestorationManager({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_initChannels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.initChannels();
      return [];
    });
    table['_dart_getRootBucket'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.rootBucket];
    });
    table['_dart_getIsReplacing'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isReplacing];
    });
    table['_dart_handleRestorationUpdateFromEngine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleRestorationUpdateFromEngine(
          data:
              _36c2.maybeUnBoxAndBuildArgument<_7537.Uint8List?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['data']
                      : null,
                  parentState: hydroState),
          enabled: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['enabled']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_sendToEngine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.sendToEngine(_36c2.maybeUnBoxAndBuildArgument<
                _7537.Uint8List,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_scheduleSerializationFor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.scheduleSerializationFor(_36c2.maybeUnBoxAndBuildArgument<
          _6d4f.RestorationBucket,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_unscheduleSerializationFor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.unscheduleSerializationFor(_36c2.maybeUnBoxAndBuildArgument<
          _6d4f.RestorationBucket,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_flushData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.flushData();
      return [];
    });
    table['_dart_addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_notifyListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.notifyListeners();
      return [];
    });
    table['_dart_getHasListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasListeners];
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
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _6d4f.RestorationManager unwrap() => this;
  _6d4f.RestorationManager get vmObject => this;
  @_fac9.override
  void initChannels() {
    _36c2.Closure closure = table["initChannels"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<_6d4f.RestorationBucket?> get rootBucket {
    _36c2.Closure closure = table["getRootBucket"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _7de1.Future<_6d4f.RestorationBucket?>, _6d4f.RestorationBucket?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get isReplacing {
    _36c2.Closure closure = table["getIsReplacing"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handleRestorationUpdateFromEngine(
      {required _7537.Uint8List? data, required _fac9.bool enabled}) {
    _36c2.Closure closure = table["handleRestorationUpdateFromEngine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<void> sendToEngine(encodedData) {
    _36c2.Closure closure = table["sendToEngine"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void scheduleSerializationFor(bucket) {
    _36c2.Closure closure = table["scheduleSerializationFor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void unscheduleSerializationFor(bucket) {
    _36c2.Closure closure = table["unscheduleSerializationFor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void flushData() {
    _36c2.Closure closure = table["flushData"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addListener(listener) {
    _36c2.Closure closure = table["addListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeListener(listener) {
    _36c2.Closure closure = table["removeListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void notifyListeners() {
    _36c2.Closure closure = table["notifyListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get hasListeners {
    _36c2.Closure closure = table["getHasListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRestorationManager(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['restorationManager'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRestorationManager(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_6d4f.RestorationManager>(boxer: (
      {required _6d4f.RestorationManager vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRestorationManager(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
