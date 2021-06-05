import 'dart:core';
import 'dart:ui';



import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedRRect extends VMManagedBox<RRect?> {
  VMManagedRRect(
      {required this.table,
      required this.vmObject,
      required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table!['left'] = vmObject!.left;
    table!['top'] = vmObject!.top;
    table!['right'] = vmObject!.right;
    table!['bottom'] = vmObject!.bottom;
    table!['tlRadiusX'] = vmObject!.tlRadiusX;
    table!['tlRadiusY'] = vmObject!.tlRadiusY;
    table!['trRadiusX'] = vmObject!.trRadiusX;
    table!['trRadiusY'] = vmObject!.trRadiusY;
    table!['brRadiusX'] = vmObject!.brRadiusX;
    table!['brRadiusY'] = vmObject!.brRadiusY;
    table!['blRadiusX'] = vmObject!.blRadiusX;
    table!['blRadiusY'] = vmObject!.blRadiusY;
    table!['getTlRadius'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Radius>(
            object: vmObject!.tlRadius,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getTrRadius'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Radius>(
            object: vmObject!.trRadius,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getBrRadius'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Radius>(
            object: vmObject!.brRadius,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getBlRadius'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Radius>(
            object: vmObject!.blRadius,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['shift'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<RRect>(
            object: vmObject!.shift(maybeUnBoxAndBuildArgument<Offset>(args[1],
                parentState: hydroState!)),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['inflate'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<RRect>(
            object: vmObject!.inflate(args[1]?.toDouble()),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['deflate'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<RRect>(
            object: vmObject!.deflate(args[1]?.toDouble()),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getWidth'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.width];
    });
    table!['getHeight'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.height];
    });
    table!['getOuterRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject!.outerRect,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getSafeInnerRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject!.safeInnerRect,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getMiddleRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject!.middleRect,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getWideMiddleRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject!.wideMiddleRect,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getTallMiddleRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject!.tallMiddleRect,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getIsEmpty'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.isEmpty];
    });
    table!['getIsFinite'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.isFinite];
    });
    table!['getIsRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.isRect];
    });
    table!['getIsStadium'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.isStadium];
    });
    table!['getIsEllipse'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.isEllipse];
    });
    table!['getIsCircle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.isCircle];
    });
    table!['getShortestSide'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.shortestSide];
    });
    table!['getLongestSide'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.longestSide];
    });
    table!['getHasNaN'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.hasNaN];
    });
    table!['getCenter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject!.center,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['scaleRadii'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<RRect>(
            object: vmObject!.scaleRadii(),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['contains'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.contains(maybeUnBoxAndBuildArgument<Offset>(args[1],
            parentState: hydroState!))
      ];
    });
    table!['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
    table!['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
  }

  final HydroTable? table;

  final HydroState? hydroState;

  final RRect? vmObject;
}

void loadRRect({required HydroState hydroState, required HydroTable table}) {
  table['rRectFromLTRBXY'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<RRect>(
          object: RRect.fromLTRBXY(
              args[1]?.toDouble(),
              args[2]?.toDouble(),
              args[3]?.toDouble(),
              args[4]?.toDouble(),
              args[5]?.toDouble(),
              args[6]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['rRectFromLTRBR'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<RRect>(
          object: RRect.fromLTRBR(
              args[1]?.toDouble(),
              args[2]?.toDouble(),
              args[3]?.toDouble(),
              args[4]?.toDouble(),
              maybeUnBoxAndBuildArgument<Radius>(args[5],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['rRectFromRectXY'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<RRect>(
          object: RRect.fromRectXY(
              maybeUnBoxAndBuildArgument<Rect>(args[1],
                  parentState: hydroState),
              args[2]?.toDouble(),
              args[3]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['rRectFromRectAndRadius'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<RRect>(
          object: RRect.fromRectAndRadius(
              maybeUnBoxAndBuildArgument<Rect>(args[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Radius>(args[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['rRectFromLTRBAndCorners'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<RRect>(
          object: RRect.fromLTRBAndCorners(args[1]?.toDouble(),
              args[2]?.toDouble(), args[3]?.toDouble(), args[4]?.toDouble(),
              bottomLeft: maybeUnBoxAndBuildArgument<Radius>(
                  args[5]['bottomLeft'],
                  parentState: hydroState),
              bottomRight: maybeUnBoxAndBuildArgument<Radius>(
                  args[5]['bottomRight'],
                  parentState: hydroState),
              topLeft: maybeUnBoxAndBuildArgument<Radius>(args[5]['topLeft'],
                  parentState: hydroState),
              topRight: maybeUnBoxAndBuildArgument<Radius>(args[5]['topRight'],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['rRectFromRectAndCorners'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<RRect>(
          object: RRect.fromRectAndCorners(
              maybeUnBoxAndBuildArgument<Rect>(args[1],
                  parentState: hydroState),
              bottomLeft: maybeUnBoxAndBuildArgument<Radius>(
                  args[2]['bottomLeft'],
                  parentState: hydroState),
              bottomRight: maybeUnBoxAndBuildArgument<Radius>(
                  args[2]['bottomRight'],
                  parentState: hydroState),
              topLeft: maybeUnBoxAndBuildArgument<Radius>(args[2]['topLeft'],
                  parentState: hydroState),
              topRight: maybeUnBoxAndBuildArgument<Radius>(args[2]['topRight'],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['rRectLerp'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<RRect?>(
          object: RRect.lerp(
              maybeUnBoxAndBuildArgument<RRect>(args[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<RRect>(args[2],
                  parentState: hydroState),
              args[3]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<RRect>(boxer: (
      {required RRect? vmObject,
      required HydroState? hydroState,
      required HydroTable? table}) {
    return VMManagedRRect(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
