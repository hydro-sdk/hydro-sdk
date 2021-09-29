import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedStreamTransformer
    extends VMManagedBox<StreamTransformer<dynamic, dynamic>> {
  VMManagedStreamTransformer(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['bind'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: vmObject.bind(
                maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['cast'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<StreamTransformer>(
            object: vmObject.cast(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final StreamTransformer vmObject;
}

void loadStreamTransformer(
    {required HydroState hydroState, required HydroTable table}) {
  table['streamTransformer'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure unpackedonListen = luaCallerArguments[1];
    return [
      maybeBoxObject<StreamTransformer>(
          object: StreamTransformer((stream, cancelOnError) =>
              maybeUnBoxAndBuildArgument<StreamSubscription<dynamic>, dynamic>(
                  unpackedonListen.dispatch(
                    [luaCallerArguments[0], stream, cancelOnError],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  table['streamTransformerFromHandlers'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedhandleData = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['handleData']
        : null;
    Closure? unpackedhandleDone = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['handleDone']
        : null;
    Closure? unpackedhandleError = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['handleError']
        : null;
    return [
      maybeBoxObject<StreamTransformer>(
          object: StreamTransformer.fromHandlers(
              handleData: unpackedhandleData != null
                  ? (data, sink) => unpackedhandleData.dispatch(
                        [luaCallerArguments[0], data, sink],
                        parentState: hydroState,
                      )
                  : null,
              handleDone: unpackedhandleDone != null
                  ? (sink) => unpackedhandleDone.dispatch(
                        [luaCallerArguments[0], sink],
                        parentState: hydroState,
                      )
                  : null,
              handleError: unpackedhandleError != null
                  ? (error, stackTrace, sink) => unpackedhandleError.dispatch(
                        [luaCallerArguments[0], error, stackTrace, sink],
                        parentState: hydroState,
                      )
                  : null),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['streamTransformerFromBind'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure unpackedbind = luaCallerArguments[1];
    return [
      maybeBoxObject<StreamTransformer>(
          object: StreamTransformer.fromBind(
              (_) => maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
                  unpackedbind.dispatch(
                    [luaCallerArguments[0], _],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['streamTransformerCastFrom'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<StreamTransformer>(
          object: StreamTransformer.castFrom(maybeUnBoxAndBuildArgument<
              StreamTransformer<dynamic, dynamic>,
              dynamic>(luaCallerArguments[1], parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<StreamTransformer>(boxer: (
      {required StreamTransformer vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedStreamTransformer(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
