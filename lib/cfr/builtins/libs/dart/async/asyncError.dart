import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedAsyncError extends VMManagedBox<AsyncError> {
  VMManagedAsyncError(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['error'] = maybeBoxObject<Object>(
        object: vmObject.error, hydroState: hydroState, table: HydroTable());
    table['stackTrace'] = maybeBoxObject<StackTrace>(
        object: vmObject.stackTrace,
        hydroState: hydroState,
        table: HydroTable());
    table['getStackTrace'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<StackTrace>(
            object: vmObject.stackTrace,
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
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final AsyncError vmObject;
}

class RTManagedAsyncError extends AsyncError implements Box<AsyncError> {
  RTManagedAsyncError(Object error$, StackTrace? stackTrace$,
      {required this.table, required this.hydroState})
      : super(
          error$,
          stackTrace$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['error'] = maybeBoxObject<Object>(
        object: error, hydroState: hydroState, table: HydroTable());
    table['stackTrace'] = maybeBoxObject<StackTrace>(
        object: stackTrace, hydroState: hydroState, table: HydroTable());
    table['_dart_getStackTrace'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.stackTrace];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  AsyncError unwrap() => this;
  AsyncError get vmObject => this;
  @override
  StackTrace get stackTrace {
    Closure closure = table["getStackTrace"];
    return maybeUnBoxAndBuildArgument<StackTrace, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadAsyncError(
    {required HydroState hydroState, required HydroTable table}) {
  table['asyncError'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedAsyncError(
          maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<StackTrace?, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  table['asyncErrorDefaultStackTrace'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<StackTrace>(
          object: AsyncError.defaultStackTrace(
              maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<AsyncError>(boxer: (
      {required AsyncError vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedAsyncError(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
