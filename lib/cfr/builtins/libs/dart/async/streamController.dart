import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedStreamController
    extends VMManagedBox<StreamController<dynamic>> {
  VMManagedStreamController(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getStream'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: vmObject.stream,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getSink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<StreamSink>(
            object: vmObject.sink, hydroState: hydroState, table: HydroTable()),
      ];
    });
    table['getIsClosed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isClosed,
      ];
    });
    table['getIsPaused'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isPaused,
      ];
    });
    table['getHasListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasListener,
      ];
    });
    table['add'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.add(luaCallerArguments[1]);
      return [];
    });
    table['addError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addError(
          maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<StackTrace?, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['close'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.close(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getDone'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.done, hydroState: hydroState, table: HydroTable()),
      ];
    });
    table['addStream'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.addStream(
                maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                cancelOnError: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['cancelOnError']
                    : null),
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

  final StreamController vmObject;
}

void loadStreamController(
    {required HydroState hydroState, required HydroTable table}) {
  table['streamController'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedonCancel = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onCancel']
        : null;
    Closure? unpackedonListen = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onListen']
        : null;
    Closure? unpackedonPause = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onPause']
        : null;
    Closure? unpackedonResume = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onResume']
        : null;

    return [
      maybeBoxObject<StreamController>(
          object: StreamController(
              onCancel: unpackedonCancel != null
                  ? () => maybeUnBoxAndBuildArgument<FutureOr<void>, void>(
                      unpackedonCancel.dispatch(
                        [
                          luaCallerArguments[0],
                        ],
                        parentState: hydroState,
                      )[0],
                      parentState: hydroState)
                  : null,
              onListen: unpackedonListen != null
                  ? () => unpackedonListen.dispatch(
                        [
                          luaCallerArguments[0],
                        ],
                        parentState: hydroState,
                      )
                  : null,
              onPause: unpackedonPause != null
                  ? () => unpackedonPause.dispatch(
                        [
                          luaCallerArguments[0],
                        ],
                        parentState: hydroState,
                      )
                  : null,
              onResume: unpackedonResume != null
                  ? () => unpackedonResume.dispatch(
                        [
                          luaCallerArguments[0],
                        ],
                        parentState: hydroState,
                      )
                  : null,
              sync: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['sync']
                  : null),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  table['streamControllerBroadcast'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedonCancel = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onCancel']
        : null;
    Closure? unpackedonListen = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onListen']
        : null;
    return [
      maybeBoxObject<StreamController>(
          object: StreamController.broadcast(
              onCancel: unpackedonCancel != null
                  ? () => unpackedonCancel.dispatch(
                        [
                          luaCallerArguments[0],
                        ],
                        parentState: hydroState,
                      )
                  : null,
              onListen: unpackedonListen != null
                  ? () => unpackedonListen.dispatch(
                        [
                          luaCallerArguments[0],
                        ],
                        parentState: hydroState,
                      )
                  : null,
              sync: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['sync']
                  : null),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<StreamController>(boxer: (
      {required StreamController vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedStreamController(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
