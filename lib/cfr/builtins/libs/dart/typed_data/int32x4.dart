import 'dart:core';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedInt32x4 extends VMManagedBox<Int32x4> {
  VMManagedInt32x4(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
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
        maybeBoxObject<Int32x4>(
            object: vmObject.shuffle(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['shuffleMix'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.shuffleMix(
                maybeUnBoxAndBuildArgument<Int32x4, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withX'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withX(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withY'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withY(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withZ'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withZ(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withW'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withW(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getFlagX'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.flagX,
      ];
    });
    table['getFlagY'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.flagY,
      ];
    });
    table['getFlagZ'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.flagZ,
      ];
    });
    table['getFlagW'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.flagW,
      ];
    });
    table['withFlagX'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withFlagX(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withFlagY'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withFlagY(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withFlagZ'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withFlagZ(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['withFlagW'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4>(
            object: vmObject.withFlagW(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['select'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4>(
            object: vmObject.select(
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
  }

  final HydroTable table;

  final HydroState hydroState;

  final Int32x4 vmObject;
}

void loadInt32x4({required HydroState hydroState, required HydroTable table}) {
  table['int32x4'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Int32x4>(
          object: Int32x4(luaCallerArguments[1], luaCallerArguments[2],
              luaCallerArguments[3], luaCallerArguments[4]),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  table['int32x4Bool'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Int32x4>(
          object: Int32x4.bool(luaCallerArguments[1], luaCallerArguments[2],
              luaCallerArguments[3], luaCallerArguments[4]),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['int32x4FromFloat32x4Bits'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Int32x4>(
          object: Int32x4.fromFloat32x4Bits(
              maybeUnBoxAndBuildArgument<Float32x4, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<Int32x4>(boxer: (
      {required Int32x4 vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedInt32x4(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
