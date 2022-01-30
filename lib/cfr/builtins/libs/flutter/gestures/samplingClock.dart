import 'dart:core';

import 'package:flutter/src/gestures/binding.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSamplingClock extends VMManagedBox<SamplingClock> {
  VMManagedSamplingClock(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['now'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DateTime>(
            object: vmObject.now(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['stopwatch'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stopwatch>(
            object: vmObject.stopwatch(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SamplingClock vmObject;
}

class RTManagedSamplingClock extends SamplingClock
    implements Box<SamplingClock> {
  RTManagedSamplingClock({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_now'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DateTime>(
            object: super.now(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_stopwatch'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stopwatch>(
            object: super.stopwatch(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SamplingClock unwrap() => this;
  SamplingClock get vmObject => this;
  @override
  DateTime now() {
    Closure closure = table["now"];
    return maybeUnBoxAndBuildArgument<DateTime, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stopwatch stopwatch() {
    Closure closure = table["stopwatch"];
    return maybeUnBoxAndBuildArgument<Stopwatch, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadSamplingClock(
    {required HydroState hydroState, required HydroTable table}) {
  table['samplingClock'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSamplingClock(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<SamplingClock>(boxer: (
      {required SamplingClock vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSamplingClock(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
