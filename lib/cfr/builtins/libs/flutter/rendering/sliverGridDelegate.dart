import 'dart:core';

import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverGridDelegate extends VMManagedBox<SliverGridDelegate> {
  VMManagedSliverGridDelegate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SliverGridLayout>(
            object: vmObject.getLayout(
                maybeUnBoxAndBuildArgument<SliverConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['shouldRelayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRelayout(
            maybeUnBoxAndBuildArgument<SliverGridDelegate, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SliverGridDelegate vmObject;
}

void loadSliverGridDelegate(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<SliverGridDelegate>(boxer: (
      {required SliverGridDelegate vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverGridDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
