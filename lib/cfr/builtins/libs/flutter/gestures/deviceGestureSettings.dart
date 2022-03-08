import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/gesture_settings.dart' as _352d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDeviceGestureSettings
    extends _36c2.VMManagedBox<_352d.DeviceGestureSettings> {
  VMManagedDeviceGestureSettings(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['touchSlop'] = vmObject.touchSlop;
    table['getPanSlop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.panSlop;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _352d.DeviceGestureSettings vmObject;
}

class RTManagedDeviceGestureSettings extends _352d.DeviceGestureSettings
    implements _36c2.Box<_352d.DeviceGestureSettings> {
  RTManagedDeviceGestureSettings(
      {_fac9.double? touchSlop, required this.table, required this.hydroState})
      : super(touchSlop: touchSlop) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['touchSlop'] = _36c2.maybeBoxObject(
        object: this.touchSlop,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getPanSlop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.panSlop];
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _352d.DeviceGestureSettings unwrap() => this;
  _352d.DeviceGestureSettings get vmObject => this;
  @_fac9.override
  _fac9.double? get panSlop {
    _36c2.Closure closure = table["getPanSlop"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
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
}

void loadDeviceGestureSettings(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['deviceGestureSettings'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedDeviceGestureSettings(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          touchSlop: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['touchSlop']
              : null?.toDouble())
    ];
  });
  table['deviceGestureSettingsFromWindow'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_352d.DeviceGestureSettings>(
          object: _352d.DeviceGestureSettings.fromWindow(
              _36c2.maybeUnBoxAndBuildArgument<_a643.SingletonFlutterWindow,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_352d.DeviceGestureSettings>(boxer: (
      {required _352d.DeviceGestureSettings vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDeviceGestureSettings(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
