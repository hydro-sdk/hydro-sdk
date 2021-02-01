import 'dart:core';
import 'dart:typed_data';

import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedFloat32x4 extends VMManagedBox<Float32x4> {
  VMManagedFloat32x4(
      {@required this.table,
      @required this.vmObject,
      @required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['lessThan'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.lessThan(maybeUnBoxAndBuildArgument<Float32x4>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['lessThanOrEqual'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.lessThanOrEqual(
                maybeUnBoxAndBuildArgument<Float32x4>(args[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['greaterThan'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.greaterThan(maybeUnBoxAndBuildArgument<Float32x4>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['greaterThanOrEqual'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.greaterThanOrEqual(
                maybeUnBoxAndBuildArgument<Float32x4>(args[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['equal'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.equal(maybeUnBoxAndBuildArgument<Float32x4>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['notEqual'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.notEqual(maybeUnBoxAndBuildArgument<Float32x4>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['scale'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.scale(args[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['abs'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.abs(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['clamp'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.clamp(
                maybeUnBoxAndBuildArgument<Float32x4>(args[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Float32x4>(args[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getX'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.x];
    });
    table['getY'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.y];
    });
    table['getZ'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.z];
    });
    table['getW'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.w];
    });
    table['getSignMask'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.signMask];
    });
    table['shuffle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.shuffle(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['shuffleMix'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.shuffleMix(
                maybeUnBoxAndBuildArgument<Float32x4>(args[1],
                    parentState: hydroState),
                args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['withX'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.withX(args[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['withY'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.withY(args[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['withZ'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.withZ(args[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['withW'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.withW(args[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['min'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.min(maybeUnBoxAndBuildArgument<Float32x4>(args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['max'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.max(maybeUnBoxAndBuildArgument<Float32x4>(args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['sqrt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.sqrt(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['reciprocal'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.reciprocal(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['reciprocalSqrt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.reciprocalSqrt(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Float32x4 vmObject;
}

void loadFloat32x4(
    {@required HydroState hydroState, @required HydroTable table}) {
  table['float32x4'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Float32x4>(
          object: Float32x4(args[1]?.toDouble(), args[2]?.toDouble(),
              args[3]?.toDouble(), args[4]?.toDouble()),
          hydroState: hydroState,
          table: args[0])
    ];
  });
  table['float32x4Splat'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Float32x4>(
          object: Float32x4.splat(args[1]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['float32x4Zero'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Float32x4>(
          object: Float32x4.zero(), hydroState: hydroState, table: HydroTable())
    ];
  });
  table['float32x4FromInt32x4Bits'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Float32x4>(
          object: Float32x4.fromInt32x4Bits(maybeUnBoxAndBuildArgument<Int32x4>(
              args[1],
              parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['float32x4FromFloat64x2'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Float32x4>(
          object: Float32x4.fromFloat64x2(maybeUnBoxAndBuildArgument<Float64x2>(
              args[1],
              parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<Float32x4>(boxer: (
      {@required Float32x4 vmObject,
      @required HydroState hydroState,
      @required HydroTable table}) {
    return VMManagedFloat32x4(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
