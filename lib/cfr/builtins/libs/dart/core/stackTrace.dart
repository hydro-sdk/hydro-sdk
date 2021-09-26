import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedStackTrace extends VMManagedBox<StackTrace> {
  VMManagedStackTrace(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final StackTrace vmObject;
}

class RTManagedStackTrace extends StackTrace implements Box<StackTrace> {
  RTManagedStackTrace({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  StackTrace unwrap() => this;
  StackTrace get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadStackTrace(
    {required HydroState hydroState, required HydroTable table}) {
  table['stackTrace'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedStackTrace(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['stackTraceFromString'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<StackTrace>(
          object: StackTrace.fromString(luaCallerArguments[1]),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['stackTraceCurrent'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<StackTrace>(
          object: StackTrace.current,
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<StackTrace>(boxer: (
      {required StackTrace vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedStackTrace(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
