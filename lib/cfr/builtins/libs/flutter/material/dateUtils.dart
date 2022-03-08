import 'dart:core' as _fac9;

import 'package:flutter/src/material/date.dart' as _a848;
import 'package:flutter/src/material/material_localizations.dart' as _8728;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDateUtils extends _36c2.VMManagedBox<_a848.DateUtils> {
  VMManagedDateUtils(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _a848.DateUtils vmObject;
}

void loadDateUtils(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['dateUtilsDateOnly'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_fac9.DateTime>(
          object: _a848.DateUtils.dateOnly(
              _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['dateUtilsDatesOnly'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_a848.DateTimeRange>(
          object: _a848.DateUtils.datesOnly(_36c2.maybeUnBoxAndBuildArgument<
              _a848.DateTimeRange,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['dateUtilsIsSameDay'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _a848.DateUtils.isSameDay(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState)),
    ];
  });
  table['dateUtilsIsSameMonth'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _a848.DateUtils.isSameMonth(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState)),
    ];
  });
  table['dateUtilsMonthDelta'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _a848.DateUtils.monthDelta(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState)),
    ];
  });
  table['dateUtilsAddMonthsToMonthDate'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_fac9.DateTime>(
          object: _a848.DateUtils.addMonthsToMonthDate(
              _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              luaCallerArguments[2]),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['dateUtilsAddDaysToDate'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_fac9.DateTime>(
          object: _a848.DateUtils.addDaysToDate(
              _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              luaCallerArguments[2]),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['dateUtilsFirstDayOffset'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _a848.DateUtils.firstDayOffset(
          luaCallerArguments[1],
          luaCallerArguments[2],
          _36c2.maybeUnBoxAndBuildArgument<_8728.MaterialLocalizations,
              _fac9.dynamic>(luaCallerArguments[3], parentState: hydroState)),
    ];
  });
  table['dateUtilsGetDaysInMonth'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _a848.DateUtils.getDaysInMonth(
          luaCallerArguments[1], luaCallerArguments[2]),
    ];
  });
  _36c2.registerBoxer<_a848.DateUtils>(boxer: (
      {required _a848.DateUtils vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDateUtils(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
