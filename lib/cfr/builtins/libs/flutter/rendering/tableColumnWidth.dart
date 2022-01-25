import 'dart:core';

import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/table.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTableColumnWidth extends VMManagedBox<TableColumnWidth> {
  VMManagedTableColumnWidth(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['minIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.minIntrinsicWidth(
            maybeUnBoxAndBuildArgument<Iterable<RenderBox>, RenderBox>(
                luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2]?.toDouble()),
      ];
    });
    table['maxIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.maxIntrinsicWidth(
            maybeUnBoxAndBuildArgument<Iterable<RenderBox>, RenderBox>(
                luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2]?.toDouble()),
      ];
    });
    table['flex'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.flex(
          maybeUnBoxAndBuildArgument<Iterable<RenderBox>, RenderBox>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
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

  final TableColumnWidth vmObject;
}

class RTManagedTableColumnWidth extends TableColumnWidth
    implements Box<TableColumnWidth> {
  RTManagedTableColumnWidth({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_minIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        minIntrinsicWidth(
            maybeUnBoxAndBuildArgument<Iterable<RenderBox>, RenderBox>(
                luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2]?.toDouble())
      ];
    });
    table['_dart_maxIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maxIntrinsicWidth(
            maybeUnBoxAndBuildArgument<Iterable<RenderBox>, RenderBox>(
                luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2]?.toDouble())
      ];
    });
    table['_dart_flex'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.flex(maybeUnBoxAndBuildArgument<Iterable<RenderBox>, RenderBox>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  TableColumnWidth unwrap() => this;
  TableColumnWidth get vmObject => this;
  @override
  double minIntrinsicWidth(cells, containerWidth) {
    Closure closure = table["minIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double maxIntrinsicWidth(cells, containerWidth) {
    Closure closure = table["maxIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double? flex(cells) {
    Closure closure = table["flex"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTableColumnWidth(
    {required HydroState hydroState, required HydroTable table}) {
  table['tableColumnWidth'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedTableColumnWidth(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<TableColumnWidth>(boxer: (
      {required TableColumnWidth vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTableColumnWidth(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
