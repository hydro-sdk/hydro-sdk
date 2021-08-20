import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTextDecoration extends VMManagedBox<TextDecoration> {
  VMManagedTextDecoration(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['contains'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.contains(maybeUnBoxAndBuildArgument<TextDecoration, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
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

  final TextDecoration vmObject;
}

void loadTextDecoration(
    {required HydroState hydroState, required HydroTable table}) {
  table['textDecorationNone'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<TextDecoration>(
          object: TextDecoration.none,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['textDecorationUnderline'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<TextDecoration>(
          object: TextDecoration.underline,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['textDecorationOverline'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<TextDecoration>(
          object: TextDecoration.overline,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['textDecorationLineThrough'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<TextDecoration>(
          object: TextDecoration.lineThrough,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['textDecorationCombine'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<TextDecoration>(
          object: TextDecoration.combine(
              maybeUnBoxAndBuildArgument<List<TextDecoration>, TextDecoration>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<TextDecoration>(boxer: (
      {required TextDecoration vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTextDecoration(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
