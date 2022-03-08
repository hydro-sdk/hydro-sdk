import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/scale.dart' as _bb2d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScaleStartDetails
    extends _36c2.VMManagedBox<_bb2d.ScaleStartDetails> {
  VMManagedScaleStartDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['focalPoint'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.focalPoint,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['localFocalPoint'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.localFocalPoint,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pointerCount'] = vmObject.pointerCount;
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _bb2d.ScaleStartDetails vmObject;
}

class RTManagedScaleStartDetails extends _bb2d.ScaleStartDetails
    implements _36c2.Box<_bb2d.ScaleStartDetails> {
  RTManagedScaleStartDetails(
      {required _a643.Offset focalPoint,
      _a643.Offset? localFocalPoint,
      required _fac9.int pointerCount,
      required this.table,
      required this.hydroState})
      : super(
            focalPoint: focalPoint,
            localFocalPoint: localFocalPoint,
            pointerCount: pointerCount) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['focalPoint'] = _36c2.maybeBoxObject(
        object: this.focalPoint,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['localFocalPoint'] = _36c2.maybeBoxObject(
        object: this.localFocalPoint,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pointerCount'] = _36c2.maybeBoxObject(
        object: this.pointerCount,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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

  _bb2d.ScaleStartDetails unwrap() => this;
  _bb2d.ScaleStartDetails get vmObject => this;
  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadScaleStartDetails(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['scaleStartDetails'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedScaleStartDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          focalPoint:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['focalPoint']
                      : null,
                  parentState: hydroState),
          localFocalPoint:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['localFocalPoint']
                      : null,
                  parentState: hydroState),
          pointerCount: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['pointerCount']
              : null)
    ];
  });
  _36c2.registerBoxer<_bb2d.ScaleStartDetails>(boxer: (
      {required _bb2d.ScaleStartDetails vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedScaleStartDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
