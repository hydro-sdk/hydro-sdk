import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter/src/rendering/editable.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRenderEditablePainter
    extends VMManagedBox<RenderEditablePainter> {
  VMManagedRenderEditablePainter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['shouldRepaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRepaint(
            maybeUnBoxAndBuildArgument<RenderEditablePainter?, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['paint'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.paint(
          maybeUnBoxAndBuildArgument<Canvas, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<RenderEditable, dynamic>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['addListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final RenderEditablePainter vmObject;
}

void loadRenderEditablePainter(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<RenderEditablePainter>(boxer: (
      {required RenderEditablePainter vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRenderEditablePainter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
