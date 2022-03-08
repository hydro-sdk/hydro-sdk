import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/recognizer.dart' as _02d2;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedOffsetPair extends _36c2.VMManagedBox<_02d2.OffsetPair> {
  VMManagedOffsetPair(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['local'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.local,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['global'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.global,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _02d2.OffsetPair vmObject;
}

class RTManagedOffsetPair extends _02d2.OffsetPair
    implements _36c2.Box<_02d2.OffsetPair> {
  RTManagedOffsetPair(
      {required _a643.Offset global,
      required _a643.Offset local,
      required this.table,
      required this.hydroState})
      : super(global: global, local: local) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['local'] = _36c2.maybeBoxObject(
        object: this.local, hydroState: hydroState, table: _36c2.HydroTable());
    table['global'] = _36c2.maybeBoxObject(
        object: this.global, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _02d2.OffsetPair unwrap() => this;
  _02d2.OffsetPair get vmObject => this;
  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadOffsetPair(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['offsetPair'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedOffsetPair(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          global: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['global']
                  : null,
              parentState: hydroState),
          local: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['local']
                  : null,
              parentState: hydroState))
    ];
  });
  table['offsetPairFromEventPosition'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_02d2.OffsetPair>(
          object: _02d2.OffsetPair.fromEventPosition(_36c2
              .maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['offsetPairFromEventDelta'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_02d2.OffsetPair>(
          object: _02d2.OffsetPair.fromEventDelta(_36c2
              .maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_02d2.OffsetPair>(boxer: (
      {required _02d2.OffsetPair vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedOffsetPair(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
