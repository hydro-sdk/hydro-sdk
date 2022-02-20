import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/multitap.dart' as _2713;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSerialTapUpDetails
    extends _36c2.VMManagedBox<_2713.SerialTapUpDetails> {
  VMManagedSerialTapUpDetails(
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
    table['count'] = vmObject.count;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _2713.SerialTapUpDetails vmObject;
}

class RTManagedSerialTapUpDetails extends _2713.SerialTapUpDetails
    implements _36c2.Box<_2713.SerialTapUpDetails> {
  RTManagedSerialTapUpDetails(
      {required _fac9.int count,
      required _a643.Offset globalPosition,
      _a643.PointerDeviceKind? kind,
      _a643.Offset? localPosition,
      required this.table,
      required this.hydroState})
      : super(
            count: count,
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
    table['localPosition'] = _36c2.maybeBoxObject(
        object: this.localPosition,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['kind'] = _a643.PointerDeviceKind.values.indexWhere((x) {
      return x == this.kind;
    });
    table['count'] = _36c2.maybeBoxObject(
        object: this.count, hydroState: hydroState, table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _2713.SerialTapUpDetails unwrap() => this;
  _2713.SerialTapUpDetails get vmObject => this;
}

void loadSerialTapUpDetails(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['serialTapUpDetails'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSerialTapUpDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          count: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['count']
              : null,
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
  _36c2.registerBoxer<_2713.SerialTapUpDetails>(boxer: (
      {required _2713.SerialTapUpDetails vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSerialTapUpDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
