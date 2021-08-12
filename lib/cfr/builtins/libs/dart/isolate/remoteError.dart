import 'dart:core';
import 'dart:isolate';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRemoteError extends VMManagedBox<RemoteError> {
  VMManagedRemoteError(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['stackTrace'] = maybeBoxObject<StackTrace>(
        object: vmObject.stackTrace,
        hydroState: hydroState,
        table: HydroTable());
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
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
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final RemoteError vmObject;
}

class RTManagedRemoteError extends RemoteError implements Box<RemoteError> {
  RTManagedRemoteError(String description, String stackDescription,
      {required this.table, required this.hydroState})
      : super(
          description,
          stackDescription,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['stackTrace'] = maybeBoxObject<StackTrace>(
        object: stackTrace, hydroState: hydroState, table: HydroTable());
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getStackTrace'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.stackTrace];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  RemoteError unwrap() => this;
  RemoteError get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  StackTrace? get stackTrace {
    Closure closure = table["getStackTrace"];
    return maybeUnBoxAndBuildArgument<StackTrace?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRemoteError(
    {required HydroState hydroState, required HydroTable table}) {
  table['remoteError'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedRemoteError(luaCallerArguments[1], luaCallerArguments[2],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<RemoteError>(boxer: (
      {required RemoteError vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRemoteError(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
