import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/gesture_settings.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedDeviceGestureSettings
    extends VMManagedBox<DeviceGestureSettings> {
  VMManagedDeviceGestureSettings(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['touchSlop'] = vmObject.touchSlop;
    table['getPanSlop'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.panSlop;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final DeviceGestureSettings vmObject;
}

class RTManagedDeviceGestureSettings extends DeviceGestureSettings
    implements Box<DeviceGestureSettings> {
  RTManagedDeviceGestureSettings(
      {double? touchSlop, required this.table, required this.hydroState})
      : super(touchSlop: touchSlop) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['touchSlop'] = this.touchSlop;
    table['_dart_getPanSlop'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.panSlop];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  DeviceGestureSettings unwrap() => this;
  DeviceGestureSettings get vmObject => this;
  @override
  double? get panSlop {
    Closure closure = table["getPanSlop"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDeviceGestureSettings(
    {required HydroState hydroState, required HydroTable table}) {
  table['deviceGestureSettings'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedDeviceGestureSettings(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          touchSlop: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['touchSlop']
              : null?.toDouble())
    ];
  });
  table['deviceGestureSettingsFromWindow'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<DeviceGestureSettings>(
          object: DeviceGestureSettings.fromWindow(
              maybeUnBoxAndBuildArgument<SingletonFlutterWindow, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<DeviceGestureSettings>(boxer: (
      {required DeviceGestureSettings vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDeviceGestureSettings(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
