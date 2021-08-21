import 'dart:core';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedFloat64x2 extends VMManagedBox<Float64x2> {
  VMManagedFloat64x2(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['scale'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float64x2>(
            object: vmObject.scale(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['abs'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float64x2>(
            object: vmObject.abs(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['clamp'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float64x2>(
            object: vmObject.clamp(
                maybeUnBoxAndBuildArgument<Float64x2, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Float64x2, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getX'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.x,
      ];
    });
    table['getY'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.y,
      ];
    });
    table['getSignMask'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.signMask,
      ];
    });
    table['withX'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float64x2>(
            object: vmObject.withX(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withY'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float64x2>(
            object: vmObject.withY(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['min'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float64x2>(
            object: vmObject.min(maybeUnBoxAndBuildArgument<Float64x2, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['max'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float64x2>(
            object: vmObject.max(maybeUnBoxAndBuildArgument<Float64x2, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['sqrt'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float64x2>(
            object: vmObject.sqrt(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Float64x2 vmObject;
}

void loadFloat64x2(
    {required HydroState hydroState, required HydroTable table}) {
  table['float64x2'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Float64x2>(
          object: Float64x2(luaCallerArguments[1]?.toDouble(),
              luaCallerArguments[2]?.toDouble()),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  table['float64x2Splat'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Float64x2>(
          object: Float64x2.splat(luaCallerArguments[1]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['float64x2Zero'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Float64x2>(
          object: Float64x2.zero(),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['float64x2FromFloat32x4'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Float64x2>(
          object: Float64x2.fromFloat32x4(
              maybeUnBoxAndBuildArgument<Float32x4, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<Float64x2>(boxer: (
      {required Float64x2 vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFloat64x2(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
