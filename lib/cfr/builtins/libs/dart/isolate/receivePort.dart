import 'dart:async';
import 'dart:core';
import 'dart:isolate';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedReceivePort extends VMManagedBox<ReceivePort> {
  VMManagedReceivePort(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['listen'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedonData = luaCallerArguments[1];

      Closure? unpackedonDone = luaCallerArguments[2]['onDone'];
      return [
        maybeBoxObject<StreamSubscription>(
            object: vmObject.listen(
                unpackedonData != null
                    ? (message) => unpackedonData.dispatch(
                          [luaCallerArguments[0], message],
                          parentState: hydroState,
                        )
                    : null,
                cancelOnError: luaCallerArguments[2]['cancelOnError'],
                onDone: unpackedonDone != null
                    ? () => unpackedonDone.dispatch(
                          [
                            luaCallerArguments[0],
                          ],
                          parentState: hydroState,
                        )
                    : null,
                onError: maybeUnBoxAndBuildArgument<Function?>(
                    luaCallerArguments[2]['onError'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['close'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.close();
      return [];
    });
    table['getSendPort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SendPort>(
            object: vmObject.sendPort,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asBroadcastStream'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedonCancel = luaCallerArguments[1]['onCancel'];
      Closure? unpackedonListen = luaCallerArguments[1]['onListen'];
      return [
        maybeBoxObject<Stream>(
            object: vmObject.asBroadcastStream(
                onCancel: unpackedonCancel != null
                    ? (subscription) => unpackedonCancel.dispatch(
                          [luaCallerArguments[0], subscription],
                          parentState: hydroState,
                        )
                    : null,
                onListen: unpackedonListen != null
                    ? (subscription) => unpackedonListen.dispatch(
                          [luaCallerArguments[0], subscription],
                          parentState: hydroState,
                        )
                    : null),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['where'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: vmObject.where((event) => unpackedtest.dispatch(
                  [luaCallerArguments[0], event],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['map'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedconvert = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: vmObject.map((event) => unpackedconvert.dispatch(
                  [luaCallerArguments[0], event],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asyncMap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedconvert = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: vmObject.asyncMap(
                (event) => maybeUnBoxAndBuildArgument<FutureOr<dynamic>>(
                    unpackedconvert.dispatch(
                      [luaCallerArguments[0], event],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asyncExpand'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedconvert = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: vmObject.asyncExpand(
                (event) => maybeUnBoxAndBuildArgument<Stream<dynamic>?>(
                    unpackedconvert.dispatch(
                      [luaCallerArguments[0], event],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['handleError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedtest = luaCallerArguments[2]['test'];
      return [
        maybeBoxObject<Stream>(
            object: vmObject.handleError(
                maybeUnBoxAndBuildArgument<Function>(luaCallerArguments[1],
                    parentState: hydroState),
                test: unpackedtest != null
                    ? (error) => unpackedtest.dispatch(
                          [luaCallerArguments[0], error],
                          parentState: hydroState,
                        )[0]
                    : null),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['expand'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedconvert = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: vmObject.expand(
                (element) => maybeUnBoxAndBuildArgument<Iterable<dynamic>>(
                    unpackedconvert.dispatch(
                      [luaCallerArguments[0], element],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['pipe'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.pipe(
                maybeUnBoxAndBuildArgument<StreamConsumer<dynamic>>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['transform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: vmObject.transform(
                maybeUnBoxAndBuildArgument<StreamTransformer<dynamic, dynamic>>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['reduce'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcombine = luaCallerArguments[1];
      return [
        maybeBoxObject<Future>(
            object:
                vmObject.reduce((previous, element) => unpackedcombine.dispatch(
                      [luaCallerArguments[0], previous, element],
                      parentState: hydroState,
                    )[0]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['fold'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcombine = luaCallerArguments[2];
      return [
        maybeBoxObject<Future>(
            object: vmObject.fold(
                luaCallerArguments[1],
                (previous, element) => unpackedcombine.dispatch(
                      [luaCallerArguments[0], previous, element],
                      parentState: hydroState,
                    )[0]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['join'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.join(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['contains'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.contains(maybeUnBoxAndBuildArgument<Object?>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['forEach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedaction = luaCallerArguments[1];
      return [
        maybeBoxObject<Future>(
            object: vmObject.forEach((element) => unpackedaction.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['every'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Future>(
            object: vmObject.every((element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['any'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Future>(
            object: vmObject.any((element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['cast'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: vmObject.cast(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['toList'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['toSet'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.toSet(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['drain'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.drain(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['take'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: vmObject.take(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['takeWhile'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: vmObject.takeWhile((element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['skip'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: vmObject.skip(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['skipWhile'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: vmObject.skipWhile((element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['distinct'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedequals = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: vmObject.distinct(unpackedequals != null
                ? (previous, next) => unpackedequals.dispatch(
                      [luaCallerArguments[0], previous, next],
                      parentState: hydroState,
                    )[0]
                : null),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['firstWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      Closure? unpackedorElse = luaCallerArguments[2]['orElse'];
      return [
        maybeBoxObject<Future>(
            object: vmObject.firstWhere(
                (element) => unpackedtest.dispatch(
                      [luaCallerArguments[0], element],
                      parentState: hydroState,
                    )[0],
                orElse: unpackedorElse != null
                    ? () => unpackedorElse.dispatch(
                          [
                            luaCallerArguments[0],
                          ],
                          parentState: hydroState,
                        )[0]
                    : null),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['lastWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      Closure? unpackedorElse = luaCallerArguments[2]['orElse'];
      return [
        maybeBoxObject<Future>(
            object: vmObject.lastWhere(
                (element) => unpackedtest.dispatch(
                      [luaCallerArguments[0], element],
                      parentState: hydroState,
                    )[0],
                orElse: unpackedorElse != null
                    ? () => unpackedorElse.dispatch(
                          [
                            luaCallerArguments[0],
                          ],
                          parentState: hydroState,
                        )[0]
                    : null),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['singleWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      Closure? unpackedorElse = luaCallerArguments[2]['orElse'];
      return [
        maybeBoxObject<Future>(
            object: vmObject.singleWhere(
                (element) => unpackedtest.dispatch(
                      [luaCallerArguments[0], element],
                      parentState: hydroState,
                    )[0],
                orElse: unpackedorElse != null
                    ? () => unpackedorElse.dispatch(
                          [
                            luaCallerArguments[0],
                          ],
                          parentState: hydroState,
                        )[0]
                    : null),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['elementAt'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.elementAt(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['timeout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedonTimeout = luaCallerArguments[2]['onTimeout'];
      return [
        maybeBoxObject<Stream>(
            object: vmObject.timeout(
                maybeUnBoxAndBuildArgument<Duration>(luaCallerArguments[1],
                    parentState: hydroState),
                onTimeout: unpackedonTimeout != null
                    ? (sink) => unpackedonTimeout.dispatch(
                          [luaCallerArguments[0], sink],
                          parentState: hydroState,
                        )
                    : null),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getIsBroadcast'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isBroadcast,
      ];
    });
    table['getLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.length,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getIsEmpty'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.isEmpty,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getFirst'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.first,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getLast'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.last, hydroState: hydroState, table: HydroTable()),
      ];
    });
    table['getSingle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.single,
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

  final ReceivePort vmObject;
}

void loadReceivePort(
    {required HydroState hydroState, required HydroTable table}) {
  table['receivePort'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ReceivePort>(
          object: ReceivePort(luaCallerArguments[1]),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  table['receivePortFromRawReceivePort'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ReceivePort>(
          object: ReceivePort.fromRawReceivePort(
              maybeUnBoxAndBuildArgument<RawReceivePort>(luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<ReceivePort>(boxer: (
      {required ReceivePort vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedReceivePort(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
