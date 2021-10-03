import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedMultiStreamController
    extends VMManagedBox<MultiStreamController<dynamic>> {
  VMManagedMultiStreamController(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['addSync'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addSync(luaCallerArguments[1]);
      return [];
    });
    table['addErrorSync'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addErrorSync(
          maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<StackTrace?, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['closeSync'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.closeSync();
      return [];
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
    table['getOnListen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onListen;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnListen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpacked_onListen = luaCallerArguments[1];
      vmObject.onListen = (unpacked_onListen != null
          ? () => unpacked_onListen.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnPause'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onPause;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnPause'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpacked_onPause = luaCallerArguments[1];
      vmObject.onPause = (unpacked_onPause != null
          ? () => unpacked_onPause.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnResume'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onResume;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnResume'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpacked_onResume = luaCallerArguments[1];
      vmObject.onResume = (unpacked_onResume != null
          ? () => unpacked_onResume.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnCancel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onCancel;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnCancel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpacked_onCancel = luaCallerArguments[1];
      vmObject.onCancel = (unpacked_onCancel != null
          ? () => maybeUnBoxAndBuildArgument<FutureOr<void>, void>(
              unpacked_onCancel.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState)
          : null);
      return [];
    });
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
    table['getDone'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.done, hydroState: hydroState, table: HydroTable()),
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

  final MultiStreamController vmObject;
}

void loadMultiStreamController(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<MultiStreamController>(boxer: (
      {required MultiStreamController vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedMultiStreamController(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
