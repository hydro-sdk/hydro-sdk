import 'dart:core';
import 'dart:ui';



import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedRect extends VMManagedBox<Rect?> {
  VMManagedRect(
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
    table!['getWidth'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.width];
    });
    table!['getHeight'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.height];
    });
    table!['getSize'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Size>(
            object: vmObject!.size, hydroState: hydroState!, table: HydroTable())
      ];
    });
    table!['getHasNaN'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.hasNaN];
    });
    table!['getIsInfinite'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.isInfinite];
    });
    table!['getIsFinite'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.isFinite];
    });
    table!['getIsEmpty'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.isEmpty];
    });
    table!['shift'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject!.shift(maybeUnBoxAndBuildArgument<Offset>(args[1],
                parentState: hydroState!)),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['translate'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Rect>(
            object:
                vmObject!.translate(args[1]?.toDouble(), args[2]?.toDouble()),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['inflate'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject!.inflate(args[1]?.toDouble()),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['deflate'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject!.deflate(args[1]?.toDouble()),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['intersect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject!.intersect(maybeUnBoxAndBuildArgument<Rect>(args[1],
                parentState: hydroState!)),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['expandToInclude'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject!.expandToInclude(maybeUnBoxAndBuildArgument<Rect>(
                args[1],
                parentState: hydroState!)),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['overlaps'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.overlaps(
            maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState!))
      ];
    });
    table!['getShortestSide'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.shortestSide];
    });
    table!['getLongestSide'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.longestSide];
    });
    table!['getTopLeft'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject!.topLeft,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getTopCenter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject!.topCenter,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getTopRight'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject!.topRight,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getCenterLeft'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject!.centerLeft,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getCenter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject!.center,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getCenterRight'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject!.centerRight,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getBottomLeft'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject!.bottomLeft,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getBottomCenter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject!.bottomCenter,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['getBottomRight'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject!.bottomRight,
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

  final Rect? vmObject;
}

void loadRect({required HydroState hydroState, required HydroTable table}) {
  table['rectFromLTRB'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Rect>(
          object: Rect.fromLTRB(args[1]?.toDouble(), args[2]?.toDouble(),
              args[3]?.toDouble(), args[4]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['rectFromLTWH'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Rect>(
          object: Rect.fromLTWH(args[1]?.toDouble(), args[2]?.toDouble(),
              args[3]?.toDouble(), args[4]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['rectFromCircle'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Rect>(
          object: Rect.fromCircle(
              center: maybeUnBoxAndBuildArgument<Offset>(args[1]['center'],
                  parentState: hydroState),
              radius: args[1]['radius']?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['rectFromCenter'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Rect>(
          object: Rect.fromCenter(
              center: maybeUnBoxAndBuildArgument<Offset>(args[1]['center'],
                  parentState: hydroState),
              height: args[1]['height']?.toDouble(),
              width: args[1]['width']?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['rectFromPoints'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Rect>(
          object: Rect.fromPoints(
              maybeUnBoxAndBuildArgument<Offset>(args[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Offset>(args[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['rectLerp'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Rect?>(
          object: Rect.lerp(
              maybeUnBoxAndBuildArgument<Rect>(args[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Rect>(args[2],
                  parentState: hydroState),
              args[3]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<Rect>(boxer: (
      {required Rect? vmObject,
      required HydroState? hydroState,
      required HydroTable? table}) {
    return VMManagedRect(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
