import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/arena.dart' as _be6e;
import 'package:flutter/src/gestures/binding.dart' as _e62e;
import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/hit_test.dart' as _baac;
import 'package:flutter/src/gestures/pointer_router.dart' as _f3e5;
import 'package:flutter/src/gestures/pointer_signal_resolver.dart' as _cfcd;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedGestureBinding extends _36c2.VMManagedBox<_e62e.GestureBinding> {
  VMManagedGestureBinding(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['pointerRouter'] = _36c2.maybeBoxObject<_f3e5.PointerRouter>(
        object: vmObject.pointerRouter,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['gestureArena'] = _36c2.maybeBoxObject<_be6e.GestureArenaManager>(
        object: vmObject.gestureArena,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pointerSignalResolver'] =
        _36c2.maybeBoxObject<_cfcd.PointerSignalResolver>(
            object: vmObject.pointerSignalResolver,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['resamplingEnabled'] = vmObject.resamplingEnabled;
    table['samplingOffset'] = _36c2.maybeBoxObject<_fac9.Duration>(
        object: vmObject.samplingOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['initInstances'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initInstances();
      return [];
    });
    table['unlocked'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.unlocked();
      return [];
    });
    table['cancelPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.cancelPointer(luaCallerArguments[1]);
      return [];
    });
    table['handlePointerEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handlePointerEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['hitTest'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.hitTest(
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestResult, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['dispatchEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispatchEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestResult?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['handleEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestEntry, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _e62e.GestureBinding vmObject;
}

void loadGestureBinding(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['gestureBindingInstance'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _e62e.GestureBinding.instance;
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_e62e.GestureBinding?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_e62e.GestureBinding>(boxer: (
      {required _e62e.GestureBinding vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedGestureBinding(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
