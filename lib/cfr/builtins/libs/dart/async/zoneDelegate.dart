import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedZoneDelegate extends VMManagedBox<ZoneDelegate> {
  VMManagedZoneDelegate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['handleUncaughtError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleUncaughtError(
          maybeUnBoxAndBuildArgument<Zone, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<StackTrace, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['run'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[2];
      return [
        vmObject.run(
            maybeUnBoxAndBuildArgument<Zone, dynamic>(luaCallerArguments[1],
                parentState: hydroState),
            () => unpackedf.dispatch(
                  [
                    luaCallerArguments[0],
                  ],
                  parentState: hydroState,
                )[0]),
      ];
    });
    table['runUnary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[2];
      return [
        vmObject.runUnary(
            maybeUnBoxAndBuildArgument<Zone, dynamic>(luaCallerArguments[1],
                parentState: hydroState),
            (arg) => unpackedf.dispatch(
                  [luaCallerArguments[0], arg],
                  parentState: hydroState,
                )[0],
            luaCallerArguments[3]),
      ];
    });
    table['runBinary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[2];

      return [
        vmObject.runBinary(
            maybeUnBoxAndBuildArgument<Zone, dynamic>(luaCallerArguments[1],
                parentState: hydroState),
            (arg1, arg2) => unpackedf.dispatch(
                  [luaCallerArguments[0], arg1, arg2],
                  parentState: hydroState,
                )[0],
            luaCallerArguments[3],
            luaCallerArguments[4]),
      ];
    });
    table['registerCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[2];
      return [
        vmObject.registerCallback(
            maybeUnBoxAndBuildArgument<Zone, dynamic>(luaCallerArguments[1],
                parentState: hydroState),
            () => unpackedf.dispatch(
                  [
                    luaCallerArguments[0],
                  ],
                  parentState: hydroState,
                )[0]),
      ];
    });
    table['registerUnaryCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[2];
      return [
        vmObject.registerUnaryCallback(
            maybeUnBoxAndBuildArgument<Zone, dynamic>(luaCallerArguments[1],
                parentState: hydroState),
            (arg) => unpackedf.dispatch(
                  [luaCallerArguments[0], arg],
                  parentState: hydroState,
                )[0]),
      ];
    });
    table['registerBinaryCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[2];
      return [
        vmObject.registerBinaryCallback(
            maybeUnBoxAndBuildArgument<Zone, dynamic>(luaCallerArguments[1],
                parentState: hydroState),
            (arg1, arg2) => unpackedf.dispatch(
                  [luaCallerArguments[0], arg1, arg2],
                  parentState: hydroState,
                )[0]),
      ];
    });
    table['errorCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.errorCallback(
          maybeUnBoxAndBuildArgument<Zone, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<StackTrace?, dynamic>(
              luaCallerArguments[3],
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
      Closure unpackedf = luaCallerArguments[2];
      vmObject.scheduleMicrotask(
          maybeUnBoxAndBuildArgument<Zone, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          () => unpackedf.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              ));
      return [];
    });
    table['createTimer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedf = luaCallerArguments[3];
      return [
        maybeBoxObject<Timer>(
            object: vmObject.createTimer(
                maybeUnBoxAndBuildArgument<Zone, dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Duration, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                () => unpackedf.dispatch(
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
      Closure unpackedf = luaCallerArguments[3];
      return [
        maybeBoxObject<Timer>(
            object: vmObject.createPeriodicTimer(
                maybeUnBoxAndBuildArgument<Zone, dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Duration, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                (timer) => unpackedf.dispatch(
                      [luaCallerArguments[0], timer],
                      parentState: hydroState,
                    )),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['print'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.print(
          maybeUnBoxAndBuildArgument<Zone, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]);
      return [];
    });
    table['fork'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Zone>(
            object: vmObject.fork(
                maybeUnBoxAndBuildArgument<Zone, dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<ZoneSpecification?, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Map<dynamic, dynamic>?, dynamic>(
                    luaCallerArguments[3],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ZoneDelegate vmObject;
}

void loadZoneDelegate(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<ZoneDelegate>(boxer: (
      {required ZoneDelegate vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedZoneDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
