import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRect extends VMManagedBox<Rect> {
  VMManagedRect(
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
    table['getWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.width,
      ];
    });
    table['getHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.height,
      ];
    });
    table['getSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.size, hydroState: hydroState, table: HydroTable()),
      ];
    });
    table['getHasNaN'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasNaN,
      ];
    });
    table['getIsInfinite'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isInfinite,
      ];
    });
    table['getIsFinite'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isFinite,
      ];
    });
    table['getIsEmpty'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isEmpty,
      ];
    });
    table['shift'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.shift(maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['translate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.translate(luaCallerArguments[1]?.toDouble(),
                luaCallerArguments[2]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['inflate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.inflate(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['deflate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.deflate(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['intersect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.intersect(
                maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['expandToInclude'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.expandToInclude(
                maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['overlaps'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.overlaps(maybeUnBoxAndBuildArgument<Rect, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['getShortestSide'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.shortestSide,
      ];
    });
    table['getLongestSide'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.longestSide,
      ];
    });
    table['getTopLeft'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.topLeft,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getTopCenter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.topCenter,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getTopRight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.topRight,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getCenterLeft'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.centerLeft,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getCenter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.center,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getCenterRight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.centerRight,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getBottomLeft'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.bottomLeft,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getBottomCenter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.bottomCenter,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getBottomRight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.bottomRight,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['contains'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.contains(maybeUnBoxAndBuildArgument<Offset, dynamic>(
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

  final Rect vmObject;
}

void loadRect({required HydroState hydroState, required HydroTable table}) {
  table['rectFromLTRB'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Rect>(
          object: Rect.fromLTRB(
              luaCallerArguments[1]?.toDouble(),
              luaCallerArguments[2]?.toDouble(),
              luaCallerArguments[3]?.toDouble(),
              luaCallerArguments[4]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['rectFromLTWH'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Rect>(
          object: Rect.fromLTWH(
              luaCallerArguments[1]?.toDouble(),
              luaCallerArguments[2]?.toDouble(),
              luaCallerArguments[3]?.toDouble(),
              luaCallerArguments[4]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['rectFromCircle'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Rect>(
          object: Rect.fromCircle(
              center: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['center']
                      : null,
                  parentState: hydroState),
              radius: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['radius']
                  : null?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['rectFromCenter'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Rect>(
          object: Rect.fromCenter(
              center: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['center']
                      : null,
                  parentState: hydroState),
              height: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['height']
                  : null?.toDouble(),
              width: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['width']
                  : null?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['rectFromPoints'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Rect>(
          object: Rect.fromPoints(
              maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['rectLerp'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = Rect.lerp(
        maybeUnBoxAndBuildArgument<Rect?, dynamic>(luaCallerArguments[1],
            parentState: hydroState),
        maybeUnBoxAndBuildArgument<Rect?, dynamic>(luaCallerArguments[2],
            parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        maybeBoxObject<Rect?>(
            object: returnValue, hydroState: hydroState, table: HydroTable()),
      ];
    }
    return [];
  });
  registerBoxer<Rect>(boxer: (
      {required Rect vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRect(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
