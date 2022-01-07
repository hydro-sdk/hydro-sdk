import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/rendering/custom_paint.dart';
import 'package:flutter/src/semantics/semantics.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedCustomPainterSemantics
    extends VMManagedBox<CustomPainterSemantics> {
  VMManagedCustomPainterSemantics(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['key'] = maybeBoxObject<Key?>(
        object: vmObject.key, hydroState: hydroState, table: HydroTable());
    table['rect'] = maybeBoxObject<Rect>(
        object: vmObject.rect, hydroState: hydroState, table: HydroTable());
    table['transform'] = maybeBoxObject<Matrix4?>(
        object: vmObject.transform,
        hydroState: hydroState,
        table: HydroTable());
    table['properties'] = maybeBoxObject<SemanticsProperties>(
        object: vmObject.properties,
        hydroState: hydroState,
        table: HydroTable());
    table['tags'] = maybeBoxObject<Set?>(
        object: vmObject.tags, hydroState: hydroState, table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  final CustomPainterSemantics vmObject;
}

class RTManagedCustomPainterSemantics extends CustomPainterSemantics
    implements Box<CustomPainterSemantics> {
  RTManagedCustomPainterSemantics(
      {Key? key,
      Set<SemanticsTag>? tags,
      Matrix4? transform,
      required SemanticsProperties properties,
      required Rect rect,
      required this.table,
      required this.hydroState})
      : super(
            key: key,
            tags: tags,
            transform: transform,
            properties: properties,
            rect: rect) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['key'] = maybeBoxObject<Key?>(
        object: this.key, hydroState: hydroState, table: HydroTable());
    table['rect'] = maybeBoxObject<Rect>(
        object: this.rect, hydroState: hydroState, table: HydroTable());
    table['transform'] = maybeBoxObject<Matrix4?>(
        object: this.transform, hydroState: hydroState, table: HydroTable());
    table['properties'] = maybeBoxObject<SemanticsProperties>(
        object: this.properties, hydroState: hydroState, table: HydroTable());
    table['tags'] = maybeBoxObject<Set?>(
        object: this.tags, hydroState: hydroState, table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  CustomPainterSemantics unwrap() => this;
  CustomPainterSemantics get vmObject => this;
}

void loadCustomPainterSemantics(
    {required HydroState hydroState, required HydroTable table}) {
  table['customPainterSemantics'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedCustomPainterSemantics(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          key:
              maybeUnBoxAndBuildArgument<Key?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null,
                  parentState: hydroState),
          tags: maybeUnBoxAndBuildArgument<Set<SemanticsTag>?, SemanticsTag>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['tags']
                  : null,
              parentState: hydroState),
          transform: maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['transform']
                  : null,
              parentState: hydroState),
          properties: maybeUnBoxAndBuildArgument<SemanticsProperties, dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['properties'] : null,
              parentState: hydroState),
          rect: maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null, parentState: hydroState))
    ];
  });
  registerBoxer<CustomPainterSemantics>(boxer: (
      {required CustomPainterSemantics vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedCustomPainterSemantics(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
