import 'dart:core';

import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/resampler.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPointerEventResampler
    extends VMManagedBox<PointerEventResampler> {
  VMManagedPointerEventResampler(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['addEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addEvent(maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['sample'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[3];
      vmObject.sample(
          maybeUnBoxAndBuildArgument<Duration, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Duration, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          (event) => unpackedcallback.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ));
      return [];
    });
    table['stop'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      vmObject.stop((event) => unpackedcallback.dispatch(
            [luaCallerArguments[0], event],
            parentState: hydroState,
          ));
      return [];
    });
    table['getHasPendingEvents'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasPendingEvents,
      ];
    });
    table['getIsTracked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isTracked,
      ];
    });
    table['getIsDown'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isDown,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final PointerEventResampler vmObject;
}

class RTManagedPointerEventResampler extends PointerEventResampler
    implements Box<PointerEventResampler> {
  RTManagedPointerEventResampler(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_addEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addEvent(maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_sample'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[3];
      super.sample(
          maybeUnBoxAndBuildArgument<Duration, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Duration, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          (event) => unpackedcallback.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_stop'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      super.stop((event) => unpackedcallback.dispatch(
            [luaCallerArguments[0], event],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_getHasPendingEvents'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasPendingEvents];
    });
    table['_dart_getIsTracked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isTracked];
    });
    table['_dart_getIsDown'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isDown];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  PointerEventResampler unwrap() => this;
  PointerEventResampler get vmObject => this;
  @override
  void addEvent(event) {
    Closure closure = table["addEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void sample(sampleTime, nextSampleTime, callback) {
    Closure closure = table["sample"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void stop(callback) {
    Closure closure = table["stop"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasPendingEvents {
    Closure closure = table["getHasPendingEvents"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isTracked {
    Closure closure = table["getIsTracked"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isDown {
    Closure closure = table["getIsDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPointerEventResampler(
    {required HydroState hydroState, required HydroTable table}) {
  table['pointerEventResampler'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedPointerEventResampler(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<PointerEventResampler>(boxer: (
      {required PointerEventResampler vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPointerEventResampler(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
