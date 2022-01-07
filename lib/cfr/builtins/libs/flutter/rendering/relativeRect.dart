import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/rendering/stack.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRelativeRect extends VMManagedBox<RelativeRect> {
  VMManagedRelativeRect(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['left'] = vmObject.left;
    table['top'] = vmObject.top;
    table['right'] = vmObject.right;
    table['bottom'] = vmObject.bottom;
    table['getHasInsets'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasInsets,
      ];
    });
    table['shift'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RelativeRect>(
            object: vmObject.shift(maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['inflate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RelativeRect>(
            object: vmObject.inflate(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['deflate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RelativeRect>(
            object: vmObject.deflate(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['intersect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RelativeRect>(
            object: vmObject.intersect(
                maybeUnBoxAndBuildArgument<RelativeRect, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['toRect'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.toRect(maybeUnBoxAndBuildArgument<Rect, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['toSize'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.toSize(maybeUnBoxAndBuildArgument<Size, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
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

  final RelativeRect vmObject;
}

void loadRelativeRect(
    {required HydroState hydroState, required HydroTable table}) {
  table['relativeRectFromSize'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<RelativeRect>(
          object: RelativeRect.fromSize(
              maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['relativeRectFromRect'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<RelativeRect>(
          object: RelativeRect.fromRect(
              maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['relativeRectLerp'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = RelativeRect.lerp(
        maybeUnBoxAndBuildArgument<RelativeRect?, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState),
        maybeUnBoxAndBuildArgument<RelativeRect?, dynamic>(
            luaCallerArguments[2],
            parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        maybeBoxObject<RelativeRect?>(
            object: returnValue, hydroState: hydroState, table: HydroTable()),
      ];
    }
    return [];
  });
  registerBoxer<RelativeRect>(boxer: (
      {required RelativeRect vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRelativeRect(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
