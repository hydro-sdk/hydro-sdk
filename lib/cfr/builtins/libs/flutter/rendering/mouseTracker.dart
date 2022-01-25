import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/src/rendering/mouse_tracker.dart';
import 'package:flutter/src/services/mouse_cursor.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedMouseTracker extends VMManagedBox<MouseTracker> {
  VMManagedMouseTracker(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getMouseIsConnected'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.mouseIsConnected,
      ];
    });
    table['updateWithEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedgetResult = luaCallerArguments[2];
      vmObject.updateWithEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          () => maybeUnBoxAndBuildArgument<HitTestResult, dynamic>(
              unpackedgetResult.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['updateAllDevices'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedhitTest = luaCallerArguments[1];
      vmObject.updateAllDevices(
          (offset) => maybeUnBoxAndBuildArgument<HitTestResult, dynamic>(
              unpackedhitTest.dispatch(
                [luaCallerArguments[0], offset],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['addListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final MouseTracker vmObject;
}

class RTManagedMouseTracker extends MouseTracker implements Box<MouseTracker> {
  RTManagedMouseTracker({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getMouseIsConnected'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.mouseIsConnected];
    });
    table['_dart_updateWithEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedgetResult = luaCallerArguments[2];
      super.updateWithEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          () => maybeUnBoxAndBuildArgument<HitTestResult, dynamic>(
              unpackedgetResult.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['_dart_updateAllDevices'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedhitTest = luaCallerArguments[1];
      super.updateAllDevices(
          (offset) => maybeUnBoxAndBuildArgument<HitTestResult, dynamic>(
              unpackedhitTest.dispatch(
                [luaCallerArguments[0], offset],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['_dart_addListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedlistener = luaCallerArguments[1];
      super.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedlistener = luaCallerArguments[1];
      super.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_notifyListeners'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.notifyListeners();
      return [];
    });
    table['_dart_getHasListeners'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasListeners];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  MouseTracker unwrap() => this;
  MouseTracker get vmObject => this;
  @override
  bool get mouseIsConnected {
    Closure closure = table["getMouseIsConnected"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void updateWithEvent(event, getResult) {
    Closure closure = table["updateWithEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void updateAllDevices(hitTest) {
    Closure closure = table["updateAllDevices"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  MouseCursor? debugDeviceActiveCursor(device) {
    Closure closure = table["debugDeviceActiveCursor"];
    return maybeUnBoxAndBuildArgument<MouseCursor?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void addListener(listener) {
    Closure closure = table["addListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void removeListener(listener) {
    Closure closure = table["removeListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void dispose() {
    super.dispose();
    Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void notifyListeners() {
    Closure closure = table["notifyListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasListeners {
    Closure closure = table["getHasListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadMouseTracker(
    {required HydroState hydroState, required HydroTable table}) {
  table['mouseTracker'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedMouseTracker(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<MouseTracker>(boxer: (
      {required MouseTracker vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedMouseTracker(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
