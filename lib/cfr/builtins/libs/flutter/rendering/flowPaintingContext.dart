import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/rendering/flow.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedFlowPaintingContext extends VMManagedBox<FlowPaintingContext> {
  VMManagedFlowPaintingContext(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.size, hydroState: hydroState, table: HydroTable()),
      ];
    });
    table['getChildCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.childCount,
      ];
    });
    table['getChildSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.getChildSize(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          maybeBoxObject<Size?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['paintChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.paintChild(luaCallerArguments[1],
          opacity: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['opacity']
              : null?.toDouble(),
          transform: maybeUnBoxAndBuildArgument<Matrix4, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['transform']
                  : null,
              parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final FlowPaintingContext vmObject;
}

void loadFlowPaintingContext(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<FlowPaintingContext>(boxer: (
      {required FlowPaintingContext vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFlowPaintingContext(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
