import 'dart:core';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedFloat32x4 extends VMManagedBox<Float32x4> {
  VMManagedFloat32x4(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['lessThan'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.lessThan(
                maybeUnBoxAndBuildArgument<Float32x4, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['lessThanOrEqual'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.lessThanOrEqual(
                maybeUnBoxAndBuildArgument<Float32x4, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['greaterThan'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.greaterThan(
                maybeUnBoxAndBuildArgument<Float32x4, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['greaterThanOrEqual'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.greaterThanOrEqual(
                maybeUnBoxAndBuildArgument<Float32x4, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['equal'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.equal(
                maybeUnBoxAndBuildArgument<Float32x4, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['notEqual'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.notEqual(
                maybeUnBoxAndBuildArgument<Float32x4, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['scale'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.scale(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['abs'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.abs(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['clamp'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.clamp(
                maybeUnBoxAndBuildArgument<Float32x4, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Float32x4, dynamic>(
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
    table['getZ'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.z,
      ];
    });
    table['getW'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.w,
      ];
    });
    table['getSignMask'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.signMask,
      ];
    });
    table['shuffle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.shuffle(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['shuffleMix'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.shuffleMix(
                maybeUnBoxAndBuildArgument<Float32x4, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withX'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.withX(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withY'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.withY(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withZ'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.withZ(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withW'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.withW(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['min'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.min(maybeUnBoxAndBuildArgument<Float32x4, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['max'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.max(maybeUnBoxAndBuildArgument<Float32x4, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['sqrt'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.sqrt(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['reciprocal'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.reciprocal(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['reciprocalSqrt'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.reciprocalSqrt(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Float32x4 vmObject;
}

void loadFloat32x4(
    {required HydroState hydroState, required HydroTable table}) {
  table['float32x4'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Float32x4>(
          object: Float32x4(
              luaCallerArguments[1]?.toDouble(),
              luaCallerArguments[2]?.toDouble(),
              luaCallerArguments[3]?.toDouble(),
              luaCallerArguments[4]?.toDouble()),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  table['float32x4Splat'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Float32x4>(
          object: Float32x4.splat(luaCallerArguments[1]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['float32x4Zero'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Float32x4>(
          object: Float32x4.zero(),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['float32x4FromInt32x4Bits'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Float32x4>(
          object: Float32x4.fromInt32x4Bits(
              maybeUnBoxAndBuildArgument<Int32x4, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['float32x4FromFloat64x2'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Float32x4>(
          object: Float32x4.fromFloat64x2(
              maybeUnBoxAndBuildArgument<Float64x2, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<Float32x4>(boxer: (
      {required Float32x4 vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFloat32x4(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
