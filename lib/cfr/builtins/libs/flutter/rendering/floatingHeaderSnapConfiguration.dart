import 'dart:core';

import 'package:flutter/src/animation/curves.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';
import 'package:flutter/src/scheduler/ticker.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedFloatingHeaderSnapConfiguration
    extends VMManagedBox<FloatingHeaderSnapConfiguration> {
  VMManagedFloatingHeaderSnapConfiguration(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['vsync'] = maybeBoxObject<TickerProvider?>(
        object: vmObject.vsync, hydroState: hydroState, table: HydroTable());
    table['curve'] = maybeBoxObject<Curve>(
        object: vmObject.curve, hydroState: hydroState, table: HydroTable());
    table['duration'] = maybeBoxObject<Duration>(
        object: vmObject.duration, hydroState: hydroState, table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  final FloatingHeaderSnapConfiguration vmObject;
}

class RTManagedFloatingHeaderSnapConfiguration
    extends FloatingHeaderSnapConfiguration
    implements Box<FloatingHeaderSnapConfiguration> {
  RTManagedFloatingHeaderSnapConfiguration(
      {required Curve curve,
      required Duration duration,
      TickerProvider? vsync,
      required this.table,
      required this.hydroState})
      : super(curve: curve, duration: duration, vsync: vsync) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['vsync'] = maybeBoxObject<TickerProvider?>(
        object: this.vsync, hydroState: hydroState, table: HydroTable());
    table['curve'] = maybeBoxObject<Curve>(
        object: this.curve, hydroState: hydroState, table: HydroTable());
    table['duration'] = maybeBoxObject<Duration>(
        object: this.duration, hydroState: hydroState, table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  FloatingHeaderSnapConfiguration unwrap() => this;
  FloatingHeaderSnapConfiguration get vmObject => this;
}

void loadFloatingHeaderSnapConfiguration(
    {required HydroState hydroState, required HydroTable table}) {
  table['floatingHeaderSnapConfiguration'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedFloatingHeaderSnapConfiguration(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          curve: maybeUnBoxAndBuildArgument<Curve, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['curve']
                  : null,
              parentState: hydroState),
          duration: maybeUnBoxAndBuildArgument<Duration, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['duration']
                  : null,
              parentState: hydroState),
          vsync: maybeUnBoxAndBuildArgument<TickerProvider?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['vsync']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<FloatingHeaderSnapConfiguration>(boxer: (
      {required FloatingHeaderSnapConfiguration vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFloatingHeaderSnapConfiguration(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
