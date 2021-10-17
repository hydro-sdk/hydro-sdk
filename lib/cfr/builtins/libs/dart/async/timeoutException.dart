import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTimeoutException extends VMManagedBox<TimeoutException> {
  VMManagedTimeoutException(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['message'] = vmObject.message;
    table['duration'] = maybeBoxObject<Duration?>(
        object: vmObject.duration, hydroState: hydroState, table: HydroTable());
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

  final TimeoutException vmObject;
}

class RTManagedTimeoutException extends TimeoutException
    implements Box<TimeoutException> {
  RTManagedTimeoutException(String? message$, Duration? duration$,
      {required this.table, required this.hydroState})
      : super(
          message$,
          duration$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['message'] = message;
    table['duration'] = maybeBoxObject<Duration?>(
        object: duration, hydroState: hydroState, table: HydroTable());
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

  TimeoutException unwrap() => this;
  TimeoutException get vmObject => this;
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

void loadTimeoutException(
    {required HydroState hydroState, required HydroTable table}) {
  table['timeoutException'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedTimeoutException(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<Duration?, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<TimeoutException>(boxer: (
      {required TimeoutException vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTimeoutException(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
