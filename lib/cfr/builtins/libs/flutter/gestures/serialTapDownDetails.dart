import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/multitap.dart' as _2713;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSerialTapDownDetails
    extends _36c2.VMManagedBox<_2713.SerialTapDownDetails> {
  VMManagedSerialTapDownDetails(
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
    table['kind'] = _a643.PointerDeviceKind.values.indexWhere((x) {
      return x == vmObject.kind;
    });
    table['buttons'] = vmObject.buttons;
    table['count'] = vmObject.count;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _2713.SerialTapDownDetails vmObject;
}

class RTManagedSerialTapDownDetails extends _2713.SerialTapDownDetails
    implements _36c2.Box<_2713.SerialTapDownDetails> {
  RTManagedSerialTapDownDetails(
      {required _fac9.int buttons,
      required _fac9.int count,
      required _a643.Offset globalPosition,
      _a643.Offset? localPosition,
      required _a643.PointerDeviceKind kind,
      required this.table,
      required this.hydroState})
      : super(
            buttons: buttons,
            count: count,
            globalPosition: globalPosition,
            localPosition: localPosition,
            kind: kind) {
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
    table['kind'] = _a643.PointerDeviceKind.values.indexWhere((x) {
      return x == this.kind;
    });
    table['buttons'] = _36c2.maybeBoxObject(
        object: this.buttons,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['count'] = _36c2.maybeBoxObject(
        object: this.count, hydroState: hydroState, table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _2713.SerialTapDownDetails unwrap() => this;
  _2713.SerialTapDownDetails get vmObject => this;
}

void loadSerialTapDownDetails(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['serialTapDownDetails'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSerialTapDownDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          buttons: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['buttons']
              : null,
          count: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['count']
              : null,
          globalPosition: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
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
          kind: _36c2.maybeUnBoxEnum(
              values: _a643.PointerDeviceKind.values,
              boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['kind'] : null))
    ];
  });
  _36c2.registerBoxer<_2713.SerialTapDownDetails>(boxer: (
      {required _2713.SerialTapDownDetails vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSerialTapDownDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
