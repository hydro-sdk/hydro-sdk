import 'dart:core' as _fac9;

import 'package:flutter/src/material/time.dart' as _23b1;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTimeOfDay extends _36c2.VMManagedBox<_23b1.TimeOfDay> {
  VMManagedTimeOfDay(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['hour'] = vmObject.hour;
    table['minute'] = vmObject.minute;
    table['replacing'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_23b1.TimeOfDay>(
            object: vmObject.replacing(
                hour: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['hour']
                    : null,
                minute: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minute']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getPeriod'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _23b1.DayPeriod.values.indexWhere((x) {
          return x == vmObject.period;
        }),
      ];
    });
    table['getHourOfPeriod'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hourOfPeriod,
      ];
    });
    table['getPeriodOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.periodOffset,
      ];
    });
    table['format'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.format(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
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

  final _23b1.TimeOfDay vmObject;
}

class RTManagedTimeOfDay extends _23b1.TimeOfDay
    implements _36c2.Box<_23b1.TimeOfDay> {
  RTManagedTimeOfDay(
      {required _fac9.int hour,
      required _fac9.int minute,
      required this.table,
      required this.hydroState})
      : super(hour: hour, minute: minute) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['hour'] = _36c2.maybeBoxObject(
        object: this.hour, hydroState: hydroState, table: _36c2.HydroTable());
    table['minute'] = _36c2.maybeBoxObject(
        object: this.minute, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_replacing'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.replacing(
                hour: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['hour']
                            : null,
                        parentState: hydroState),
                minute:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['minute']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getPeriod'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.period];
    });
    table['_dart_getHourOfPeriod'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hourOfPeriod];
    });
    table['_dart_getPeriodOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.periodOffset];
    });
    table['_dart_format'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.format(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
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

  _23b1.TimeOfDay unwrap() => this;
  _23b1.TimeOfDay get vmObject => this;
  @_fac9.override
  _23b1.TimeOfDay replacing({_fac9.int? hour, _fac9.int? minute}) {
    _36c2.Closure closure = table["replacing"];
    return _36c2.maybeUnBoxAndBuildArgument<_23b1.TimeOfDay, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _23b1.DayPeriod get period {
    _36c2.Closure closure = table["getPeriod"];
    return _36c2.maybeUnBoxEnum(
        values: _23b1.DayPeriod.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.int get hourOfPeriod {
    _36c2.Closure closure = table["getHourOfPeriod"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get periodOffset {
    _36c2.Closure closure = table["getPeriodOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String format(context) {
    _36c2.Closure closure = table["format"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

void loadTimeOfDay(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['timeOfDay'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTimeOfDay(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          hour: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['hour']
              : null,
          minute: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['minute']
              : null)
    ];
  });
  table['timeOfDayNow'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_23b1.TimeOfDay>(
          object: _23b1.TimeOfDay.now(),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_23b1.TimeOfDay>(boxer: (
      {required _23b1.TimeOfDay vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTimeOfDay(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
