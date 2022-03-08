import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/material_localizations.dart' as _8728;
import 'package:flutter/src/material/time.dart' as _23b1;
import 'package:flutter/src/material/typography.dart' as _306e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDefaultMaterialLocalizations
    extends _36c2.VMManagedBox<_8728.DefaultMaterialLocalizations> {
  VMManagedDefaultMaterialLocalizations(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['formatHour'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.formatHour(
            _36c2.maybeUnBoxAndBuildArgument<_23b1.TimeOfDay, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            alwaysUse24HourFormat: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['alwaysUse24HourFormat']
                : null),
      ];
    });
    table['formatMinute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.formatMinute(
            _36c2.maybeUnBoxAndBuildArgument<_23b1.TimeOfDay, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['formatYear'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.formatYear(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['formatCompactDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.formatCompactDate(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['formatShortDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.formatShortDate(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['formatMediumDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.formatMediumDate(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['formatFullDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.formatFullDate(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['formatMonthYear'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.formatMonthYear(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['formatShortMonthDay'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.formatShortMonthDay(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['parseCompactDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.parseCompactDate(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_fac9.DateTime?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getNarrowWeekdays'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.String>>(
            object: vmObject.narrowWeekdays,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getFirstDayOfWeekIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.firstDayOfWeekIndex,
      ];
    });
    table['getDateSeparator'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.dateSeparator,
      ];
    });
    table['getDateHelpText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.dateHelpText,
      ];
    });
    table['getSelectYearSemanticsLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.selectYearSemanticsLabel,
      ];
    });
    table['getUnspecifiedDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.unspecifiedDate,
      ];
    });
    table['getUnspecifiedDateRange'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.unspecifiedDateRange,
      ];
    });
    table['getDateInputLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.dateInputLabel,
      ];
    });
    table['getDateRangeStartLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.dateRangeStartLabel,
      ];
    });
    table['getDateRangeEndLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.dateRangeEndLabel,
      ];
    });
    table['dateRangeStartDateSemanticLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.dateRangeStartDateSemanticLabel(luaCallerArguments[1]),
      ];
    });
    table['dateRangeEndDateSemanticLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.dateRangeEndDateSemanticLabel(luaCallerArguments[1]),
      ];
    });
    table['getInvalidDateFormatLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.invalidDateFormatLabel,
      ];
    });
    table['getInvalidDateRangeLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.invalidDateRangeLabel,
      ];
    });
    table['getDateOutOfRangeLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.dateOutOfRangeLabel,
      ];
    });
    table['getSaveButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.saveButtonLabel,
      ];
    });
    table['getDatePickerHelpText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.datePickerHelpText,
      ];
    });
    table['getDateRangePickerHelpText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.dateRangePickerHelpText,
      ];
    });
    table['getCalendarModeButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.calendarModeButtonLabel,
      ];
    });
    table['getInputDateModeButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.inputDateModeButtonLabel,
      ];
    });
    table['getTimePickerDialHelpText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.timePickerDialHelpText,
      ];
    });
    table['getTimePickerInputHelpText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.timePickerInputHelpText,
      ];
    });
    table['getTimePickerHourLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.timePickerHourLabel,
      ];
    });
    table['getTimePickerMinuteLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.timePickerMinuteLabel,
      ];
    });
    table['getInvalidTimeLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.invalidTimeLabel,
      ];
    });
    table['getDialModeButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.dialModeButtonLabel,
      ];
    });
    table['getInputTimeModeButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.inputTimeModeButtonLabel,
      ];
    });
    table['formatDecimal'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.formatDecimal(luaCallerArguments[1]),
      ];
    });
    table['formatTimeOfDay'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.formatTimeOfDay(
            _36c2.maybeUnBoxAndBuildArgument<_23b1.TimeOfDay, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            alwaysUse24HourFormat: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['alwaysUse24HourFormat']
                : null),
      ];
    });
    table['getOpenAppDrawerTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.openAppDrawerTooltip,
      ];
    });
    table['getBackButtonTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.backButtonTooltip,
      ];
    });
    table['getCloseButtonTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.closeButtonTooltip,
      ];
    });
    table['getDeleteButtonTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.deleteButtonTooltip,
      ];
    });
    table['getMoreButtonTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.moreButtonTooltip,
      ];
    });
    table['getNextMonthTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.nextMonthTooltip,
      ];
    });
    table['getPreviousMonthTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.previousMonthTooltip,
      ];
    });
    table['getNextPageTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.nextPageTooltip,
      ];
    });
    table['getPreviousPageTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.previousPageTooltip,
      ];
    });
    table['getFirstPageTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.firstPageTooltip,
      ];
    });
    table['getLastPageTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.lastPageTooltip,
      ];
    });
    table['getShowMenuTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.showMenuTooltip,
      ];
    });
    table['getDrawerLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.drawerLabel,
      ];
    });
    table['getPopupMenuLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.popupMenuLabel,
      ];
    });
    table['getDialogLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.dialogLabel,
      ];
    });
    table['getAlertDialogLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.alertDialogLabel,
      ];
    });
    table['getSearchFieldLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.searchFieldLabel,
      ];
    });
    table['aboutListTileTitle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.aboutListTileTitle(luaCallerArguments[1]),
      ];
    });
    table['getLicensesPageTitle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.licensesPageTitle,
      ];
    });
    table['licensesPackageDetailText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.licensesPackageDetailText(luaCallerArguments[1]),
      ];
    });
    table['pageRowsInfoTitle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.pageRowsInfoTitle(luaCallerArguments[1], luaCallerArguments[2],
            luaCallerArguments[3], luaCallerArguments[4]),
      ];
    });
    table['getRowsPerPageTitle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.rowsPerPageTitle,
      ];
    });
    table['tabLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.tabLabel(
            tabCount: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['tabCount']
                : null,
            tabIndex: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['tabIndex']
                : null),
      ];
    });
    table['selectedRowCountTitle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.selectedRowCountTitle(luaCallerArguments[1]),
      ];
    });
    table['getCancelButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.cancelButtonLabel,
      ];
    });
    table['getCloseButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.closeButtonLabel,
      ];
    });
    table['getContinueButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.continueButtonLabel,
      ];
    });
    table['getCopyButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.copyButtonLabel,
      ];
    });
    table['getCutButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.cutButtonLabel,
      ];
    });
    table['getOkButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.okButtonLabel,
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
    table['getViewLicensesButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.viewLicensesButtonLabel,
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
    table['getTimePickerHourModeAnnouncement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.timePickerHourModeAnnouncement,
      ];
    });
    table['getTimePickerMinuteModeAnnouncement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.timePickerMinuteModeAnnouncement,
      ];
    });
    table['getModalBarrierDismissLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.modalBarrierDismissLabel,
      ];
    });
    table['getScriptCategory'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _306e.ScriptCategory.values.indexWhere((x) {
          return x == vmObject.scriptCategory;
        }),
      ];
    });
    table['timeOfDayFormat'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _23b1.TimeOfDayFormat.values.indexWhere((x) {
          return x ==
              vmObject.timeOfDayFormat(
                  alwaysUse24HourFormat: luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['alwaysUse24HourFormat']
                      : null);
        }),
      ];
    });
    table['getSignedInLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.signedInLabel,
      ];
    });
    table['getHideAccountsLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hideAccountsLabel,
      ];
    });
    table['getShowAccountsLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.showAccountsLabel,
      ];
    });
    table['getReorderItemUp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.reorderItemUp,
      ];
    });
    table['getReorderItemDown'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.reorderItemDown,
      ];
    });
    table['getReorderItemLeft'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.reorderItemLeft,
      ];
    });
    table['getReorderItemRight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.reorderItemRight,
      ];
    });
    table['getReorderItemToEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.reorderItemToEnd,
      ];
    });
    table['getReorderItemToStart'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.reorderItemToStart,
      ];
    });
    table['getExpandedIconTapHint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.expandedIconTapHint,
      ];
    });
    table['getCollapsedIconTapHint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.collapsedIconTapHint,
      ];
    });
    table['getRefreshIndicatorSemanticLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.refreshIndicatorSemanticLabel,
      ];
    });
    table['remainingTextFieldCharacterCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.remainingTextFieldCharacterCount(luaCallerArguments[1]),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8728.DefaultMaterialLocalizations vmObject;
}

