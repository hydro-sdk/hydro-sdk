import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/rendering/editable.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTextSelectionPoint extends VMManagedBox<TextSelectionPoint> {
  VMManagedTextSelectionPoint(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['point'] = maybeBoxObject<Offset>(
        object: vmObject.point, hydroState: hydroState, table: HydroTable());
    table['direction'] = TextDirection.values.indexWhere((x) {
      return x == vmObject.direction;
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

  final TextSelectionPoint vmObject;
}

class RTManagedTextSelectionPoint extends TextSelectionPoint
    implements Box<TextSelectionPoint> {
  RTManagedTextSelectionPoint(Offset point$, TextDirection? direction$,
      {required this.table, required this.hydroState})
      : super(
          point$,
          direction$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['point'] = maybeBoxObject<Offset>(
        object: this.point, hydroState: hydroState, table: HydroTable());
    table['direction'] = TextDirection.values.indexWhere((x) {
      return x == this.direction;
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  TextSelectionPoint unwrap() => this;
  TextSelectionPoint get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTextSelectionPoint(
    {required HydroState hydroState, required HydroTable table}) {
  table['textSelectionPoint'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedTextSelectionPoint(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxEnum(
              values: TextDirection.values, boxedEnum: luaCallerArguments[2]),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<TextSelectionPoint>(boxer: (
      {required TextSelectionPoint vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTextSelectionPoint(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
