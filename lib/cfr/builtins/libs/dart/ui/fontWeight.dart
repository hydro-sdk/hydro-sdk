import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedFontWeight extends VMManagedBox<FontWeight> {
  VMManagedFontWeight(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['index'] = vmObject.index;
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final FontWeight vmObject;
}

void loadFontWeight(
    {required HydroState hydroState, required HydroTable table}) {
  table['fontWeightW100'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<FontWeight>(
          object: FontWeight.w100, hydroState: hydroState, table: HydroTable())
    ];
  });
  table['fontWeightW200'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<FontWeight>(
          object: FontWeight.w200, hydroState: hydroState, table: HydroTable())
    ];
  });
  table['fontWeightW300'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<FontWeight>(
          object: FontWeight.w300, hydroState: hydroState, table: HydroTable())
    ];
  });
  table['fontWeightW400'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<FontWeight>(
          object: FontWeight.w400, hydroState: hydroState, table: HydroTable())
    ];
  });
  table['fontWeightW500'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<FontWeight>(
          object: FontWeight.w500, hydroState: hydroState, table: HydroTable())
    ];
  });
  table['fontWeightW600'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<FontWeight>(
          object: FontWeight.w600, hydroState: hydroState, table: HydroTable())
    ];
  });
  table['fontWeightW700'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<FontWeight>(
          object: FontWeight.w700, hydroState: hydroState, table: HydroTable())
    ];
  });
  table['fontWeightW800'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<FontWeight>(
          object: FontWeight.w800, hydroState: hydroState, table: HydroTable())
    ];
  });
  table['fontWeightW900'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<FontWeight>(
          object: FontWeight.w900, hydroState: hydroState, table: HydroTable())
    ];
  });
  table['fontWeightLerp'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = FontWeight.lerp(
        maybeUnBoxAndBuildArgument<FontWeight?, dynamic>(luaCallerArguments[1],
            parentState: hydroState),
        maybeUnBoxAndBuildArgument<FontWeight?, dynamic>(luaCallerArguments[2],
            parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        maybeBoxObject<FontWeight?>(
            object: returnValue, hydroState: hydroState, table: HydroTable()),
      ];
    }
    return [];
  });
  registerBoxer<FontWeight>(boxer: (
      {required FontWeight vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFontWeight(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
