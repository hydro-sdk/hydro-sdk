import 'dart:core';

import 'package:flutter/src/semantics/semantics_event.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSemanticsEvent extends VMManagedBox<SemanticsEvent> {
  VMManagedSemanticsEvent(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['type'] = vmObject.type;
    table['toMap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Map>(
            object: vmObject.toMap(
                nodeId: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['nodeId']
                    : null),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getDataMap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Map>(
            object: vmObject.getDataMap(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
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

  final SemanticsEvent vmObject;
}

class RTManagedSemanticsEvent extends SemanticsEvent
    implements Box<SemanticsEvent> {
  RTManagedSemanticsEvent(String type$,
      {required this.table, required this.hydroState})
      : super(
          type$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['type'] = this.type;
    table['_dart_toMap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Map>(
            object: super.toMap(
                nodeId: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['nodeId']
                    : null),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getDataMap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Map>(
            object: getDataMap(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SemanticsEvent unwrap() => this;
  SemanticsEvent get vmObject => this;
  @override
  Map<String, dynamic> toMap({int? nodeId}) {
    Closure closure = table["toMap"];
    return maybeUnBoxAndBuildArgument<Map<String, dynamic>, String>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Map<String, dynamic> getDataMap() {
    Closure closure = table["getDataMap"];
    return maybeUnBoxAndBuildArgument<Map<String, dynamic>, String>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSemanticsEvent(
    {required HydroState hydroState, required HydroTable table}) {
  table['semanticsEvent'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSemanticsEvent(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<SemanticsEvent>(boxer: (
      {required SemanticsEvent vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSemanticsEvent(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
