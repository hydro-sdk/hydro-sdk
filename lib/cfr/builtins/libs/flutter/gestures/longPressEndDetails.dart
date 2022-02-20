import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/long_press.dart' as _0586;
import 'package:flutter/src/gestures/velocity_tracker.dart' as _10cb;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLongPressEndDetails
    extends _36c2.VMManagedBox<_0586.LongPressEndDetails> {
  VMManagedLongPressEndDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['globalPosition'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.globalPosition,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['localPosition'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.localPosition,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['velocity'] = _36c2.maybeBoxObject<_10cb.Velocity>(
        object: vmObject.velocity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _0586.LongPressEndDetails vmObject;
}

class RTManagedLongPressEndDetails extends _0586.LongPressEndDetails
    implements _36c2.Box<_0586.LongPressEndDetails> {
  RTManagedLongPressEndDetails(
      {required _a643.Offset globalPosition,
      _a643.Offset? localPosition,
      required _10cb.Velocity velocity,
      required this.table,
      required this.hydroState})
      : super(
            globalPosition: globalPosition,
            localPosition: localPosition,
            velocity: velocity) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['globalPosition'] = _36c2.maybeBoxObject(
        object: this.globalPosition,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['localPosition'] = _36c2.maybeBoxObject(
        object: this.localPosition,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['velocity'] = _36c2.maybeBoxObject(
        object: this.velocity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _0586.LongPressEndDetails unwrap() => this;
  _0586.LongPressEndDetails get vmObject => this;
}

void loadLongPressEndDetails(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['longPressEndDetails'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedLongPressEndDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          globalPosition:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['globalPosition']
                      : null,
                  parentState: hydroState),
          localPosition:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['localPosition']
                      : null,
                  parentState: hydroState),
          velocity: _36c2.maybeUnBoxAndBuildArgument<_10cb.Velocity, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['velocity'] : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_0586.LongPressEndDetails>(boxer: (
      {required _0586.LongPressEndDetails vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedLongPressEndDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
