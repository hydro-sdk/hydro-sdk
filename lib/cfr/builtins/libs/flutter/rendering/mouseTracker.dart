import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/hit_test.dart' as _baac;
import 'package:flutter/src/rendering/mouse_tracker.dart' as _1668;
import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMouseTracker extends _36c2.VMManagedBox<_1668.MouseTracker> {
  VMManagedMouseTracker(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getMouseIsConnected'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.mouseIsConnected,
      ];
    });
    table['updateWithEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedgetResult = luaCallerArguments[2];
      vmObject.updateWithEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          () => _36c2
              .maybeUnBoxAndBuildArgument<_baac.HitTestResult, _fac9.dynamic>(
                  unpackedgetResult.dispatch(
                    [luaCallerArguments[0]],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState));
      return [];
    });
    table['updateAllDevices'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhitTest = luaCallerArguments[1];
      vmObject.updateAllDevices((offset) =>
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestResult, _fac9.dynamic>(
              unpackedhitTest.dispatch(
                [luaCallerArguments[0], offset],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
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

  final _1668.MouseTracker vmObject;
}

class RTManagedMouseTracker extends _1668.MouseTracker
    implements _36c2.Box<_1668.MouseTracker> {
  RTManagedMouseTracker({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getMouseIsConnected'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.mouseIsConnected];
    });
    table['_dart_updateWithEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedgetResult = luaCallerArguments[2];
      super.updateWithEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          () => _36c2
              .maybeUnBoxAndBuildArgument<_baac.HitTestResult, _fac9.dynamic>(
                  unpackedgetResult.dispatch(
                    [luaCallerArguments[0]],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState));
      return [];
    });
    table['_dart_updateAllDevices'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhitTest = luaCallerArguments[1];
      super.updateAllDevices((offset) =>
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestResult, _fac9.dynamic>(
              unpackedhitTest.dispatch(
                [luaCallerArguments[0], offset],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['_dart_addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.addListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.removeListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
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

  _1668.MouseTracker unwrap() => this;
  _1668.MouseTracker get vmObject => this;
  @_fac9.override
  _fac9.bool get mouseIsConnected {
    _36c2.Closure closure = table["getMouseIsConnected"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void updateWithEvent(event, getResult) {
    _36c2.Closure closure = table["updateWithEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void updateAllDevices(hitTest) {
    _36c2.Closure closure = table["updateAllDevices"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fd33.MouseCursor? debugDeviceActiveCursor(device) {
    _36c2.Closure closure = table["debugDeviceActiveCursor"];
    return _36c2.maybeUnBoxAndBuildArgument<_fd33.MouseCursor?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
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

void loadMouseTracker(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['mouseTracker'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedMouseTracker(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_1668.MouseTracker>(boxer: (
      {required _1668.MouseTracker vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMouseTracker(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
