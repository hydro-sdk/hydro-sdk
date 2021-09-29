import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedZone extends VMManagedBox<Zone> {
  VMManagedZone(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['handleUncaughtError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleUncaughtError(
          maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<StackTrace, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['getParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.parent;
      if (returnValue != null) {
        return [
          maybeBoxObject<Zone?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getErrorZone'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Zone>(
            object: vmObject.errorZone,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['inSameErrorZone'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.inSameErrorZone(maybeUnBoxAndBuildArgument<Zone, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['fork'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Zone>(
            object: vmObject.fork(
                specification:
                    maybeUnBoxAndBuildArgument<ZoneSpecification?, dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['specification']
                            : null,
                        parentState: hydroState),
                zoneValues:
                    maybeUnBoxAndBuildArgument<Map<Object?, Object?>?, Object?>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['zoneValues']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['run'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedaction = luaCallerArguments[1];
      return [
        vmObject.run(() => unpackedaction.dispatch(
              [
                luaCallerArguments[0],
              ],
              parentState: hydroState,
            )[0]),
      ];
    });
    table['runUnary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedaction = luaCallerArguments[1];
      return [
        vmObject.runUnary(
            (argument) => unpackedaction.dispatch(
                  [luaCallerArguments[0], argument],
                  parentState: hydroState,
                )[0],
            luaCallerArguments[2]),
      ];
    });
    table['runBinary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedaction = luaCallerArguments[1];

      return [
        vmObject.runBinary(
            (argument1, argument2) => unpackedaction.dispatch(
                  [luaCallerArguments[0], argument1, argument2],
                  parentState: hydroState,
                )[0],
            luaCallerArguments[2],
            luaCallerArguments[3]),
      ];
    });
    table['runGuarded'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedaction = luaCallerArguments[1];
      vmObject.runGuarded(() => unpackedaction.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['runUnaryGuarded'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedaction = luaCallerArguments[1];
      vmObject.runUnaryGuarded(
          (argument) => unpackedaction.dispatch(
                [luaCallerArguments[0], argument],
                parentState: hydroState,
              ),
          luaCallerArguments[2]);
      return [];
    });
    table['runBinaryGuarded'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedaction = luaCallerArguments[1];

      vmObject.runBinaryGuarded(
          (argument1, argument2) => unpackedaction.dispatch(
                [luaCallerArguments[0], argument1, argument2],
                parentState: hydroState,
              ),
          luaCallerArguments[2],
          luaCallerArguments[3]);
      return [];
    });
    table['registerCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      return [
        vmObject.registerCallback(() => unpackedcallback.dispatch(
              [
                luaCallerArguments[0],
              ],
              parentState: hydroState,
            )[0]),
      ];
    });
    table['registerUnaryCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      return [
        vmObject.registerUnaryCallback((arg) => unpackedcallback.dispatch(
              [luaCallerArguments[0], arg],
              parentState: hydroState,
            )[0]),
      ];
    });
    table['registerBinaryCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      return [
        vmObject
            .registerBinaryCallback((arg1, arg2) => unpackedcallback.dispatch(
                  [luaCallerArguments[0], arg1, arg2],
                  parentState: hydroState,
                )[0]),
      ];
    });
    table['bindCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      return [
        vmObject.bindCallback(() => unpackedcallback.dispatch(
              [
                luaCallerArguments[0],
              ],
              parentState: hydroState,
            )[0]),
      ];
    });
    table['bindUnaryCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      return [
        vmObject.bindUnaryCallback((argument) => unpackedcallback.dispatch(
              [luaCallerArguments[0], argument],
              parentState: hydroState,
            )[0]),
      ];
    });
    table['bindBinaryCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      return [
        vmObject.bindBinaryCallback(
            (argument1, argument2) => unpackedcallback.dispatch(
                  [luaCallerArguments[0], argument1, argument2],
                  parentState: hydroState,
                )[0]),
      ];
    });
    table['bindCallbackGuarded'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      return [
        vmObject.bindCallbackGuarded(() => unpackedcallback.dispatch(
              [
                luaCallerArguments[0],
              ],
              parentState: hydroState,
            )),
      ];
    });
    table['bindUnaryCallbackGuarded'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      return [
        vmObject
            .bindUnaryCallbackGuarded((argument) => unpackedcallback.dispatch(
                  [luaCallerArguments[0], argument],
                  parentState: hydroState,
                )),
      ];
    });
    table['bindBinaryCallbackGuarded'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      return [
        vmObject.bindBinaryCallbackGuarded(
            (argument1, argument2) => unpackedcallback.dispatch(
                  [luaCallerArguments[0], argument1, argument2],
                  parentState: hydroState,
                )),
      ];
    });
    table['errorCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.errorCallback(
          maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<StackTrace?, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<AsyncError?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['scheduleMicrotask'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      vmObject.scheduleMicrotask(() => unpackedcallback.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['createTimer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[2];
      return [
        maybeBoxObject<Timer>(
            object: vmObject.createTimer(
                maybeUnBoxAndBuildArgument<Duration, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                () => unpackedcallback.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['createPeriodicTimer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[2];
      return [
        maybeBoxObject<Timer>(
            object: vmObject.createPeriodicTimer(
                maybeUnBoxAndBuildArgument<Duration, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                (timer) => unpackedcallback.dispatch(
                      [luaCallerArguments[0], timer],
                      parentState: hydroState,
                    )),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['print'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.print(luaCallerArguments[1]);
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Zone vmObject;
}

void loadZone({required HydroState hydroState, required HydroTable table}) {
  table['zoneCurrent'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Zone>(
          object: Zone.current, hydroState: hydroState, table: HydroTable()),
    ];
  });
  registerBoxer<Zone>(boxer: (
      {required Zone vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedZone(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
