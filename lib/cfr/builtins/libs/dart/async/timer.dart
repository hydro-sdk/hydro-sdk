import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTimer extends VMManagedBox<Timer> {
  VMManagedTimer(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['cancel'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.cancel();
      return [];
    });
    table['getTick'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.tick,
      ];
    });
    table['getIsActive'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isActive,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Timer vmObject;
}

void loadTimer({required HydroState hydroState, required HydroTable table}) {
  table['timer'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure unpackedcallback = luaCallerArguments[2];
    return [
      maybeBoxObject<Timer>(
          object: Timer(
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
          table: luaCallerArguments[0])
    ];
  });
  table['timerPeriodic'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure unpackedcallback = luaCallerArguments[2];
    return [
      maybeBoxObject<Timer>(
          object: Timer.periodic(
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
  table['timerRun'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure unpackedcallback = luaCallerArguments[1];
    Timer.run(() => unpackedcallback.dispatch(
          [
            luaCallerArguments[0],
          ],
          parentState: hydroState,
        ));
    return [];
  });
  registerBoxer<Timer>(boxer: (
      {required Timer vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTimer(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