class RTManagedDefaultMaterialLocalizations
    extends _8728.DefaultMaterialLocalizations
    implements _36c2.Box<_8728.DefaultMaterialLocalizations> {
  RTManagedDefaultMaterialLocalizations(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_formatHour'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.formatHour(
                _36c2
                    .maybeUnBoxAndBuildArgument<_23b1.TimeOfDay, _fac9.dynamic>(
                        luaCallerArguments[1],
                        parentState: hydroState),
                alwaysUse24HourFormat:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['alwaysUse24HourFormat']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_formatMinute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.formatMinute(_36c2.maybeUnBoxAndBuildArgument<
                _23b1.TimeOfDay,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_formatYear'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.formatYear(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_formatCompactDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.formatCompactDate(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_formatShortDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.formatShortDate(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_formatMediumDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.formatMediumDate(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_formatFullDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.formatFullDate(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_formatMonthYear'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.formatMonthYear(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_formatShortMonthDay'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.formatShortMonthDay(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_parseCompactDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.parseCompactDate(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getNarrowWeekdays'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.narrowWeekdays];
    });
    table['_dart_getFirstDayOfWeekIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.firstDayOfWeekIndex];
    });
    table['_dart_getDateSeparator'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dateSeparator];
    });
    table['_dart_getDateHelpText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dateHelpText];
    });
    table['_dart_getSelectYearSemanticsLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.selectYearSemanticsLabel];
    });
    table['_dart_getUnspecifiedDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.unspecifiedDate];
    });
    table['_dart_getUnspecifiedDateRange'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.unspecifiedDateRange];
    });
    table['_dart_getDateInputLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dateInputLabel];
    });
    table['_dart_getDateRangeStartLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dateRangeStartLabel];
    });
    table['_dart_getDateRangeEndLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dateRangeEndLabel];
    });
    table['_dart_dateRangeStartDateSemanticLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.dateRangeStartDateSemanticLabel(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_dateRangeEndDateSemanticLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.dateRangeEndDateSemanticLabel(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getInvalidDateFormatLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.invalidDateFormatLabel];
    });
    table['_dart_getInvalidDateRangeLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.invalidDateRangeLabel];
    });
    table['_dart_getDateOutOfRangeLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dateOutOfRangeLabel];
    });
    table['_dart_getSaveButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.saveButtonLabel];
    });
    table['_dart_getDatePickerHelpText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.datePickerHelpText];
    });
    table['_dart_getDateRangePickerHelpText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dateRangePickerHelpText];
    });
    table['_dart_getCalendarModeButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.calendarModeButtonLabel];
    });
    table['_dart_getInputDateModeButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.inputDateModeButtonLabel];
    });
    table['_dart_getTimePickerDialHelpText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.timePickerDialHelpText];
    });
    table['_dart_getTimePickerInputHelpText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.timePickerInputHelpText];
    });
    table['_dart_getTimePickerHourLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.timePickerHourLabel];
    });
    table['_dart_getTimePickerMinuteLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.timePickerMinuteLabel];
    });
    table['_dart_getInvalidTimeLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.invalidTimeLabel];
    });
    table['_dart_getDialModeButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dialModeButtonLabel];
    });
    table['_dart_getInputTimeModeButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.inputTimeModeButtonLabel];
    });
    table['_dart_formatDecimal'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.formatDecimal(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_formatTimeOfDay'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.formatTimeOfDay(
                _36c2
                    .maybeUnBoxAndBuildArgument<_23b1.TimeOfDay, _fac9.dynamic>(
                        luaCallerArguments[1],
                        parentState: hydroState),
                alwaysUse24HourFormat:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['alwaysUse24HourFormat']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getOpenAppDrawerTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.openAppDrawerTooltip];
    });
    table['_dart_getBackButtonTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.backButtonTooltip];
    });
    table['_dart_getCloseButtonTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.closeButtonTooltip];
    });
    table['_dart_getDeleteButtonTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.deleteButtonTooltip];
    });
    table['_dart_getMoreButtonTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.moreButtonTooltip];
    });
    table['_dart_getNextMonthTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.nextMonthTooltip];
    });
    table['_dart_getPreviousMonthTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.previousMonthTooltip];
    });
    table['_dart_getNextPageTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.nextPageTooltip];
    });
    table['_dart_getPreviousPageTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.previousPageTooltip];
    });
    table['_dart_getFirstPageTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.firstPageTooltip];
    });
    table['_dart_getLastPageTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.lastPageTooltip];
    });
    table['_dart_getShowMenuTooltip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.showMenuTooltip];
    });
    table['_dart_getDrawerLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.drawerLabel];
    });
    table['_dart_getPopupMenuLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.popupMenuLabel];
    });
    table['_dart_getDialogLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dialogLabel];
    });
    table['_dart_getAlertDialogLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.alertDialogLabel];
    });
    table['_dart_getSearchFieldLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.searchFieldLabel];
    });
    table['_dart_aboutListTileTitle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.aboutListTileTitle(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getLicensesPageTitle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.licensesPageTitle];
    });
    table['_dart_licensesPackageDetailText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.licensesPackageDetailText(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_pageRowsInfoTitle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.pageRowsInfoTitle(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[3],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments[4],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getRowsPerPageTitle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.rowsPerPageTitle];
    });
    table['_dart_tabLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.tabLabel(
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
    table['_dart_selectedRowCountTitle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.selectedRowCountTitle(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getCancelButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.cancelButtonLabel];
    });
    table['_dart_getCloseButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.closeButtonLabel];
    });
    table['_dart_getContinueButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.continueButtonLabel];
    });
    table['_dart_getCopyButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.copyButtonLabel];
    });
    table['_dart_getCutButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.cutButtonLabel];
    });
    table['_dart_getOkButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.okButtonLabel];
    });
    table['_dart_getPasteButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.pasteButtonLabel];
    });
    table['_dart_getSelectAllButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.selectAllButtonLabel];
    });
    table['_dart_getViewLicensesButtonLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.viewLicensesButtonLabel];
    });
    table['_dart_getAnteMeridiemAbbreviation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.anteMeridiemAbbreviation];
    });
    table['_dart_getPostMeridiemAbbreviation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.postMeridiemAbbreviation];
    });
    table['_dart_getTimePickerHourModeAnnouncement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.timePickerHourModeAnnouncement];
    });
    table['_dart_getTimePickerMinuteModeAnnouncement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.timePickerMinuteModeAnnouncement];
    });
    table['_dart_getModalBarrierDismissLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.modalBarrierDismissLabel];
    });
    table['_dart_getScriptCategory'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.scriptCategory];
    });
    table['_dart_timeOfDayFormat'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _23b1.TimeOfDayFormat.values.indexWhere((x) {
          return x ==
              super.timeOfDayFormat(
                  alwaysUse24HourFormat: _36c2
                      .maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                          luaCallerArguments.length >= 2
                              ? luaCallerArguments[1]['alwaysUse24HourFormat']
                              : null,
                          parentState: hydroState));
        })
      ];
    });
    table['_dart_getSignedInLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.signedInLabel];
    });
    table['_dart_getHideAccountsLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hideAccountsLabel];
    });
    table['_dart_getShowAccountsLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.showAccountsLabel];
    });
    table['_dart_getReorderItemUp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.reorderItemUp];
    });
    table['_dart_getReorderItemDown'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.reorderItemDown];
    });
    table['_dart_getReorderItemLeft'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.reorderItemLeft];
    });
    table['_dart_getReorderItemRight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.reorderItemRight];
    });
    table['_dart_getReorderItemToEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.reorderItemToEnd];
    });
    table['_dart_getReorderItemToStart'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.reorderItemToStart];
    });
    table['_dart_getExpandedIconTapHint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.expandedIconTapHint];
    });
    table['_dart_getCollapsedIconTapHint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.collapsedIconTapHint];
    });
    table['_dart_getRefreshIndicatorSemanticLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.refreshIndicatorSemanticLabel];
    });
    table['_dart_remainingTextFieldCharacterCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.remainingTextFieldCharacterCount(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _8728.DefaultMaterialLocalizations unwrap() => this;
  _8728.DefaultMaterialLocalizations get vmObject => this;
  @_fac9.override
  _fac9.String formatHour(timeOfDay,
      {_fac9.bool alwaysUse24HourFormat = false}) {
    _36c2.Closure closure = table["formatHour"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String formatMinute(timeOfDay) {
    _36c2.Closure closure = table["formatMinute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String formatYear(date) {
    _36c2.Closure closure = table["formatYear"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String formatCompactDate(date) {
    _36c2.Closure closure = table["formatCompactDate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String formatShortDate(date) {
    _36c2.Closure closure = table["formatShortDate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String formatMediumDate(date) {
    _36c2.Closure closure = table["formatMediumDate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String formatFullDate(date) {
    _36c2.Closure closure = table["formatFullDate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String formatMonthYear(date) {
    _36c2.Closure closure = table["formatMonthYear"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String formatShortMonthDay(date) {
    _36c2.Closure closure = table["formatShortMonthDay"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.DateTime? parseCompactDate(inputString) {
    _36c2.Closure closure = table["parseCompactDate"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.List<_fac9.String> get narrowWeekdays {
    _36c2.Closure closure = table["getNarrowWeekdays"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>, _fac9.String>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get firstDayOfWeekIndex {
    _36c2.Closure closure = table["getFirstDayOfWeekIndex"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get dateSeparator {
    _36c2.Closure closure = table["getDateSeparator"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get dateHelpText {
    _36c2.Closure closure = table["getDateHelpText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get selectYearSemanticsLabel {
    _36c2.Closure closure = table["getSelectYearSemanticsLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get unspecifiedDate {
    _36c2.Closure closure = table["getUnspecifiedDate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get unspecifiedDateRange {
    _36c2.Closure closure = table["getUnspecifiedDateRange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get dateInputLabel {
    _36c2.Closure closure = table["getDateInputLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get dateRangeStartLabel {
    _36c2.Closure closure = table["getDateRangeStartLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get dateRangeEndLabel {
    _36c2.Closure closure = table["getDateRangeEndLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String dateRangeStartDateSemanticLabel(formattedDate) {
    _36c2.Closure closure = table["dateRangeStartDateSemanticLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String dateRangeEndDateSemanticLabel(formattedDate) {
    _36c2.Closure closure = table["dateRangeEndDateSemanticLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get invalidDateFormatLabel {
    _36c2.Closure closure = table["getInvalidDateFormatLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get invalidDateRangeLabel {
    _36c2.Closure closure = table["getInvalidDateRangeLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get dateOutOfRangeLabel {
    _36c2.Closure closure = table["getDateOutOfRangeLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get saveButtonLabel {
    _36c2.Closure closure = table["getSaveButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get datePickerHelpText {
    _36c2.Closure closure = table["getDatePickerHelpText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get dateRangePickerHelpText {
    _36c2.Closure closure = table["getDateRangePickerHelpText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get calendarModeButtonLabel {
    _36c2.Closure closure = table["getCalendarModeButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get inputDateModeButtonLabel {
    _36c2.Closure closure = table["getInputDateModeButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get timePickerDialHelpText {
    _36c2.Closure closure = table["getTimePickerDialHelpText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get timePickerInputHelpText {
    _36c2.Closure closure = table["getTimePickerInputHelpText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get timePickerHourLabel {
    _36c2.Closure closure = table["getTimePickerHourLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get timePickerMinuteLabel {
    _36c2.Closure closure = table["getTimePickerMinuteLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get invalidTimeLabel {
    _36c2.Closure closure = table["getInvalidTimeLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get dialModeButtonLabel {
    _36c2.Closure closure = table["getDialModeButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get inputTimeModeButtonLabel {
    _36c2.Closure closure = table["getInputTimeModeButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String formatDecimal(number) {
    _36c2.Closure closure = table["formatDecimal"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String formatTimeOfDay(timeOfDay,
      {_fac9.bool alwaysUse24HourFormat = false}) {
    _36c2.Closure closure = table["formatTimeOfDay"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get openAppDrawerTooltip {
    _36c2.Closure closure = table["getOpenAppDrawerTooltip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get backButtonTooltip {
    _36c2.Closure closure = table["getBackButtonTooltip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get closeButtonTooltip {
    _36c2.Closure closure = table["getCloseButtonTooltip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get deleteButtonTooltip {
    _36c2.Closure closure = table["getDeleteButtonTooltip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get moreButtonTooltip {
    _36c2.Closure closure = table["getMoreButtonTooltip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get nextMonthTooltip {
    _36c2.Closure closure = table["getNextMonthTooltip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get previousMonthTooltip {
    _36c2.Closure closure = table["getPreviousMonthTooltip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get nextPageTooltip {
    _36c2.Closure closure = table["getNextPageTooltip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get previousPageTooltip {
    _36c2.Closure closure = table["getPreviousPageTooltip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get firstPageTooltip {
    _36c2.Closure closure = table["getFirstPageTooltip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get lastPageTooltip {
    _36c2.Closure closure = table["getLastPageTooltip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get showMenuTooltip {
    _36c2.Closure closure = table["getShowMenuTooltip"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get drawerLabel {
    _36c2.Closure closure = table["getDrawerLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get popupMenuLabel {
    _36c2.Closure closure = table["getPopupMenuLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get dialogLabel {
    _36c2.Closure closure = table["getDialogLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get alertDialogLabel {
    _36c2.Closure closure = table["getAlertDialogLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get searchFieldLabel {
    _36c2.Closure closure = table["getSearchFieldLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String aboutListTileTitle(applicationName) {
    _36c2.Closure closure = table["aboutListTileTitle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get licensesPageTitle {
    _36c2.Closure closure = table["getLicensesPageTitle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String licensesPackageDetailText(licenseCount) {
    _36c2.Closure closure = table["licensesPackageDetailText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String pageRowsInfoTitle(
      firstRow, lastRow, rowCount, rowCountIsApproximate) {
    _36c2.Closure closure = table["pageRowsInfoTitle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get rowsPerPageTitle {
    _36c2.Closure closure = table["getRowsPerPageTitle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String tabLabel(
      {required _fac9.int tabCount, required _fac9.int tabIndex}) {
    _36c2.Closure closure = table["tabLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String selectedRowCountTitle(selectedRowCount) {
    _36c2.Closure closure = table["selectedRowCountTitle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get cancelButtonLabel {
    _36c2.Closure closure = table["getCancelButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get closeButtonLabel {
    _36c2.Closure closure = table["getCloseButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get continueButtonLabel {
    _36c2.Closure closure = table["getContinueButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get copyButtonLabel {
    _36c2.Closure closure = table["getCopyButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get cutButtonLabel {
    _36c2.Closure closure = table["getCutButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get okButtonLabel {
    _36c2.Closure closure = table["getOkButtonLabel"];
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
  _fac9.String get viewLicensesButtonLabel {
    _36c2.Closure closure = table["getViewLicensesButtonLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
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
  _fac9.String get timePickerHourModeAnnouncement {
    _36c2.Closure closure = table["getTimePickerHourModeAnnouncement"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get timePickerMinuteModeAnnouncement {
    _36c2.Closure closure = table["getTimePickerMinuteModeAnnouncement"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get modalBarrierDismissLabel {
    _36c2.Closure closure = table["getModalBarrierDismissLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _306e.ScriptCategory get scriptCategory {
    _36c2.Closure closure = table["getScriptCategory"];
    return _36c2.maybeUnBoxEnum(
        values: _306e.ScriptCategory.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _23b1.TimeOfDayFormat timeOfDayFormat(
      {_fac9.bool alwaysUse24HourFormat = false}) {
    _36c2.Closure closure = table["timeOfDayFormat"];
    return _36c2.maybeUnBoxEnum(
        values: _23b1.TimeOfDayFormat.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.String get signedInLabel {
    _36c2.Closure closure = table["getSignedInLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get hideAccountsLabel {
    _36c2.Closure closure = table["getHideAccountsLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get showAccountsLabel {
    _36c2.Closure closure = table["getShowAccountsLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get reorderItemUp {
    _36c2.Closure closure = table["getReorderItemUp"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get reorderItemDown {
    _36c2.Closure closure = table["getReorderItemDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get reorderItemLeft {
    _36c2.Closure closure = table["getReorderItemLeft"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get reorderItemRight {
    _36c2.Closure closure = table["getReorderItemRight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get reorderItemToEnd {
    _36c2.Closure closure = table["getReorderItemToEnd"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get reorderItemToStart {
    _36c2.Closure closure = table["getReorderItemToStart"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get expandedIconTapHint {
    _36c2.Closure closure = table["getExpandedIconTapHint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get collapsedIconTapHint {
    _36c2.Closure closure = table["getCollapsedIconTapHint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get refreshIndicatorSemanticLabel {
    _36c2.Closure closure = table["getRefreshIndicatorSemanticLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String remainingTextFieldCharacterCount(remaining) {
    _36c2.Closure closure = table["remainingTextFieldCharacterCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDefaultMaterialLocalizations(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['defaultMaterialLocalizations'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedDefaultMaterialLocalizations(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['defaultMaterialLocalizationsLoad'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _8728.DefaultMaterialLocalizations.load(
              _36c2.maybeUnBoxAndBuildArgument<_a643.Locale, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_8728.DefaultMaterialLocalizations>(boxer: (
      {required _8728.DefaultMaterialLocalizations vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDefaultMaterialLocalizations(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
