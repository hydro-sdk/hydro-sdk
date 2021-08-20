import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedError extends VMManagedBox<Error> {
  VMManagedError(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getStackTrace'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.stackTrace;
      if (returnValue != null) {
        return [
          maybeBoxObject<StackTrace?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Error vmObject;
}

class RTManagedError extends Error implements Box<Error> {
  RTManagedError({required this.table, required this.hydroState}) : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getStackTrace'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.stackTrace];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Error unwrap() => this;
  Error get vmObject => this;
  @override
  StackTrace? get stackTrace {
    Closure closure = table["getStackTrace"];
    return maybeUnBoxAndBuildArgument<StackTrace?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadError({required HydroState hydroState, required HydroTable table}) {
  table['error'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedError(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['errorSafeToString'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      Error.safeToString(maybeUnBoxAndBuildArgument<Object?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState)),
    ];
  });
  registerBoxer<Error>(boxer: (
      {required Error vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedError(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
