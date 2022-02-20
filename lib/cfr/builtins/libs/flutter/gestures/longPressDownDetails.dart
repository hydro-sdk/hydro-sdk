import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/long_press.dart' as _0586;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLongPressDownDetails
    extends _36c2.VMManagedBox<_0586.LongPressDownDetails> {
  VMManagedLongPressDownDetails(
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
    table['kind'] = _a643.PointerDeviceKind.values.indexWhere((x) {
      return x == vmObject.kind;
    });
    table['localPosition'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.localPosition,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _0586.LongPressDownDetails vmObject;
}

class RTManagedLongPressDownDetails extends _0586.LongPressDownDetails
    implements _36c2.Box<_0586.LongPressDownDetails> {
  RTManagedLongPressDownDetails(
      {required _a643.Offset globalPosition,
      _a643.PointerDeviceKind? kind,
      _a643.Offset? localPosition,
      required this.table,
      required this.hydroState})
      : super(
            globalPosition: globalPosition,
            kind: kind,
            localPosition: localPosition) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['globalPosition'] = _36c2.maybeBoxObject(
        object: this.globalPosition,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['kind'] = _a643.PointerDeviceKind.values.indexWhere((x) {
      return x == this.kind;
    });
    table['localPosition'] = _36c2.maybeBoxObject(
        object: this.localPosition,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _0586.LongPressDownDetails unwrap() => this;
  _0586.LongPressDownDetails get vmObject => this;
}

void loadLongPressDownDetails(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['longPressDownDetails'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedLongPressDownDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          globalPosition:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['globalPosition']
                      : null,
                  parentState: hydroState),
          kind: _36c2.maybeUnBoxEnum(
              values: _a643.PointerDeviceKind.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['kind']
                  : null),
          localPosition:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['localPosition']
                      : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_0586.LongPressDownDetails>(boxer: (
      {required _0586.LongPressDownDetails vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedLongPressDownDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
