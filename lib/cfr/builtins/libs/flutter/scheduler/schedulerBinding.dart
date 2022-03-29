import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:developer' as _afe6;
import 'dart:ui' as _a643;

import 'package:flutter/src/scheduler/binding.dart' as _fbe2;
import 'package:flutter/src/scheduler/priority.dart' as _49c2;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSchedulerBinding
    extends _36c2.VMManagedBox<_fbe2.SchedulerBinding> {
  VMManagedSchedulerBinding(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['initInstances'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initInstances();
      return [];
    });
    table['addTimingsCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      vmObject.addTimingsCallback((timings) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timings],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeTimingsCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      vmObject.removeTimingsCallback((timings) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timings],
            parentState: hydroState,
          ));
      return [];
    });
    table['initServiceExtensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initServiceExtensions();
      return [];
    });
    table['getLifecycleState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.lifecycleState;
      if (returnValue != null) {
        return [
          _a643.AppLifecycleState.values.indexWhere((x) {
            return x == returnValue;
          }),
        ];
      }
      return [];
    });
    table['scheduleTask'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedtask = luaCallerArguments[1];

      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.scheduleTask(
                () => unpackedtask.dispatch(
                      [luaCallerArguments[0]],
                      parentState: hydroState,
                    )[0],
                _36c2.maybeUnBoxAndBuildArgument<_49c2.Priority, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                debugLabel: luaCallerArguments.length >= 4
                    ? luaCallerArguments[3]['debugLabel']
                    : null,
                flow: _36c2
                    .maybeUnBoxAndBuildArgument<_afe6.Flow?, _fac9.dynamic>(
                        luaCallerArguments.length >= 4
                            ? luaCallerArguments[3]['flow']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['unlocked'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.unlocked();
      return [];
    });
    table['getTransientCallbackCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.transientCallbackCount,
      ];
    });
    table['scheduleFrameCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      return [
        vmObject.scheduleFrameCallback(
            (timeStamp) => unpackedcallback.dispatch(
                  [luaCallerArguments[0], timeStamp],
                  parentState: hydroState,
                ),
            rescheduling: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['rescheduling']
                : null),
      ];
    });
    table['cancelFrameCallbackWithId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.cancelFrameCallbackWithId(luaCallerArguments[1]);
      return [];
    });
    table['debugAssertNoTransientCallbacks'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugAssertNoTransientCallbacks(luaCallerArguments[1]),
      ];
    });
    table['addPersistentFrameCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      vmObject
          .addPersistentFrameCallback((timeStamp) => unpackedcallback.dispatch(
                [luaCallerArguments[0], timeStamp],
                parentState: hydroState,
              ));
      return [];
    });
    table['addPostFrameCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      vmObject.addPostFrameCallback((timeStamp) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timeStamp],
            parentState: hydroState,
          ));
      return [];
    });
    table['getEndOfFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.endOfFrame,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHasScheduledFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasScheduledFrame,
      ];
    });
    table['getSchedulerPhase'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _fbe2.SchedulerPhase.values.indexWhere((x) {
          return x == vmObject.schedulerPhase;
        }),
      ];
    });
    table['getFramesEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.framesEnabled,
      ];
    });
    table['ensureVisualUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.ensureVisualUpdate();
      return [];
    });
    table['scheduleFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.scheduleFrame();
      return [];
    });
    table['scheduleForcedFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.scheduleForcedFrame();
      return [];
    });
    table['scheduleWarmUpFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.scheduleWarmUpFrame();
      return [];
    });
    table['resetEpoch'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.resetEpoch();
      return [];
    });
    table['getCurrentFrameTimeStamp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Duration>(
            object: vmObject.currentFrameTimeStamp,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getCurrentSystemFrameTimeStamp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Duration>(
            object: vmObject.currentSystemFrameTimeStamp,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['handleBeginFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleBeginFrame(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['handleDrawFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleDrawFrame();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _fbe2.SchedulerBinding vmObject;
}

void loadSchedulerBinding(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['schedulerBindingInstance'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _fbe2.SchedulerBinding.instance;
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_fbe2.SchedulerBinding?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  table['schedulerBindingDebugPrintTransientCallbackRegistrationStack'] = _36c2
      .makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _fbe2.SchedulerBinding.debugPrintTransientCallbackRegistrationStack();
    return [];
  });
  _36c2.registerBoxer<_fbe2.SchedulerBinding>(boxer: (
      {required _fbe2.SchedulerBinding vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSchedulerBinding(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
