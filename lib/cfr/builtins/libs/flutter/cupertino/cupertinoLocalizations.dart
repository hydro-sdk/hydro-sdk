import 'dart:core' as _fac9;

import 'package:flutter/src/cupertino/localizations.dart' as _d48f;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoLocalizations
    extends _36c2.VMManagedBox<_d48f.CupertinoLocalizations> {
  VMManagedCupertinoLocalizations(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['datePickerYear'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.datePickerYear(luaCallerArguments[1]),
      ];
    });
    table['datePickerMonth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.datePickerMonth(luaCallerArguments[1]),
      ];
    });
    table['datePickerDayOfMonth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.datePickerDayOfMonth(luaCallerArguments[1]),
      ];
    });
    table['datePickerMediumDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.datePickerMediumDate(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['datePickerHour'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.datePickerHour(luaCallerArguments[1]),
      ];
    });
    table['datePickerHourSemanticsLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue =
          vmObject.datePickerHourSemanticsLabel(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['datePickerMinute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.datePickerMinute(luaCallerArguments[1]),
      ];
    });
    table['datePickerMinuteSemanticsLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue =
          vmObject.datePickerMinuteSemanticsLabel(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getDatePickerDateOrder'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _d48f.DatePickerDateOrder.values.indexWhere((x) {
          return x == vmObject.datePickerDateOrder;
        }),
      ];
    });
    table['getDatePickerDateTimeOrder'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _d48f.DatePickerDateTimeOrder.values.indexWhere((x) {
          return x == vmObject.datePickerDateTimeOrder;
        }),
      ];
    });
    table['getAnteMeridiemAbbreviation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.anteMeridiemAbbreviation,
      ];
    });
    table['getPostMeridiemAbbreviation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.postMeridiemAbbreviation,
      ];
    });
    table['getTodayLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.todayLabel,
      ];
    });
    table['getAlertDialogLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.alertDialogLabel,
      ];
    });
    table['tabSemanticsLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.tabSemanticsLabel(
            tabCount: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['tabCount']
                : null,
            tabIndex: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['tabIndex']
                : null),
      ];
    });
    table['timerPickerHour'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.timerPickerHour(luaCallerArguments[1]),
      ];
    });
    table['timerPickerMinute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.timerPickerMinute(luaCallerArguments[1]),
      ];
    });
    table['timerPickerSecond'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.timerPickerSecond(luaCallerArguments[1]),
      ];
    });
    table['timerPickerHourLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.timerPickerHourLabel(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getTimerPickerHourLabels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.String>>(
            object: vmObject.timerPickerHourLabels,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['timerPickerMinuteLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue =
          vmObject.timerPickerMinuteLabel(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getTimerPickerMinuteLabels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.String>>(
            object: vmObject.timerPickerMinuteLabels,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['timerPickerSecondLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue =
          vmObject.timerPickerSecondLabel(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getTimerPickerSecondLabels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.String>>(
            object: vmObject.timerPickerSecondLabels,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getCutButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.cutButtonLabel,
      ];
    });
    table['getCopyButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.copyButtonLabel,
      ];
    });
    table['getPasteButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.pasteButtonLabel,
      ];
    });
    table['getSelectAllButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.selectAllButtonLabel,
      ];
    });
    table['getSearchTextFieldPlaceholderLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.searchTextFieldPlaceholderLabel,
      ];
    });
    table['getModalBarrierDismissLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.modalBarrierDismissLabel,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _d48f.CupertinoLocalizations vmObject;
}

