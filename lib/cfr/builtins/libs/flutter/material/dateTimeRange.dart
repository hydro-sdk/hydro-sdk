import 'dart:core' as _fac9;

import 'package:flutter/src/material/date.dart' as _a848;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDateTimeRange extends _36c2.VMManagedBox<_a848.DateTimeRange> {
  VMManagedDateTimeRange(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['start'] = _36c2.maybeBoxObject<_fac9.DateTime>(
        object: vmObject.start,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['end'] = _36c2.maybeBoxObject<_fac9.DateTime>(
        object: vmObject.end,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getDuration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Duration>(
            object: vmObject.duration,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
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

  final _a848.DateTimeRange vmObject;
}

class RTManagedDateTimeRange extends _a848.DateTimeRange
    implements _36c2.Box<_a848.DateTimeRange> {
  RTManagedDateTimeRange(
      {required _fac9.DateTime end,
      required _fac9.DateTime start,
      required this.table,
      required this.hydroState})
      : super(end: end, start: start) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['start'] = _36c2.maybeBoxObject(
        object: this.start, hydroState: hydroState, table: _36c2.HydroTable());
    table['end'] = _36c2.maybeBoxObject(
        object: this.end, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getDuration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.duration];
    });
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

  _a848.DateTimeRange unwrap() => this;
  _a848.DateTimeRange get vmObject => this;
  @_fac9.override
  _fac9.Duration get duration {
    _36c2.Closure closure = table["getDuration"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

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

void loadDateTimeRange(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['dateTimeRange'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedDateTimeRange(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          end: _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['end']
                  : null,
              parentState: hydroState),
          start:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['start']
                      : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_a848.DateTimeRange>(boxer: (
      {required _a848.DateTimeRange vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDateTimeRange(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
