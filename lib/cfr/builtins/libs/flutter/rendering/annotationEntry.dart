import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/rendering/layer.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedAnnotationEntry extends VMManagedBox<AnnotationEntry<dynamic>> {
  VMManagedAnnotationEntry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['localPosition'] = maybeBoxObject<Offset>(
        object: vmObject.localPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final AnnotationEntry<dynamic> vmObject;
}

class RTManagedAnnotationEntry extends AnnotationEntry
    implements Box<AnnotationEntry> {
  RTManagedAnnotationEntry(
      {required dynamic annotation,
      required Offset localPosition,
      required this.table,
      required this.hydroState})
      : super(annotation: annotation, localPosition: localPosition) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['localPosition'] = maybeBoxObject<Offset>(
        object: this.localPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  AnnotationEntry unwrap() => this;
  AnnotationEntry get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadAnnotationEntry(
    {required HydroState hydroState, required HydroTable table}) {
  table['annotationEntry'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedAnnotationEntry(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          annotation: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['annotation']
              : null,
          localPosition: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['localPosition']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<AnnotationEntry>(boxer: (
      {required AnnotationEntry vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedAnnotationEntry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
