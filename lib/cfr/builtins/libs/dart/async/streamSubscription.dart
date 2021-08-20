import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedStreamSubscription
    extends VMManagedBox<StreamSubscription<dynamic>> {
  VMManagedStreamSubscription(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['cancel'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.cancel(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['onData'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandleData = luaCallerArguments[1];
      vmObject.onData(unpackedhandleData != null
          ? (data) => unpackedhandleData.dispatch(
                [luaCallerArguments[0], data],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['onError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.onError(maybeUnBoxAndBuildArgument<Function?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['onDone'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandleDone = luaCallerArguments[1];
      vmObject.onDone(unpackedhandleDone != null
          ? () => unpackedhandleDone.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['pause'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.pause(maybeUnBoxAndBuildArgument<Future<void>?, void>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['resume'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.resume();
      return [];
    });
    table['getIsPaused'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isPaused,
      ];
    });
    table['asFuture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.asFuture(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final StreamSubscription vmObject;
}

void loadStreamSubscription(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<StreamSubscription>(boxer: (
      {required StreamSubscription vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedStreamSubscription(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
