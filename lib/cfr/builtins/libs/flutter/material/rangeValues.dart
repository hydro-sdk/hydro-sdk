import 'dart:core' as _fac9;

import 'package:flutter/src/material/slider_theme.dart' as _4581;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRangeValues extends _36c2.VMManagedBox<_4581.RangeValues> {
  VMManagedRangeValues(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['start'] = vmObject.start;
    table['end'] = vmObject.end;
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _4581.RangeValues vmObject;
}

class RTManagedRangeValues extends _4581.RangeValues
    implements _36c2.Box<_4581.RangeValues> {
  RTManagedRangeValues(_fac9.double start$, _fac9.double end$,
      {required this.table, required this.hydroState})
      : super(
          start$,
          end$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['start'] = _36c2.maybeBoxObject(
        object: this.start, hydroState: hydroState, table: _36c2.HydroTable());
    table['end'] = _36c2.maybeBoxObject(
        object: this.end, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
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

  _4581.RangeValues unwrap() => this;
  _4581.RangeValues get vmObject => this;
  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRangeValues(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['rangeValues'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRangeValues(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble(),
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_4581.RangeValues>(boxer: (
      {required _4581.RangeValues vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRangeValues(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
