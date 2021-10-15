import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedZoneSpecification extends VMManagedBox<ZoneSpecification> {
  VMManagedZoneSpecification(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getHandleUncaughtError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.handleUncaughtError;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getRun'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.run;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getRunUnary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.runUnary;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getRunBinary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.runBinary;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getRegisterCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.registerCallback;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getRegisterUnaryCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.registerUnaryCallback;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getRegisterBinaryCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.registerBinaryCallback;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getErrorCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.errorCallback;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getScheduleMicrotask'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.scheduleMicrotask;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getCreateTimer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.createTimer;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getCreatePeriodicTimer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.createPeriodicTimer;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getPrint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.print;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getFork'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.fork;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ZoneSpecification vmObject;
}

void loadZoneSpecification(
    {required HydroState hydroState, required HydroTable table}) {
  table['zoneSpecification'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedcreatePeriodicTimer = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['createPeriodicTimer']
        : null;
    Closure? unpackedcreateTimer = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['createTimer']
        : null;
    Closure? unpackederrorCallback = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['errorCallback']
        : null;
    Closure? unpackedfork =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fork'] : null;
    Closure? unpackedhandleUncaughtError = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['handleUncaughtError']
        : null;
    Closure? unpackedprint =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['print'] : null;
    Closure? unpackedregisterBinaryCallback = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['registerBinaryCallback']
        : null;
    Closure? unpackedregisterCallback = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['registerCallback']
        : null;
    Closure? unpackedregisterUnaryCallback = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['registerUnaryCallback']
        : null;
    Closure? unpackedrun =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['run'] : null;
    Closure? unpackedrunBinary = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['runBinary']
        : null;
    Closure? unpackedrunUnary = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['runUnary']
        : null;
    Closure? unpackedscheduleMicrotask = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['scheduleMicrotask']
        : null;
    return [
      maybeBoxObject<ZoneSpecification>(
          object: ZoneSpecification(
              createPeriodicTimer: unpackedcreatePeriodicTimer != null
                  ? (self, parent, zone, period, f) =>
                      maybeUnBoxAndBuildArgument<Timer, dynamic>(
                          unpackedcreatePeriodicTimer.dispatch(
                            [
                              luaCallerArguments[0],
                              self,
                              parent,
                              zone,
                              period,
                              f
                            ],
                            parentState: hydroState,
                          )[0],
                          parentState: hydroState)
                  : null,
              createTimer: unpackedcreateTimer != null
                  ? (self, parent, zone, duration, f) =>
                      maybeUnBoxAndBuildArgument<Timer, dynamic>(
                          unpackedcreateTimer.dispatch(
                            [
                              luaCallerArguments[0],
                              self,
                              parent,
                              zone,
                              duration,
                              f
                            ],
                            parentState: hydroState,
                          )[0],
                          parentState: hydroState)
                  : null,
              errorCallback: unpackederrorCallback != null
                  ? (self, parent, zone, error, stackTrace) =>
                      maybeUnBoxAndBuildArgument<AsyncError?, dynamic>(
                          ((
                            final List<dynamic>? val,
                          ) =>
                              val != null && val.length >= 1 ? val[0] : null)(
                            unpackederrorCallback.dispatch(
                              [
                                luaCallerArguments[0],
                                self,
                                parent,
                                zone,
                                error,
                                stackTrace
                              ],
                              parentState: hydroState,
                            ),
                          ),
                          parentState: hydroState)
                  : null,
              fork: unpackedfork != null
                  ? (self, parent, zone, specification, zoneValues) =>
                      maybeUnBoxAndBuildArgument<Zone, dynamic>(
                          unpackedfork.dispatch(
                            [
                              luaCallerArguments[0],
                              self,
                              parent,
                              zone,
                              specification,
                              zoneValues
                            ],
                            parentState: hydroState,
                          )[0],
                          parentState: hydroState)
                  : null,
              handleUncaughtError: unpackedhandleUncaughtError != null
                  ? (self, parent, zone, error, stackTrace) =>
                      unpackedhandleUncaughtError.dispatch(
                        [
                          luaCallerArguments[0],
                          self,
                          parent,
                          zone,
                          error,
                          stackTrace
                        ],
                        parentState: hydroState,
                      )
                  : null,
              print: unpackedprint != null
                  ? (self, parent, zone, line) => unpackedprint.dispatch(
                        [luaCallerArguments[0], self, parent, zone, line],
                        parentState: hydroState,
                      )
                  : null,
              registerBinaryCallback: unpackedregisterBinaryCallback != null
                  ? <R, T1, T2>(self, parent, zone, f) =>
                      (arg1, arg2) => unpackedregisterBinaryCallback.dispatch(
                            [luaCallerArguments[0], arg1, arg2],
                            parentState: hydroState,
                          )[0]
                  : null,
              registerCallback: unpackedregisterCallback != null
                  ? <R>(self, parent, zone, f) =>
                      () => unpackedregisterCallback.dispatch(
                            [
                              luaCallerArguments[0],
                            ],
                            parentState: hydroState,
                          )[0]
                  : null,
              registerUnaryCallback: unpackedregisterUnaryCallback != null
                  ? <R, T>(self, parent, zone, f) =>
                      (arg) => unpackedregisterUnaryCallback.dispatch(
                            [luaCallerArguments[0], arg],
                            parentState: hydroState,
                          )[0]
                  : null,
              run: unpackedrun != null
                  ? <R>(self, parent, zone, f) => unpackedrun.dispatch(
                        [luaCallerArguments[0], self, parent, zone, f],
                        parentState: hydroState,
                      )[0]
                  : null,
              runBinary: unpackedrunBinary != null
                  ? <R, T1, T2>(self, parent, zone, f, arg1, arg2) =>
                      unpackedrunBinary.dispatch(
                        [
                          luaCallerArguments[0],
                          self,
                          parent,
                          zone,
                          f,
                          arg1,
                          arg2
                        ],
                        parentState: hydroState,
                      )[0]
                  : null,
              runUnary: unpackedrunUnary != null
                  ? <R, T>(self, parent, zone, f, arg) =>
                      unpackedrunUnary.dispatch(
                        [luaCallerArguments[0], self, parent, zone, f, arg],
                        parentState: hydroState,
                      )[0]
                  : null,
              scheduleMicrotask: unpackedscheduleMicrotask != null
                  ? (self, parent, zone, f) =>
                      unpackedscheduleMicrotask.dispatch(
                        [luaCallerArguments[0], self, parent, zone, f],
                        parentState: hydroState,
                      )
                  : null),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  table['zoneSpecificationFrom'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedcreatePeriodicTimer = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['createPeriodicTimer']
        : null;
    Closure? unpackedcreateTimer = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['createTimer']
        : null;
    Closure? unpackederrorCallback = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['errorCallback']
        : null;
    Closure? unpackedfork =
        luaCallerArguments.length >= 3 ? luaCallerArguments[2]['fork'] : null;
    Closure? unpackedhandleUncaughtError = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['handleUncaughtError']
        : null;
    Closure? unpackedprint =
        luaCallerArguments.length >= 3 ? luaCallerArguments[2]['print'] : null;
    Closure? unpackedregisterBinaryCallback = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['registerBinaryCallback']
        : null;
    Closure? unpackedregisterCallback = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['registerCallback']
        : null;
    Closure? unpackedregisterUnaryCallback = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['registerUnaryCallback']
        : null;
    Closure? unpackedrun =
        luaCallerArguments.length >= 3 ? luaCallerArguments[2]['run'] : null;
    Closure? unpackedrunBinary = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['runBinary']
        : null;
    Closure? unpackedrunUnary = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['runUnary']
        : null;
    Closure? unpackedscheduleMicrotask = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['scheduleMicrotask']
        : null;
    return [
      maybeBoxObject<ZoneSpecification>(
          object: ZoneSpecification.from(
              maybeUnBoxAndBuildArgument<ZoneSpecification, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              createPeriodicTimer: unpackedcreatePeriodicTimer != null
                  ? (self, parent, zone, period, f) =>
                      maybeUnBoxAndBuildArgument<Timer, dynamic>(
                          unpackedcreatePeriodicTimer.dispatch(
                            [
                              luaCallerArguments[0],
                              self,
                              parent,
                              zone,
                              period,
                              f
                            ],
                            parentState: hydroState,
                          )[0],
                          parentState: hydroState)
                  : null,
              createTimer: unpackedcreateTimer != null
                  ? (self, parent, zone, duration, f) =>
                      maybeUnBoxAndBuildArgument<Timer, dynamic>(
                          unpackedcreateTimer.dispatch(
                            [
                              luaCallerArguments[0],
                              self,
                              parent,
                              zone,
                              duration,
                              f
                            ],
                            parentState: hydroState,
                          )[0],
                          parentState: hydroState)
                  : null,
              errorCallback: unpackederrorCallback != null
                  ? (self, parent, zone, error, stackTrace) =>
                      maybeUnBoxAndBuildArgument<AsyncError?, dynamic>(
                          ((
                            final List<dynamic>? val,
                          ) =>
                              val != null && val.length >= 1 ? val[0] : null)(
                            unpackederrorCallback.dispatch(
                              [
                                luaCallerArguments[0],
                                self,
                                parent,
                                zone,
                                error,
                                stackTrace
                              ],
                              parentState: hydroState,
                            ),
                          ),
                          parentState: hydroState)
                  : null,
              fork: unpackedfork != null
                  ? (self, parent, zone, specification, zoneValues) =>
                      maybeUnBoxAndBuildArgument<Zone, dynamic>(
                          unpackedfork.dispatch(
                            [
                              luaCallerArguments[0],
                              self,
                              parent,
                              zone,
                              specification,
                              zoneValues
                            ],
                            parentState: hydroState,
                          )[0],
                          parentState: hydroState)
                  : null,
              handleUncaughtError: unpackedhandleUncaughtError != null
                  ? (self, parent, zone, error, stackTrace) =>
                      unpackedhandleUncaughtError.dispatch(
                        [
                          luaCallerArguments[0],
                          self,
                          parent,
                          zone,
                          error,
                          stackTrace
                        ],
                        parentState: hydroState,
                      )
                  : null,
              print: unpackedprint != null
                  ? (self, parent, zone, line) => unpackedprint.dispatch(
                        [luaCallerArguments[0], self, parent, zone, line],
                        parentState: hydroState,
                      )
                  : null,
              registerBinaryCallback: unpackedregisterBinaryCallback != null
                  ? <R, T1, T2>(self, parent, zone, f) =>
                      (arg1, arg2) => unpackedregisterBinaryCallback.dispatch(
                            [luaCallerArguments[0], arg1, arg2],
                            parentState: hydroState,
                          )[0]
                  : null,
              registerCallback: unpackedregisterCallback != null
                  ? <R>(self, parent, zone, f) =>
                      () => unpackedregisterCallback.dispatch(
                            [
                              luaCallerArguments[0],
                            ],
                            parentState: hydroState,
                          )[0]
                  : null,
              registerUnaryCallback: unpackedregisterUnaryCallback != null
                  ? <R, T>(self, parent, zone, f) =>
                      (arg) => unpackedregisterUnaryCallback.dispatch(
                            [luaCallerArguments[0], arg],
                            parentState: hydroState,
                          )[0]
                  : null,
              run: unpackedrun != null
                  ? <R>(self, parent, zone, f) => unpackedrun.dispatch(
                        [luaCallerArguments[0], self, parent, zone, f],
                        parentState: hydroState,
                      )[0]
                  : null,
              runBinary: unpackedrunBinary != null
                  ? <R, T1, T2>(self, parent, zone, f, arg1, arg2) =>
                      unpackedrunBinary.dispatch(
                        [
                          luaCallerArguments[0],
                          self,
                          parent,
                          zone,
                          f,
                          arg1,
                          arg2
                        ],
                        parentState: hydroState,
                      )[0]
                  : null,
              runUnary: unpackedrunUnary != null
                  ? <R, T>(self, parent, zone, f, arg) =>
                      unpackedrunUnary.dispatch(
                        [luaCallerArguments[0], self, parent, zone, f, arg],
                        parentState: hydroState,
                      )[0]
                  : null,
              scheduleMicrotask: unpackedscheduleMicrotask != null
                  ? (self, parent, zone, f) => unpackedscheduleMicrotask.dispatch(
                        [luaCallerArguments[0], self, parent, zone, f],
                        parentState: hydroState,
                      )
                  : null),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<ZoneSpecification>(boxer: (
      {required ZoneSpecification vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedZoneSpecification(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
