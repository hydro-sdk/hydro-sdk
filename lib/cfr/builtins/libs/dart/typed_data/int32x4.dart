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

class VMManagedInt32x4 extends VMManagedBox<Int32x4> {
  VMManagedInt32x4(
      {@required this.table,
      @required this.vmObject,
      @required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
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
        maybeBoxObject<Int32x4>(
            object: vmObject.shuffle(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['shuffleMix'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.shuffleMix(
                maybeUnBoxAndBuildArgument<Int32x4>(args[1],
                    parentState: hydroState),
                args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['withX'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withX(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['withY'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withY(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['withZ'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withZ(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['withW'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withW(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getFlagX'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.flagX];
    });
    table['getFlagY'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.flagY];
    });
    table['getFlagZ'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.flagZ];
    });
    table['getFlagW'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.flagW];
    });
    table['withFlagX'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withFlagX(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['withFlagY'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withFlagY(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['withFlagZ'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withFlagZ(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['withFlagW'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withFlagW(args[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['select'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.select(
                maybeUnBoxAndBuildArgument<Float32x4>(args[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Float32x4>(args[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Int32x4 vmObject;
}

void loadInt32x4(
    {@required HydroState hydroState, @required HydroTable table}) {
  table['int32x4'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Int32x4>(
          object: Int32x4(args[1], args[2], args[3], args[4]),
          hydroState: hydroState,
          table: args[0])
    ];
  });
  table['int32x4Bool'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Int32x4>(
          object: Int32x4.bool(args[1], args[2], args[3], args[4]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['int32x4FromFloat32x4Bits'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Int32x4>(
          object: Int32x4.fromFloat32x4Bits(
              maybeUnBoxAndBuildArgument<Float32x4>(args[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<Int32x4>(boxer: (
      {@required Int32x4 vmObject,
      @required HydroState hydroState,
      @required HydroTable table}) {
    return VMManagedInt32x4(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
