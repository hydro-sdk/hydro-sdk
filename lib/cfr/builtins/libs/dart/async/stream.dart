import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedStream extends VMManagedBox<Stream<dynamic>> {
  VMManagedStream(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getIsBroadcast'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isBroadcast,
      ];
    });
    table['asBroadcastStream'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedonCancel = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['onCancel']
          : null;
      Closure? unpackedonListen = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['onListen']
          : null;
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
    table['listen'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedonData = luaCallerArguments[1];

      Closure? unpackedonDone = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['onDone']
          : null;
      return [
        maybeBoxObject<StreamSubscription>(
            object: vmObject.listen(
                unpackedonData != null
                    ? (event) => unpackedonData.dispatch(
                          [luaCallerArguments[0], event],
                          parentState: hydroState,
                        )
                    : null,
                cancelOnError: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['cancelOnError']
                    : null,
                onDone: unpackedonDone != null
                    ? () => unpackedonDone.dispatch(
                          [
                            luaCallerArguments[0],
                          ],
                          parentState: hydroState,
                        )
                    : null,
                onError: maybeUnBoxAndBuildArgument<Function?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['onError']
                        : null,
                    parentState: hydroState)),
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
            object: vmObject.asyncMap((event) =>
                maybeUnBoxAndBuildArgument<FutureOr<dynamic>, dynamic>(
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
            object: vmObject.asyncExpand((event) =>
                maybeUnBoxAndBuildArgument<Stream<dynamic>?, dynamic>(
                    ((
                      final List<dynamic>? val,
                    ) =>
                        val != null && val.length >= 1 ? val[0] : null)(
                      unpackedconvert.dispatch(
                        [luaCallerArguments[0], event],
                        parentState: hydroState,
                      ),
                    ),
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['handleError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedtest =
          luaCallerArguments.length >= 3 ? luaCallerArguments[2]['test'] : null;
      return [
        maybeBoxObject<Stream>(
            object: vmObject.handleError(
                maybeUnBoxAndBuildArgument<Function, dynamic>(
                    luaCallerArguments[1],
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
            object: vmObject.expand((element) =>
                maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
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
                maybeUnBoxAndBuildArgument<StreamConsumer<dynamic>, dynamic>(
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
            object: vmObject.transform(maybeUnBoxAndBuildArgument<
                StreamTransformer<dynamic, dynamic>,
                dynamic>(luaCallerArguments[1], parentState: hydroState)),
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
            object: vmObject.contains(
                maybeUnBoxAndBuildArgument<Object?, dynamic>(
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
    table['firstWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      Closure? unpackedorElse = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['orElse']
          : null;
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
      Closure? unpackedorElse = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['orElse']
          : null;
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
      Closure? unpackedorElse = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['orElse']
          : null;
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
      Closure? unpackedonTimeout = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['onTimeout']
          : null;
      return [
        maybeBoxObject<Stream>(
            object: vmObject.timeout(
                maybeUnBoxAndBuildArgument<Duration, dynamic>(
                    luaCallerArguments[1],
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
  }

  final HydroTable table;

  final HydroState hydroState;

  final Stream vmObject;
}

class RTManagedStream extends Stream implements Box<Stream> {
  RTManagedStream({required this.table, required this.hydroState}) : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getIsBroadcast'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isBroadcast];
    });
    table['_dart_asBroadcastStream'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedonCancel = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['onCancel']
          : null;
      Closure? unpackedonListen = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['onListen']
          : null;
      return [
        maybeBoxObject<Stream>(
            object: super.asBroadcastStream(
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
            table: HydroTable())
      ];
    });
    table['_dart_listen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedonData = luaCallerArguments[1];

      Closure? unpackedonDone = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['onDone']
          : null;
      return [
        maybeBoxObject<StreamSubscription>(
            object: listen(
                unpackedonData != null
                    ? (event) => unpackedonData.dispatch(
                          [luaCallerArguments[0], event],
                          parentState: hydroState,
                        )
                    : null,
                cancelOnError: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['cancelOnError']
                    : null,
                onDone: unpackedonDone != null
                    ? () => unpackedonDone.dispatch(
                          [
                            luaCallerArguments[0],
                          ],
                          parentState: hydroState,
                        )
                    : null,
                onError: maybeUnBoxAndBuildArgument<Function?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['onError']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_where'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: super.where((event) => unpackedtest.dispatch(
                  [luaCallerArguments[0], event],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_map'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedconvert = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: super.map((event) => unpackedconvert.dispatch(
                  [luaCallerArguments[0], event],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_asyncMap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedconvert = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: super.asyncMap((event) =>
                maybeUnBoxAndBuildArgument<FutureOr<dynamic>, dynamic>(
                    unpackedconvert.dispatch(
                      [luaCallerArguments[0], event],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_asyncExpand'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedconvert = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: super.asyncExpand((event) =>
                maybeUnBoxAndBuildArgument<Stream<dynamic>?, dynamic>(
                    ((
                      final List<dynamic>? val,
                    ) =>
                        val != null && val.length >= 1 ? val[0] : null)(
                      unpackedconvert.dispatch(
                        [luaCallerArguments[0], event],
                        parentState: hydroState,
                      ),
                    ),
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_handleError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedtest =
          luaCallerArguments.length >= 3 ? luaCallerArguments[2]['test'] : null;
      return [
        maybeBoxObject<Stream>(
            object: super.handleError(
                maybeUnBoxAndBuildArgument<Function, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                test: unpackedtest != null
                    ? (error) => unpackedtest.dispatch(
                          [luaCallerArguments[0], error],
                          parentState: hydroState,
                        )[0]
                    : null),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_expand'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedconvert = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: super.expand((element) =>
                maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
                    unpackedconvert.dispatch(
                      [luaCallerArguments[0], element],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pipe'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: super.pipe(
                maybeUnBoxAndBuildArgument<StreamConsumer<dynamic>, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_transform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: super.transform(maybeUnBoxAndBuildArgument<
                StreamTransformer<dynamic, dynamic>,
                dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_reduce'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcombine = luaCallerArguments[1];
      return [
        maybeBoxObject<Future>(
            object:
                super.reduce((previous, element) => unpackedcombine.dispatch(
                      [luaCallerArguments[0], previous, element],
                      parentState: hydroState,
                    )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_fold'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcombine = luaCallerArguments[2];
      return [
        maybeBoxObject<Future>(
            object: super.fold(
                luaCallerArguments[1],
                (previous, element) => unpackedcombine.dispatch(
                      [luaCallerArguments[0], previous, element],
                      parentState: hydroState,
                    )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_join'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: super.join(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_contains'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: super.contains(maybeUnBoxAndBuildArgument<Object?, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_forEach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedaction = luaCallerArguments[1];
      return [
        maybeBoxObject<Future>(
            object: super.forEach((element) => unpackedaction.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_every'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Future>(
            object: super.every((element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_any'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Future>(
            object: super.any((element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.length];
    });
    table['_dart_getIsEmpty'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isEmpty];
    });
    table['_dart_cast'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: super.cast(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_toList'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: super.toList(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_toSet'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: super.toSet(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_drain'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: super.drain(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_take'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: super.take(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_takeWhile'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: super.takeWhile((element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_skip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: super.skip(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_skipWhile'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: super.skipWhile((element) => unpackedtest.dispatch(
                  [luaCallerArguments[0], element],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_distinct'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedequals = luaCallerArguments[1];
      return [
        maybeBoxObject<Stream>(
            object: super.distinct(unpackedequals != null
                ? (previous, next) => unpackedequals.dispatch(
                      [luaCallerArguments[0], previous, next],
                      parentState: hydroState,
                    )[0]
                : null),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getFirst'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.first];
    });
    table['_dart_getLast'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.last];
    });
    table['_dart_getSingle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.single];
    });
    table['_dart_firstWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      Closure? unpackedorElse = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['orElse']
          : null;
      return [
        maybeBoxObject<Future>(
            object: super.firstWhere(
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
            table: HydroTable())
      ];
    });
    table['_dart_lastWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      Closure? unpackedorElse = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['orElse']
          : null;
      return [
        maybeBoxObject<Future>(
            object: super.lastWhere(
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
            table: HydroTable())
      ];
    });
    table['_dart_singleWhere'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtest = luaCallerArguments[1];
      Closure? unpackedorElse = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['orElse']
          : null;
      return [
        maybeBoxObject<Future>(
            object: super.singleWhere(
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
            table: HydroTable())
      ];
    });
    table['_dart_elementAt'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: super.elementAt(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_timeout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedonTimeout = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['onTimeout']
          : null;
      return [
        maybeBoxObject<Stream>(
            object: super.timeout(
                maybeUnBoxAndBuildArgument<Duration, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                onTimeout: unpackedonTimeout != null
                    ? (sink) => unpackedonTimeout.dispatch(
                          [luaCallerArguments[0], sink],
                          parentState: hydroState,
                        )
                    : null),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Stream unwrap() => this;
  Stream get vmObject => this;
  @override
  bool get isBroadcast {
    Closure closure = table["getIsBroadcast"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Stream<dynamic> asBroadcastStream({onCancel, onListen}) {
    Closure closure = table["asBroadcastStream"];
    return maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  StreamSubscription<dynamic> listen(onData,
      {bool? cancelOnError, onDone, Function? onError}) {
    Closure closure = table["listen"];
    return maybeUnBoxAndBuildArgument<StreamSubscription<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<dynamic> where(test) {
    Closure closure = table["where"];
    return maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<S> map<S>(convert) {
    Closure closure = table["map"];
    return maybeUnBoxAndBuildArgument<Stream<S>, S>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<E> asyncMap<E>(convert) {
    Closure closure = table["asyncMap"];
    return maybeUnBoxAndBuildArgument<Stream<E>, E>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<E> asyncExpand<E>(convert) {
    Closure closure = table["asyncExpand"];
    return maybeUnBoxAndBuildArgument<Stream<E>, E>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<dynamic> handleError(Function onError, {test}) {
    Closure closure = table["handleError"];
    return maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<S> expand<S>(convert) {
    Closure closure = table["expand"];
    return maybeUnBoxAndBuildArgument<Stream<S>, S>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<dynamic> pipe(StreamConsumer streamConsumer) {
    Closure closure = table["pipe"];
    return maybeUnBoxAndBuildArgument<Future<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<S> transform<S>(StreamTransformer streamTransformer) {
    Closure closure = table["transform"];
    return maybeUnBoxAndBuildArgument<Stream<S>, S>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<dynamic> reduce(combine) {
    Closure closure = table["reduce"];
    return maybeUnBoxAndBuildArgument<Future<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<S> fold<S>(S initialValue, combine) {
    Closure closure = table["fold"];
    return maybeUnBoxAndBuildArgument<Future<S>, S>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<String> join([String separator = ""]) {
    Closure closure = table["join"];
    return maybeUnBoxAndBuildArgument<Future<String>, String>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<bool> contains(Object? needle) {
    Closure closure = table["contains"];
    return maybeUnBoxAndBuildArgument<Future<bool>, bool>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<dynamic> forEach(action) {
    Closure closure = table["forEach"];
    return maybeUnBoxAndBuildArgument<Future<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<bool> every(test) {
    Closure closure = table["every"];
    return maybeUnBoxAndBuildArgument<Future<bool>, bool>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<bool> any(test) {
    Closure closure = table["any"];
    return maybeUnBoxAndBuildArgument<Future<bool>, bool>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<int> get length {
    Closure closure = table["getLength"];
    return maybeUnBoxAndBuildArgument<Future<int>, int>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<bool> get isEmpty {
    Closure closure = table["getIsEmpty"];
    return maybeUnBoxAndBuildArgument<Future<bool>, bool>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<R> cast<R>() {
    Closure closure = table["cast"];
    return maybeUnBoxAndBuildArgument<Stream<R>, R>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<List<dynamic>> toList() {
    Closure closure = table["toList"];
    return maybeUnBoxAndBuildArgument<Future<List<dynamic>>, List<dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<Set<dynamic>> toSet() {
    Closure closure = table["toSet"];
    return maybeUnBoxAndBuildArgument<Future<Set<dynamic>>, Set<dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<E> drain<E>([E? futureValue]) {
    Closure closure = table["drain"];
    return maybeUnBoxAndBuildArgument<Future<E>, E>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<dynamic> take(int count) {
    Closure closure = table["take"];
    return maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<dynamic> takeWhile(test) {
    Closure closure = table["takeWhile"];
    return maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<dynamic> skip(int count) {
    Closure closure = table["skip"];
    return maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<dynamic> skipWhile(test) {
    Closure closure = table["skipWhile"];
    return maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<dynamic> distinct([equals]) {
    Closure closure = table["distinct"];
    return maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<dynamic> get first {
    Closure closure = table["getFirst"];
    return maybeUnBoxAndBuildArgument<Future<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<dynamic> get last {
    Closure closure = table["getLast"];
    return maybeUnBoxAndBuildArgument<Future<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<dynamic> get single {
    Closure closure = table["getSingle"];
    return maybeUnBoxAndBuildArgument<Future<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<dynamic> firstWhere(test, {orElse}) {
    Closure closure = table["firstWhere"];
    return maybeUnBoxAndBuildArgument<Future<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<dynamic> lastWhere(test, {orElse}) {
    Closure closure = table["lastWhere"];
    return maybeUnBoxAndBuildArgument<Future<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<dynamic> singleWhere(test, {orElse}) {
    Closure closure = table["singleWhere"];
    return maybeUnBoxAndBuildArgument<Future<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<dynamic> elementAt(int index) {
    Closure closure = table["elementAt"];
    return maybeUnBoxAndBuildArgument<Future<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<dynamic> timeout(Duration timeLimit, {onTimeout}) {
    Closure closure = table["timeout"];
    return maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadStream({required HydroState hydroState, required HydroTable table}) {
  table['stream'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedStream(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['streamEmpty'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Stream>(
          object: Stream.empty(), hydroState: hydroState, table: HydroTable()),
    ];
  });
  table['streamValue'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Stream>(
          object: Stream.value(luaCallerArguments[1]),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['streamError'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Stream>(
          object: Stream.error(
              maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<StackTrace?, dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['streamFromFuture'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Stream>(
          object: Stream.fromFuture(
              maybeUnBoxAndBuildArgument<Future<dynamic>, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['streamFromFutures'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Stream>(
          object: Stream.fromFutures(maybeUnBoxAndBuildArgument<
              Iterable<Future<dynamic>>,
              Future<dynamic>>(luaCallerArguments[1], parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['streamFromIterable'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Stream>(
          object: Stream.fromIterable(
              maybeUnBoxAndBuildArgument<Iterable<dynamic>, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['streamMulti'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure unpackedonListen = luaCallerArguments[1];
    return [
      maybeBoxObject<Stream>(
          object: Stream.multi(
              (_) => unpackedonListen.dispatch(
                    [luaCallerArguments[0], _],
                    parentState: hydroState,
                  ),
              isBroadcast: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['isBroadcast']
                  : null),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['streamPeriodic'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedcomputation = luaCallerArguments[2];
    return [
      maybeBoxObject<Stream>(
          object: Stream.periodic(
              maybeUnBoxAndBuildArgument<Duration, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              unpackedcomputation != null
                  ? (computationCount) => unpackedcomputation.dispatch(
                        [luaCallerArguments[0], computationCount],
                        parentState: hydroState,
                      )[0]
                  : null),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['streamEventTransformed'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure unpackedmapSink = luaCallerArguments[2];
    return [
      maybeBoxObject<Stream>(
          object: Stream.eventTransformed(
              maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              (sink) => maybeUnBoxAndBuildArgument<EventSink<dynamic>, dynamic>(
                  unpackedmapSink.dispatch(
                    [luaCallerArguments[0], sink],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['streamCastFrom'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Stream>(
          object: Stream.castFrom(
              maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<Stream>(boxer: (
      {required Stream vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedStream(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
