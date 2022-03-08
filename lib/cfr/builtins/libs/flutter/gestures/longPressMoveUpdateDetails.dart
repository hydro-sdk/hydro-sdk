import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/long_press.dart' as _0586;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLongPressMoveUpdateDetails
    extends _36c2.VMManagedBox<_0586.LongPressMoveUpdateDetails> {
  VMManagedLongPressMoveUpdateDetails(
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
    table['offsetFromOrigin'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.offsetFromOrigin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['localOffsetFromOrigin'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.localOffsetFromOrigin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _0586.LongPressMoveUpdateDetails vmObject;
}

class RTManagedLongPressMoveUpdateDetails
    extends _0586.LongPressMoveUpdateDetails
    implements _36c2.Box<_0586.LongPressMoveUpdateDetails> {
  RTManagedLongPressMoveUpdateDetails(
      {required _a643.Offset globalPosition,
      _a643.Offset? localOffsetFromOrigin,
      _a643.Offset? localPosition,
      required _a643.Offset offsetFromOrigin,
      required this.table,
      required this.hydroState})
      : super(
            globalPosition: globalPosition,
            localOffsetFromOrigin: localOffsetFromOrigin,
            localPosition: localPosition,
            offsetFromOrigin: offsetFromOrigin) {
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
    table['offsetFromOrigin'] = _36c2.maybeBoxObject(
        object: this.offsetFromOrigin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['localOffsetFromOrigin'] = _36c2.maybeBoxObject(
        object: this.localOffsetFromOrigin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _0586.LongPressMoveUpdateDetails unwrap() => this;
  _0586.LongPressMoveUpdateDetails get vmObject => this;
}

void loadLongPressMoveUpdateDetails(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['longPressMoveUpdateDetails'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedLongPressMoveUpdateDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          globalPosition: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['globalPosition']
                  : null,
              parentState: hydroState),
          localOffsetFromOrigin:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['localOffsetFromOrigin']
                      : null,
                  parentState: hydroState),
          localPosition: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['localPosition'] : null,
              parentState: hydroState),
          offsetFromOrigin: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['offsetFromOrigin'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_0586.LongPressMoveUpdateDetails>(boxer: (
      {required _0586.LongPressMoveUpdateDetails vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedLongPressMoveUpdateDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
