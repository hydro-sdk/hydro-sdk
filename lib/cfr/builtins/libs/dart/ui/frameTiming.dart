import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedFrameTiming extends VMManagedBox<FrameTiming> {
  VMManagedFrameTiming(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['timestampInMicroseconds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.timestampInMicroseconds(maybeUnBoxEnum(
            values: FramePhase.values, boxedEnum: luaCallerArguments[1])),
      ];
    });
    table['getBuildDuration'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Duration>(
            object: vmObject.buildDuration,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getRasterDuration'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Duration>(
            object: vmObject.rasterDuration,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getVsyncOverhead'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Duration>(
            object: vmObject.vsyncOverhead,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getTotalSpan'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Duration>(
            object: vmObject.totalSpan,
            hydroState: hydroState,
            table: HydroTable()),
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

  final FrameTiming vmObject;
}

void loadFrameTiming(
    {required HydroState hydroState, required HydroTable table}) {
  table['frameTiming'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<FrameTiming>(
          object: FrameTiming(
              buildFinish: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['buildFinish']
                  : null,
              buildStart: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['buildStart']
                  : null,
              rasterFinish: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['rasterFinish']
                  : null,
              rasterStart: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['rasterStart']
                  : null,
              vsyncStart: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['vsyncStart']
                  : null),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  registerBoxer<FrameTiming>(boxer: (
      {required FrameTiming vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFrameTiming(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
