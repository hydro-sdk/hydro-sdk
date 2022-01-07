import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/rendering/viewport.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRevealedOffset extends VMManagedBox<RevealedOffset> {
  VMManagedRevealedOffset(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['offset'] = vmObject.offset;
    table['rect'] = maybeBoxObject<Rect>(
        object: vmObject.rect, hydroState: hydroState, table: HydroTable());
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final RevealedOffset vmObject;
}

class RTManagedRevealedOffset extends RevealedOffset
    implements Box<RevealedOffset> {
  RTManagedRevealedOffset(
      {required double offset,
      required Rect rect,
      required this.table,
      required this.hydroState})
      : super(offset: offset, rect: rect) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['offset'] = this.offset;
    table['rect'] = maybeBoxObject<Rect>(
        object: this.rect, hydroState: hydroState, table: HydroTable());
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  RevealedOffset unwrap() => this;
  RevealedOffset get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRevealedOffset(
    {required HydroState hydroState, required HydroTable table}) {
  table['revealedOffset'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedRevealedOffset(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          offset: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['offset']
              : null?.toDouble(),
          rect: maybeUnBoxAndBuildArgument<Rect, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['rect']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<RevealedOffset>(boxer: (
      {required RevealedOffset vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRevealedOffset(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
