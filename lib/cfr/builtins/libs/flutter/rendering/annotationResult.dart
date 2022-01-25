import 'dart:core';

import 'package:flutter/src/rendering/layer.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedAnnotationResult
    extends VMManagedBox<AnnotationResult<dynamic>> {
  VMManagedAnnotationResult(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['add'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.add(
          maybeUnBoxAndBuildArgument<AnnotationEntry<dynamic>, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getEntries'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.entries,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getAnnotations'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.annotations,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final AnnotationResult<dynamic> vmObject;
}

class RTManagedAnnotationResult extends AnnotationResult
    implements Box<AnnotationResult> {
  RTManagedAnnotationResult({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_add'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.add(maybeUnBoxAndBuildArgument<AnnotationEntry<dynamic>, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getEntries'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.entries];
    });
    table['_dart_getAnnotations'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.annotations];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  AnnotationResult unwrap() => this;
  AnnotationResult get vmObject => this;
  @override
  void add(entry) {
    Closure closure = table["add"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Iterable<AnnotationEntry<dynamic>> get entries {
    Closure closure = table["getEntries"];
    return maybeUnBoxAndBuildArgument<Iterable<AnnotationEntry<dynamic>>,
            AnnotationEntry<dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Iterable<dynamic> get annotations {
    Closure closure = table["getAnnotations"];
    return maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadAnnotationResult(
    {required HydroState hydroState, required HydroTable table}) {
  table['annotationResult'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedAnnotationResult(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<AnnotationResult>(boxer: (
      {required AnnotationResult vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedAnnotationResult(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
