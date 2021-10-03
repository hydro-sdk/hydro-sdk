import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRRect extends VMManagedBox<RRect> {
  VMManagedRRect(
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
    table['tlRadiusX'] = vmObject.tlRadiusX;
    table['tlRadiusY'] = vmObject.tlRadiusY;
    table['trRadiusX'] = vmObject.trRadiusX;
    table['trRadiusY'] = vmObject.trRadiusY;
    table['brRadiusX'] = vmObject.brRadiusX;
    table['brRadiusY'] = vmObject.brRadiusY;
    table['blRadiusX'] = vmObject.blRadiusX;
    table['blRadiusY'] = vmObject.blRadiusY;
    table['getTlRadius'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Radius>(
            object: vmObject.tlRadius,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getTrRadius'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Radius>(
            object: vmObject.trRadius,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getBrRadius'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Radius>(
            object: vmObject.brRadius,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getBlRadius'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Radius>(
            object: vmObject.blRadius,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['shift'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RRect>(
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
        maybeBoxObject<RRect>(
            object: vmObject.inflate(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['deflate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RRect>(
            object: vmObject.deflate(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
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
    table['getOuterRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.outerRect,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getSafeInnerRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.safeInnerRect,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getMiddleRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.middleRect,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getWideMiddleRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.wideMiddleRect,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getTallMiddleRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.tallMiddleRect,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getIsEmpty'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isEmpty,
      ];
    });
    table['getIsFinite'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isFinite,
      ];
    });
    table['getIsRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isRect,
      ];
    });
    table['getIsStadium'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isStadium,
      ];
    });
    table['getIsEllipse'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isEllipse,
      ];
    });
    table['getIsCircle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isCircle,
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
    table['getHasNaN'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasNaN,
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
    table['scaleRadii'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RRect>(
            object: vmObject.scaleRadii(),
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

  final RRect vmObject;
}

void loadRRect({required HydroState hydroState, required HydroTable table}) {
  table['rRectFromLTRBXY'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<RRect>(
          object: RRect.fromLTRBXY(
              luaCallerArguments[1]?.toDouble(),
              luaCallerArguments[2]?.toDouble(),
              luaCallerArguments[3]?.toDouble(),
              luaCallerArguments[4]?.toDouble(),
              luaCallerArguments[5]?.toDouble(),
              luaCallerArguments[6]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['rRectFromLTRBR'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<RRect>(
          object: RRect.fromLTRBR(
              luaCallerArguments[1]?.toDouble(),
              luaCallerArguments[2]?.toDouble(),
              luaCallerArguments[3]?.toDouble(),
              luaCallerArguments[4]?.toDouble(),
              maybeUnBoxAndBuildArgument<Radius, dynamic>(luaCallerArguments[5],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['rRectFromRectXY'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<RRect>(
          object: RRect.fromRectXY(
              maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              luaCallerArguments[2]?.toDouble(),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['rRectFromRectAndRadius'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<RRect>(
          object: RRect.fromRectAndRadius(
              maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Radius, dynamic>(luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['rRectFromLTRBAndCorners'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<RRect>(
          object: RRect.fromLTRBAndCorners(
              luaCallerArguments[1]?.toDouble(),
              luaCallerArguments[2]?.toDouble(),
              luaCallerArguments[3]?.toDouble(),
              luaCallerArguments[4]?.toDouble(),
              bottomLeft: maybeUnBoxAndBuildArgument<Radius, dynamic>(luaCallerArguments.length >= 6 ? luaCallerArguments[5]['bottomLeft'] : null,
                  parentState: hydroState),
              bottomRight: maybeUnBoxAndBuildArgument<Radius, dynamic>(
                  luaCallerArguments.length >= 6
                      ? luaCallerArguments[5]['bottomRight']
                      : null,
                  parentState: hydroState),
              topLeft: maybeUnBoxAndBuildArgument<Radius, dynamic>(
                  luaCallerArguments.length >= 6 ? luaCallerArguments[5]['topLeft'] : null,
                  parentState: hydroState),
              topRight: maybeUnBoxAndBuildArgument<Radius, dynamic>(luaCallerArguments.length >= 6 ? luaCallerArguments[5]['topRight'] : null, parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['rRectFromRectAndCorners'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<RRect>(
          object: RRect.fromRectAndCorners(maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1], parentState: hydroState),
              bottomLeft: maybeUnBoxAndBuildArgument<Radius, dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['bottomLeft']
                      : null,
                  parentState: hydroState),
              bottomRight: maybeUnBoxAndBuildArgument<Radius, dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['bottomRight']
                      : null,
                  parentState: hydroState),
              topLeft: maybeUnBoxAndBuildArgument<Radius, dynamic>(
                  luaCallerArguments.length >= 3 ? luaCallerArguments[2]['topLeft'] : null,
                  parentState: hydroState),
              topRight: maybeUnBoxAndBuildArgument<Radius, dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['topRight'] : null, parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['rRectLerp'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = RRect.lerp(
        maybeUnBoxAndBuildArgument<RRect?, dynamic>(luaCallerArguments[1],
            parentState: hydroState),
        maybeUnBoxAndBuildArgument<RRect?, dynamic>(luaCallerArguments[2],
            parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        maybeBoxObject<RRect?>(
            object: returnValue, hydroState: hydroState, table: HydroTable()),
      ];
    }
    return [];
  });
  registerBoxer<RRect>(boxer: (
      {required RRect vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRRect(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
