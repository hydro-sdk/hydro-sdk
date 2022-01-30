import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/converter.dart';
import 'package:flutter/src/gestures/events.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPointerEventConverter
    extends VMManagedBox<PointerEventConverter> {
  VMManagedPointerEventConverter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final HydroTable table;

  final HydroState hydroState;

  final PointerEventConverter vmObject;
}

void loadPointerEventConverter(
    {required HydroState hydroState, required HydroTable table}) {
  table['pointerEventConverterExpand'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Iterable>(
          object: PointerEventConverter.expand(
              maybeUnBoxAndBuildArgument<Iterable<PointerData>, PointerData>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              luaCallerArguments[2]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<PointerEventConverter>(boxer: (
      {required PointerEventConverter vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPointerEventConverter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