class RTManagedCupertinoLocalizations extends _d48f.CupertinoLocalizations
    implements _36c2.Box<_d48f.CupertinoLocalizations> {
  RTManagedCupertinoLocalizations(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_datePickerYear'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: datePickerYear(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_datePickerMonth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: datePickerMonth(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_datePickerDayOfMonth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: datePickerDayOfMonth(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_datePickerMediumDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: datePickerMediumDate(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_datePickerHour'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: datePickerHour(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_datePickerHourSemanticsLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: datePickerHourSemanticsLabel(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_datePickerMinute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: datePickerMinute(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_datePickerMinuteSemanticsLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: datePickerMinuteSemanticsLabel(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getDatePickerDateOrder'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [datePickerDateOrder];
    });
    table['_dart_getDatePickerDateTimeOrder'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [datePickerDateTimeOrder];
    });
    table['_dart_getAnteMeridiemAbbreviation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [anteMeridiemAbbreviation];
    });
    table['_dart_getPostMeridiemAbbreviation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [postMeridiemAbbreviation];
    });
    table['_dart_getTodayLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [todayLabel];
    });
    table['_dart_getAlertDialogLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [alertDialogLabel];
    });
    table['_dart_tabSemanticsLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: tabSemanticsLabel(
                tabCount:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['tabCount']
                            : null,
                        parentState: hydroState),
                tabIndex:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['tabIndex']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_timerPickerHour'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: timerPickerHour(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_timerPickerMinute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: timerPickerMinute(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_timerPickerSecond'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: timerPickerSecond(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_timerPickerHourLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: timerPickerHourLabel(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getTimerPickerHourLabels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [timerPickerHourLabels];
    });
    table['_dart_timerPickerMinuteLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: timerPickerMinuteLabel(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getTimerPickerMinuteLabels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [timerPickerMinuteLabels];
    });
    table['_dart_timerPickerSecondLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: timerPickerSecondLabel(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getTimerPickerSecondLabels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [timerPickerSecondLabels];
    });
    table['_dart_getCutButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [cutButtonLabel];
    });
    table['_dart_getCopyButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [copyButtonLabel];
    });
    table['_dart_getPasteButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [pasteButtonLabel];
    });
    table['_dart_getSelectAllButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [selectAllButtonLabel];
    });
    table['_dart_getSearchTextFieldPlaceholderLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [searchTextFieldPlaceholderLabel];
    });
    table['_dart_getModalBarrierDismissLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [modalBarrierDismissLabel];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _d48f.CupertinoLocalizations unwrap() => this;
  _d48f.CupertinoLocalizations get vmObject => this;
  @_fac9.override
  _fac9.String datePickerYear(yearIndex) {
    _36c2.Closure closure = table["datePickerYear"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String datePickerMonth(monthIndex) {
    _36c2.Closure closure = table["datePickerMonth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String datePickerDayOfMonth(dayIndex) {
    _36c2.Closure closure = table["datePickerDayOfMonth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String datePickerMediumDate(date) {
    _36c2.Closure closure = table["datePickerMediumDate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String datePickerHour(hour) {
    _36c2.Closure closure = table["datePickerHour"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String? datePickerHourSemanticsLabel(hour) {
    _36c2.Closure closure = table["datePickerHourSemanticsLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String datePickerMinute(minute) {
    _36c2.Closure closure = table["datePickerMinute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String? datePickerMinuteSemanticsLabel(minute) {
    _36c2.Closure closure = table["datePickerMinuteSemanticsLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _d48f.DatePickerDateOrder get datePickerDateOrder {
    _36c2.Closure closure = table["getDatePickerDateOrder"];
    return _36c2.maybeUnBoxEnum(
        values: _d48f.DatePickerDateOrder.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _d48f.DatePickerDateTimeOrder get datePickerDateTimeOrder {
    _36c2.Closure closure = table["getDatePickerDateTimeOrder"];
    return _36c2.maybeUnBoxEnum(
        values: _d48f.DatePickerDateTimeOrder.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.String get anteMeridiemAbbreviation {
    _36c2.Closure closure = table["getAnteMeridiemAbbreviation"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get postMeridiemAbbreviation {
    _36c2.Closure closure = table["getPostMeridiemAbbreviation"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get todayLabel {
    _36c2.Closure closure = table["getTodayLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get alertDialogLabel {
    _36c2.Closure closure = table["getAlertDialogLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String tabSemanticsLabel(
      {required _fac9.int tabCount, required _fac9.int tabIndex}) {
    _36c2.Closure closure = table["tabSemanticsLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String timerPickerHour(hour) {
    _36c2.Closure closure = table["timerPickerHour"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String timerPickerMinute(minute) {
    _36c2.Closure closure = table["timerPickerMinute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String timerPickerSecond(second) {
    _36c2.Closure closure = table["timerPickerSecond"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String? timerPickerHourLabel(hour) {
    _36c2.Closure closure = table["timerPickerHourLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.List<_fac9.String> get timerPickerHourLabels {
    _36c2.Closure closure = table["getTimerPickerHourLabels"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>, _fac9.String>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String? timerPickerMinuteLabel(minute) {
    _36c2.Closure closure = table["timerPickerMinuteLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.List<_fac9.String> get timerPickerMinuteLabels {
    _36c2.Closure closure = table["getTimerPickerMinuteLabels"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>, _fac9.String>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String? timerPickerSecondLabel(second) {
    _36c2.Closure closure = table["timerPickerSecondLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.List<_fac9.String> get timerPickerSecondLabels {
    _36c2.Closure closure = table["getTimerPickerSecondLabels"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>, _fac9.String>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String get cutButtonLabel {
    _36c2.Closure closure = table["getCutButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get copyButtonLabel {
    _36c2.Closure closure = table["getCopyButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get pasteButtonLabel {
    _36c2.Closure closure = table["getPasteButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get selectAllButtonLabel {
    _36c2.Closure closure = table["getSelectAllButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get searchTextFieldPlaceholderLabel {
    _36c2.Closure closure = table["getSearchTextFieldPlaceholderLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get modalBarrierDismissLabel {
    _36c2.Closure closure = table["getModalBarrierDismissLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadCupertinoLocalizations(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['cupertinoLocalizations'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCupertinoLocalizations(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['cupertinoLocalizationsOf'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_d48f.CupertinoLocalizations>(
          object: _d48f.CupertinoLocalizations.of(_36c2
              .maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_d48f.CupertinoLocalizations>(boxer: (
      {required _d48f.CupertinoLocalizations vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCupertinoLocalizations(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
