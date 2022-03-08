import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/velocity_tracker.dart' as _10cb;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedVelocityEstimate
    extends _36c2.VMManagedBox<_10cb.VelocityEstimate> {
  VMManagedVelocityEstimate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['pixelsPerSecond'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.pixelsPerSecond,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['confidence'] = vmObject.confidence;
    table['duration'] = _36c2.maybeBoxObject<_fac9.Duration>(
        object: vmObject.duration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['offset'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.offset,
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

  final _10cb.VelocityEstimate vmObject;
}

class RTManagedVelocityEstimate extends _10cb.VelocityEstimate
    implements _36c2.Box<_10cb.VelocityEstimate> {
  RTManagedVelocityEstimate(
      {required _fac9.double confidence,
      required _fac9.Duration duration,
      required _a643.Offset offset,
      required _a643.Offset pixelsPerSecond,
      required this.table,
      required this.hydroState})
      : super(
            confidence: confidence,
            duration: duration,
            offset: offset,
            pixelsPerSecond: pixelsPerSecond) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['pixelsPerSecond'] = _36c2.maybeBoxObject(
        object: this.pixelsPerSecond,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['confidence'] = _36c2.maybeBoxObject(
        object: this.confidence,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['duration'] = _36c2.maybeBoxObject(
        object: this.duration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['offset'] = _36c2.maybeBoxObject(
        object: this.offset, hydroState: hydroState, table: _36c2.HydroTable());
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

  _10cb.VelocityEstimate unwrap() => this;
  _10cb.VelocityEstimate get vmObject => this;
  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadVelocityEstimate(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['velocityEstimate'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedVelocityEstimate(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          confidence: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['confidence']
              : null?.toDouble(),
          duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['duration']
                  : null,
              parentState: hydroState),
          offset: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['offset']
                  : null,
              parentState: hydroState),
          pixelsPerSecond: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pixelsPerSecond'] : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_10cb.VelocityEstimate>(boxer: (
      {required _10cb.VelocityEstimate vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedVelocityEstimate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
