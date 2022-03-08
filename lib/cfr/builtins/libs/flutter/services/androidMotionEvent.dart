import 'dart:core' as _fac9;

import 'package:flutter/src/services/platform_views.dart' as _40e3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAndroidMotionEvent
    extends _36c2.VMManagedBox<_40e3.AndroidMotionEvent> {
  VMManagedAndroidMotionEvent(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['downTime'] = vmObject.downTime;
    table['eventTime'] = vmObject.eventTime;
    table['action'] = vmObject.action;
    table['pointerCount'] = vmObject.pointerCount;
    table['pointerProperties'] =
        _36c2.maybeBoxObject<_fac9.List<_40e3.AndroidPointerProperties>>(
            object: vmObject.pointerProperties,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['pointerCoords'] =
        _36c2.maybeBoxObject<_fac9.List<_40e3.AndroidPointerCoords>>(
            object: vmObject.pointerCoords,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['metaState'] = vmObject.metaState;
    table['buttonState'] = vmObject.buttonState;
    table['xPrecision'] = vmObject.xPrecision;
    table['yPrecision'] = vmObject.yPrecision;
    table['deviceId'] = vmObject.deviceId;
    table['edgeFlags'] = vmObject.edgeFlags;
    table['source'] = vmObject.source;
    table['flags'] = vmObject.flags;
    table['motionEventId'] = vmObject.motionEventId;
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _40e3.AndroidMotionEvent vmObject;
}

class RTManagedAndroidMotionEvent extends _40e3.AndroidMotionEvent
    implements _36c2.Box<_40e3.AndroidMotionEvent> {
  RTManagedAndroidMotionEvent(
      {required _fac9.int action,
      required _fac9.int buttonState,
      required _fac9.int deviceId,
      required _fac9.int downTime,
      required _fac9.int edgeFlags,
      required _fac9.int eventTime,
      required _fac9.int flags,
      required _fac9.int metaState,
      required _fac9.int motionEventId,
      required _fac9.List<_40e3.AndroidPointerCoords> pointerCoords,
      required _fac9.int pointerCount,
      required _fac9.List<_40e3.AndroidPointerProperties> pointerProperties,
      required _fac9.int source,
      required _fac9.double xPrecision,
      required _fac9.double yPrecision,
      required this.table,
      required this.hydroState})
      : super(
            action: action,
            buttonState: buttonState,
            deviceId: deviceId,
            downTime: downTime,
            edgeFlags: edgeFlags,
            eventTime: eventTime,
            flags: flags,
            metaState: metaState,
            motionEventId: motionEventId,
            pointerCoords: pointerCoords,
            pointerCount: pointerCount,
            pointerProperties: pointerProperties,
            source: source,
            xPrecision: xPrecision,
            yPrecision: yPrecision) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['downTime'] = _36c2.maybeBoxObject(
        object: this.downTime,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['eventTime'] = _36c2.maybeBoxObject(
        object: this.eventTime,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['action'] = _36c2.maybeBoxObject(
        object: this.action, hydroState: hydroState, table: _36c2.HydroTable());
    table['pointerCount'] = _36c2.maybeBoxObject(
        object: this.pointerCount,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pointerProperties'] = _36c2.maybeBoxObject(
        object: this.pointerProperties,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pointerCoords'] = _36c2.maybeBoxObject(
        object: this.pointerCoords,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['metaState'] = _36c2.maybeBoxObject(
        object: this.metaState,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['buttonState'] = _36c2.maybeBoxObject(
        object: this.buttonState,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['xPrecision'] = _36c2.maybeBoxObject(
        object: this.xPrecision,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['yPrecision'] = _36c2.maybeBoxObject(
        object: this.yPrecision,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['deviceId'] = _36c2.maybeBoxObject(
        object: this.deviceId,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['edgeFlags'] = _36c2.maybeBoxObject(
        object: this.edgeFlags,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['source'] = _36c2.maybeBoxObject(
        object: this.source, hydroState: hydroState, table: _36c2.HydroTable());
    table['flags'] = _36c2.maybeBoxObject(
        object: this.flags, hydroState: hydroState, table: _36c2.HydroTable());
    table['motionEventId'] = _36c2.maybeBoxObject(
        object: this.motionEventId,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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

  _40e3.AndroidMotionEvent unwrap() => this;
  _40e3.AndroidMotionEvent get vmObject => this;
  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadAndroidMotionEvent(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['androidMotionEvent'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedAndroidMotionEvent(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          action: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['action']
              : null,
          buttonState: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['buttonState']
              : null,
          deviceId: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['deviceId']
              : null,
          downTime: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['downTime']
              : null,
          edgeFlags: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['edgeFlags']
              : null,
          eventTime: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['eventTime']
              : null,
          flags: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['flags']
              : null,
          metaState: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['metaState']
              : null,
          motionEventId: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['motionEventId']
              : null,
          pointerCoords: _36c2
              .maybeUnBoxAndBuildArgument<_fac9.List<_40e3.AndroidPointerCoords>, _40e3.AndroidPointerCoords>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['pointerCoords']
                      : null,
                  parentState: hydroState),
          pointerCount: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['pointerCount']
              : null,
          pointerProperties: _36c2.maybeUnBoxAndBuildArgument<
                  _fac9.List<_40e3.AndroidPointerProperties>,
                  _40e3.AndroidPointerProperties>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pointerProperties'] : null,
              parentState: hydroState),
          source: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['source'] : null,
          xPrecision: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['xPrecision'] : null?.toDouble(),
          yPrecision: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['yPrecision'] : null?.toDouble())
    ];
  });
  _36c2.registerBoxer<_40e3.AndroidMotionEvent>(boxer: (
      {required _40e3.AndroidMotionEvent vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAndroidMotionEvent(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
