import 'dart:core';

import 'package:flutter/src/rendering/sliver_grid.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverGridLayout extends VMManagedBox<SliverGridLayout> {
  VMManagedSliverGridLayout(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getMinChildIndexForScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject
            .getMinChildIndexForScrollOffset(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getMaxChildIndexForScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject
            .getMaxChildIndexForScrollOffset(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getGeometryForChildIndex'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SliverGridGeometry>(
            object: vmObject.getGeometryForChildIndex(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['computeMaxScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.computeMaxScrollOffset(luaCallerArguments[1]),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SliverGridLayout vmObject;
}

void loadSliverGridLayout(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<SliverGridLayout>(boxer: (
      {required SliverGridLayout vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverGridLayout(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
