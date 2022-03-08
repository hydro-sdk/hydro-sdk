import { IDateTime } from "../../dart/core/dateTime";
import { IList } from "../../dart/core/list";
import { IBuildContext } from "../widgets/buildContext";
import { ScriptCategory } from "./scriptCategory";
import { ITimeOfDay } from "./timeOfDay";
import { TimeOfDayFormat } from "./timeOfDayFormat";
declare const flutter: {
    material: {
        materialLocalizations: (
            this: void,
            materialLocalizations: IMaterialLocalizations
        ) => IMaterialLocalizations;
        materialLocalizationsOf: (
            context: IBuildContext
        ) => IMaterialLocalizations;
    };
};
export interface IMaterialLocalizations {
    getOpenAppDrawerTooltip: () => string;
    getBackButtonTooltip: () => string;
    getCloseButtonTooltip: () => string;
    getDeleteButtonTooltip: () => string;
    getMoreButtonTooltip: () => string;
    getNextMonthTooltip: () => string;
    getPreviousMonthTooltip: () => string;
    getFirstPageTooltip: () => string;
    getLastPageTooltip: () => string;
    getNextPageTooltip: () => string;
    getPreviousPageTooltip: () => string;
    getShowMenuTooltip: () => string;
    aboutListTileTitle: (applicationName: string) => string;
    getLicensesPageTitle: () => string;
    licensesPackageDetailText: (licenseCount: number) => string;
    pageRowsInfoTitle: (
        firstRow: number,
        lastRow: number,
        rowCount: number,
        rowCountIsApproximate: boolean
    ) => string;
    getRowsPerPageTitle: () => string;
    tabLabel: (props: { tabCount: number; tabIndex: number }) => string;
    selectedRowCountTitle: (selectedRowCount: number) => string;
    getCancelButtonLabel: () => string;
    getCloseButtonLabel: () => string;
    getContinueButtonLabel: () => string;
    getCopyButtonLabel: () => string;
    getCutButtonLabel: () => string;
    getOkButtonLabel: () => string;
    getPasteButtonLabel: () => string;
    getSelectAllButtonLabel: () => string;
    getViewLicensesButtonLabel: () => string;
    getAnteMeridiemAbbreviation: () => string;
    getPostMeridiemAbbreviation: () => string;
    getTimePickerHourModeAnnouncement: () => string;
    getTimePickerMinuteModeAnnouncement: () => string;
    getModalBarrierDismissLabel: () => string;
    getDrawerLabel: () => string;
    getPopupMenuLabel: () => string;
    getDialogLabel: () => string;
    getAlertDialogLabel: () => string;
    getSearchFieldLabel: () => string;
    timeOfDayFormat: (props: {
        alwaysUse24HourFormat: boolean;
    }) => TimeOfDayFormat;
    getScriptCategory: () => ScriptCategory;
    formatDecimal: (number: number) => string;
    formatHour: (
        timeOfDay: ITimeOfDay,
        props: { alwaysUse24HourFormat: boolean }
    ) => string;
    formatMinute: (timeOfDay: ITimeOfDay) => string;
    formatTimeOfDay: (
        timeOfDay: ITimeOfDay,
        props: { alwaysUse24HourFormat: boolean }
    ) => string;
    formatYear: (date: IDateTime) => string;
    formatCompactDate: (date: IDateTime) => string;
    formatShortDate: (date: IDateTime) => string;
    formatMediumDate: (date: IDateTime) => string;
    formatFullDate: (date: IDateTime) => string;
    formatMonthYear: (date: IDateTime) => string;
    formatShortMonthDay: (date: IDateTime) => string;
    parseCompactDate: (
        inputString?: string | undefined
    ) => IDateTime | undefined;
    getNarrowWeekdays: () => IList<string>;
    getFirstDayOfWeekIndex: () => number;
    getDateSeparator: () => string;
    getDateHelpText: () => string;
    getSelectYearSemanticsLabel: () => string;
    getUnspecifiedDate: () => string;
    getUnspecifiedDateRange: () => string;
    getDateInputLabel: () => string;
    getDateRangeStartLabel: () => string;
    getDateRangeEndLabel: () => string;
    dateRangeStartDateSemanticLabel: (formattedDate: string) => string;
    dateRangeEndDateSemanticLabel: (formattedDate: string) => string;
    getInvalidDateFormatLabel: () => string;
    getInvalidDateRangeLabel: () => string;
    getDateOutOfRangeLabel: () => string;
    getSaveButtonLabel: () => string;
    getDatePickerHelpText: () => string;
    getDateRangePickerHelpText: () => string;
    getCalendarModeButtonLabel: () => string;
    getInputDateModeButtonLabel: () => string;
    getTimePickerDialHelpText: () => string;
    getTimePickerInputHelpText: () => string;
    getTimePickerHourLabel: () => string;
    getTimePickerMinuteLabel: () => string;
    getInvalidTimeLabel: () => string;
    getDialModeButtonLabel: () => string;
    getInputTimeModeButtonLabel: () => string;
    getSignedInLabel: () => string;
    getHideAccountsLabel: () => string;
    getShowAccountsLabel: () => string;
    getReorderItemToStart: () => string;
    getReorderItemToEnd: () => string;
    getReorderItemUp: () => string;
    getReorderItemDown: () => string;
    getReorderItemLeft: () => string;
    getReorderItemRight: () => string;
    getExpandedIconTapHint: () => string;
    getCollapsedIconTapHint: () => string;
    remainingTextFieldCharacterCount: (remaining: number) => string;
    getRefreshIndicatorSemanticLabel: () => string;
}
export class MaterialLocalizations {
    public constructor() {
        flutter.material.materialLocalizations(this);
    }
    public static of(context: IBuildContext): IMaterialLocalizations {
        return flutter.material.materialLocalizationsOf(context);
    }
    private readonly _dart_getOpenAppDrawerTooltip: () => string =
        undefined as any;
    private readonly _dart_getBackButtonTooltip: () => string =
        undefined as any;
    private readonly _dart_getCloseButtonTooltip: () => string =
        undefined as any;
    private readonly _dart_getDeleteButtonTooltip: () => string =
        undefined as any;
    private readonly _dart_getMoreButtonTooltip: () => string =
        undefined as any;
    private readonly _dart_getNextMonthTooltip: () => string = undefined as any;
    private readonly _dart_getPreviousMonthTooltip: () => string =
        undefined as any;
    private readonly _dart_getFirstPageTooltip: () => string = undefined as any;
    private readonly _dart_getLastPageTooltip: () => string = undefined as any;
    private readonly _dart_getNextPageTooltip: () => string = undefined as any;
    private readonly _dart_getPreviousPageTooltip: () => string =
        undefined as any;
    private readonly _dart_getShowMenuTooltip: () => string = undefined as any;
    private readonly _dart_aboutListTileTitle: (
        applicationName: string
    ) => string = undefined as any;
    private readonly _dart_getLicensesPageTitle: () => string =
        undefined as any;
    private readonly _dart_licensesPackageDetailText: (
        licenseCount: number
    ) => string = undefined as any;
    private readonly _dart_pageRowsInfoTitle: (
        firstRow: number,
        lastRow: number,
        rowCount: number,
        rowCountIsApproximate: boolean
    ) => string = undefined as any;
    private readonly _dart_getRowsPerPageTitle: () => string = undefined as any;
    private readonly _dart_tabLabel: (props: {
        tabCount: number;
        tabIndex: number;
    }) => string = undefined as any;
    private readonly _dart_selectedRowCountTitle: (
        selectedRowCount: number
    ) => string = undefined as any;
    private readonly _dart_getCancelButtonLabel: () => string =
        undefined as any;
    private readonly _dart_getCloseButtonLabel: () => string = undefined as any;
    private readonly _dart_getContinueButtonLabel: () => string =
        undefined as any;
    private readonly _dart_getCopyButtonLabel: () => string = undefined as any;
    private readonly _dart_getCutButtonLabel: () => string = undefined as any;
    private readonly _dart_getOkButtonLabel: () => string = undefined as any;
    private readonly _dart_getPasteButtonLabel: () => string = undefined as any;
    private readonly _dart_getSelectAllButtonLabel: () => string =
        undefined as any;
    private readonly _dart_getViewLicensesButtonLabel: () => string =
        undefined as any;
    private readonly _dart_getAnteMeridiemAbbreviation: () => string =
        undefined as any;
    private readonly _dart_getPostMeridiemAbbreviation: () => string =
        undefined as any;
    private readonly _dart_getTimePickerHourModeAnnouncement: () => string =
        undefined as any;
    private readonly _dart_getTimePickerMinuteModeAnnouncement: () => string =
        undefined as any;
    private readonly _dart_getModalBarrierDismissLabel: () => string =
        undefined as any;
    private readonly _dart_getDrawerLabel: () => string = undefined as any;
    private readonly _dart_getPopupMenuLabel: () => string = undefined as any;
    private readonly _dart_getDialogLabel: () => string = undefined as any;
    private readonly _dart_getAlertDialogLabel: () => string = undefined as any;
    private readonly _dart_getSearchFieldLabel: () => string = undefined as any;
    private readonly _dart_timeOfDayFormat: (props: {
        alwaysUse24HourFormat: boolean;
    }) => TimeOfDayFormat = undefined as any;
    private readonly _dart_getScriptCategory: () => ScriptCategory =
        undefined as any;
    private readonly _dart_formatDecimal: (number: number) => string =
        undefined as any;
    private readonly _dart_formatHour: (
        timeOfDay: ITimeOfDay,
        props: { alwaysUse24HourFormat: boolean }
    ) => string = undefined as any;
    private readonly _dart_formatMinute: (timeOfDay: ITimeOfDay) => string =
        undefined as any;
    private readonly _dart_formatTimeOfDay: (
        timeOfDay: ITimeOfDay,
        props: { alwaysUse24HourFormat: boolean }
    ) => string = undefined as any;
    private readonly _dart_formatYear: (date: IDateTime) => string =
        undefined as any;
    private readonly _dart_formatCompactDate: (date: IDateTime) => string =
        undefined as any;
    private readonly _dart_formatShortDate: (date: IDateTime) => string =
        undefined as any;
    private readonly _dart_formatMediumDate: (date: IDateTime) => string =
        undefined as any;
    private readonly _dart_formatFullDate: (date: IDateTime) => string =
        undefined as any;
    private readonly _dart_formatMonthYear: (date: IDateTime) => string =
        undefined as any;
    private readonly _dart_formatShortMonthDay: (date: IDateTime) => string =
        undefined as any;
    private readonly _dart_parseCompactDate: (
        inputString?: string | undefined
    ) => IDateTime | undefined = undefined as any;
    private readonly _dart_getNarrowWeekdays: () => IList<string> =
        undefined as any;
    private readonly _dart_getFirstDayOfWeekIndex: () => number =
        undefined as any;
    private readonly _dart_getDateSeparator: () => string = undefined as any;
    private readonly _dart_getDateHelpText: () => string = undefined as any;
    private readonly _dart_getSelectYearSemanticsLabel: () => string =
        undefined as any;
    private readonly _dart_getUnspecifiedDate: () => string = undefined as any;
    private readonly _dart_getUnspecifiedDateRange: () => string =
        undefined as any;
    private readonly _dart_getDateInputLabel: () => string = undefined as any;
    private readonly _dart_getDateRangeStartLabel: () => string =
        undefined as any;
    private readonly _dart_getDateRangeEndLabel: () => string =
        undefined as any;
    private readonly _dart_dateRangeStartDateSemanticLabel: (
        formattedDate: string
    ) => string = undefined as any;
    private readonly _dart_dateRangeEndDateSemanticLabel: (
        formattedDate: string
    ) => string = undefined as any;
    private readonly _dart_getInvalidDateFormatLabel: () => string =
        undefined as any;
    private readonly _dart_getInvalidDateRangeLabel: () => string =
        undefined as any;
    private readonly _dart_getDateOutOfRangeLabel: () => string =
        undefined as any;
    private readonly _dart_getSaveButtonLabel: () => string = undefined as any;
    private readonly _dart_getDatePickerHelpText: () => string =
        undefined as any;
    private readonly _dart_getDateRangePickerHelpText: () => string =
        undefined as any;
    private readonly _dart_getCalendarModeButtonLabel: () => string =
        undefined as any;
    private readonly _dart_getInputDateModeButtonLabel: () => string =
        undefined as any;
    private readonly _dart_getTimePickerDialHelpText: () => string =
        undefined as any;
    private readonly _dart_getTimePickerInputHelpText: () => string =
        undefined as any;
    private readonly _dart_getTimePickerHourLabel: () => string =
        undefined as any;
    private readonly _dart_getTimePickerMinuteLabel: () => string =
        undefined as any;
    private readonly _dart_getInvalidTimeLabel: () => string = undefined as any;
    private readonly _dart_getDialModeButtonLabel: () => string =
        undefined as any;
    private readonly _dart_getInputTimeModeButtonLabel: () => string =
        undefined as any;
    private readonly _dart_getSignedInLabel: () => string = undefined as any;
    private readonly _dart_getHideAccountsLabel: () => string =
        undefined as any;
    private readonly _dart_getShowAccountsLabel: () => string =
        undefined as any;
    private readonly _dart_getReorderItemToStart: () => string =
        undefined as any;
    private readonly _dart_getReorderItemToEnd: () => string = undefined as any;
    private readonly _dart_getReorderItemUp: () => string = undefined as any;
    private readonly _dart_getReorderItemDown: () => string = undefined as any;
    private readonly _dart_getReorderItemLeft: () => string = undefined as any;
    private readonly _dart_getReorderItemRight: () => string = undefined as any;
    private readonly _dart_getExpandedIconTapHint: () => string =
        undefined as any;
    private readonly _dart_getCollapsedIconTapHint: () => string =
        undefined as any;
    private readonly _dart_remainingTextFieldCharacterCount: (
        remaining: number
    ) => string = undefined as any;
    private readonly _dart_getRefreshIndicatorSemanticLabel: () => string =
        undefined as any;
    public getOpenAppDrawerTooltip(): string {
        return this._dart_getOpenAppDrawerTooltip();
    }
    public getBackButtonTooltip(): string {
        return this._dart_getBackButtonTooltip();
    }
    public getCloseButtonTooltip(): string {
        return this._dart_getCloseButtonTooltip();
    }
    public getDeleteButtonTooltip(): string {
        return this._dart_getDeleteButtonTooltip();
    }
    public getMoreButtonTooltip(): string {
        return this._dart_getMoreButtonTooltip();
    }
    public getNextMonthTooltip(): string {
        return this._dart_getNextMonthTooltip();
    }
    public getPreviousMonthTooltip(): string {
        return this._dart_getPreviousMonthTooltip();
    }
    public getFirstPageTooltip(): string {
        return this._dart_getFirstPageTooltip();
    }
    public getLastPageTooltip(): string {
        return this._dart_getLastPageTooltip();
    }
    public getNextPageTooltip(): string {
        return this._dart_getNextPageTooltip();
    }
    public getPreviousPageTooltip(): string {
        return this._dart_getPreviousPageTooltip();
    }
    public getShowMenuTooltip(): string {
        return this._dart_getShowMenuTooltip();
    }
    public aboutListTileTitle(applicationName: string): string {
        return this._dart_aboutListTileTitle(applicationName);
    }
    public getLicensesPageTitle(): string {
        return this._dart_getLicensesPageTitle();
    }
    public licensesPackageDetailText(licenseCount: number): string {
        return this._dart_licensesPackageDetailText(licenseCount);
    }
    public pageRowsInfoTitle(
        firstRow: number,
        lastRow: number,
        rowCount: number,
        rowCountIsApproximate: boolean
    ): string {
        return this._dart_pageRowsInfoTitle(
            firstRow,
            lastRow,
            rowCount,
            rowCountIsApproximate
        );
    }
    public getRowsPerPageTitle(): string {
        return this._dart_getRowsPerPageTitle();
    }
    public tabLabel(props: { tabCount: number; tabIndex: number }): string {
        return this._dart_tabLabel(props);
    }
    public selectedRowCountTitle(selectedRowCount: number): string {
        return this._dart_selectedRowCountTitle(selectedRowCount);
    }
    public getCancelButtonLabel(): string {
        return this._dart_getCancelButtonLabel();
    }
    public getCloseButtonLabel(): string {
        return this._dart_getCloseButtonLabel();
    }
    public getContinueButtonLabel(): string {
        return this._dart_getContinueButtonLabel();
    }
    public getCopyButtonLabel(): string {
        return this._dart_getCopyButtonLabel();
    }
    public getCutButtonLabel(): string {
        return this._dart_getCutButtonLabel();
    }
    public getOkButtonLabel(): string {
        return this._dart_getOkButtonLabel();
    }
    public getPasteButtonLabel(): string {
        return this._dart_getPasteButtonLabel();
    }
    public getSelectAllButtonLabel(): string {
        return this._dart_getSelectAllButtonLabel();
    }
    public getViewLicensesButtonLabel(): string {
        return this._dart_getViewLicensesButtonLabel();
    }
    public getAnteMeridiemAbbreviation(): string {
        return this._dart_getAnteMeridiemAbbreviation();
    }
    public getPostMeridiemAbbreviation(): string {
        return this._dart_getPostMeridiemAbbreviation();
    }
    public getTimePickerHourModeAnnouncement(): string {
        return this._dart_getTimePickerHourModeAnnouncement();
    }
    public getTimePickerMinuteModeAnnouncement(): string {
        return this._dart_getTimePickerMinuteModeAnnouncement();
    }
    public getModalBarrierDismissLabel(): string {
        return this._dart_getModalBarrierDismissLabel();
    }
    public getDrawerLabel(): string {
        return this._dart_getDrawerLabel();
    }
    public getPopupMenuLabel(): string {
        return this._dart_getPopupMenuLabel();
    }
    public getDialogLabel(): string {
        return this._dart_getDialogLabel();
    }
    public getAlertDialogLabel(): string {
        return this._dart_getAlertDialogLabel();
    }
    public getSearchFieldLabel(): string {
        return this._dart_getSearchFieldLabel();
    }
    public timeOfDayFormat(props: {
        alwaysUse24HourFormat?: boolean;
    }): TimeOfDayFormat {
        return this._dart_timeOfDayFormat({
            ...timeOfDayFormatDefaultProps,
            ...props,
        });
    }
    public getScriptCategory(): ScriptCategory {
        return this._dart_getScriptCategory();
    }
    public formatDecimal(number: number): string {
        return this._dart_formatDecimal(number);
    }
    public formatHour(
        timeOfDay: ITimeOfDay,
        props: { alwaysUse24HourFormat?: boolean }
    ): string {
        return this._dart_formatHour(timeOfDay, {
            ...formatHourDefaultProps,
            ...props,
        });
    }
    public formatMinute(timeOfDay: ITimeOfDay): string {
        return this._dart_formatMinute(timeOfDay);
    }
    public formatTimeOfDay(
        timeOfDay: ITimeOfDay,
        props: { alwaysUse24HourFormat?: boolean }
    ): string {
        return this._dart_formatTimeOfDay(timeOfDay, {
            ...formatTimeOfDayDefaultProps,
            ...props,
        });
    }
    public formatYear(date: IDateTime): string {
        return this._dart_formatYear(date);
    }
    public formatCompactDate(date: IDateTime): string {
        return this._dart_formatCompactDate(date);
    }
    public formatShortDate(date: IDateTime): string {
        return this._dart_formatShortDate(date);
    }
    public formatMediumDate(date: IDateTime): string {
        return this._dart_formatMediumDate(date);
    }
    public formatFullDate(date: IDateTime): string {
        return this._dart_formatFullDate(date);
    }
    public formatMonthYear(date: IDateTime): string {
        return this._dart_formatMonthYear(date);
    }
    public formatShortMonthDay(date: IDateTime): string {
        return this._dart_formatShortMonthDay(date);
    }
    public parseCompactDate(
        inputString?: string | undefined
    ): IDateTime | undefined {
        return this._dart_parseCompactDate(inputString);
    }
    public getNarrowWeekdays(): IList<string> {
        return this._dart_getNarrowWeekdays();
    }
    public getFirstDayOfWeekIndex(): number {
        return this._dart_getFirstDayOfWeekIndex();
    }
    public getDateSeparator(): string {
        return this._dart_getDateSeparator();
    }
    public getDateHelpText(): string {
        return this._dart_getDateHelpText();
    }
    public getSelectYearSemanticsLabel(): string {
        return this._dart_getSelectYearSemanticsLabel();
    }
    public getUnspecifiedDate(): string {
        return this._dart_getUnspecifiedDate();
    }
    public getUnspecifiedDateRange(): string {
        return this._dart_getUnspecifiedDateRange();
    }
    public getDateInputLabel(): string {
        return this._dart_getDateInputLabel();
    }
    public getDateRangeStartLabel(): string {
        return this._dart_getDateRangeStartLabel();
    }
    public getDateRangeEndLabel(): string {
        return this._dart_getDateRangeEndLabel();
    }
    public dateRangeStartDateSemanticLabel(formattedDate: string): string {
        return this._dart_dateRangeStartDateSemanticLabel(formattedDate);
    }
    public dateRangeEndDateSemanticLabel(formattedDate: string): string {
        return this._dart_dateRangeEndDateSemanticLabel(formattedDate);
    }
    public getInvalidDateFormatLabel(): string {
        return this._dart_getInvalidDateFormatLabel();
    }
    public getInvalidDateRangeLabel(): string {
        return this._dart_getInvalidDateRangeLabel();
    }
    public getDateOutOfRangeLabel(): string {
        return this._dart_getDateOutOfRangeLabel();
    }
    public getSaveButtonLabel(): string {
        return this._dart_getSaveButtonLabel();
    }
    public getDatePickerHelpText(): string {
        return this._dart_getDatePickerHelpText();
    }
    public getDateRangePickerHelpText(): string {
        return this._dart_getDateRangePickerHelpText();
    }
    public getCalendarModeButtonLabel(): string {
        return this._dart_getCalendarModeButtonLabel();
    }
    public getInputDateModeButtonLabel(): string {
        return this._dart_getInputDateModeButtonLabel();
    }
    public getTimePickerDialHelpText(): string {
        return this._dart_getTimePickerDialHelpText();
    }
    public getTimePickerInputHelpText(): string {
        return this._dart_getTimePickerInputHelpText();
    }
    public getTimePickerHourLabel(): string {
        return this._dart_getTimePickerHourLabel();
    }
    public getTimePickerMinuteLabel(): string {
        return this._dart_getTimePickerMinuteLabel();
    }
    public getInvalidTimeLabel(): string {
        return this._dart_getInvalidTimeLabel();
    }
    public getDialModeButtonLabel(): string {
        return this._dart_getDialModeButtonLabel();
    }
    public getInputTimeModeButtonLabel(): string {
        return this._dart_getInputTimeModeButtonLabel();
    }
    public getSignedInLabel(): string {
        return this._dart_getSignedInLabel();
    }
    public getHideAccountsLabel(): string {
        return this._dart_getHideAccountsLabel();
    }
    public getShowAccountsLabel(): string {
        return this._dart_getShowAccountsLabel();
    }
    public getReorderItemToStart(): string {
        return this._dart_getReorderItemToStart();
    }
    public getReorderItemToEnd(): string {
        return this._dart_getReorderItemToEnd();
    }
    public getReorderItemUp(): string {
        return this._dart_getReorderItemUp();
    }
    public getReorderItemDown(): string {
        return this._dart_getReorderItemDown();
    }
    public getReorderItemLeft(): string {
        return this._dart_getReorderItemLeft();
    }
    public getReorderItemRight(): string {
        return this._dart_getReorderItemRight();
    }
    public getExpandedIconTapHint(): string {
        return this._dart_getExpandedIconTapHint();
    }
    public getCollapsedIconTapHint(): string {
        return this._dart_getCollapsedIconTapHint();
    }
    public remainingTextFieldCharacterCount(remaining: number): string {
        return this._dart_remainingTextFieldCharacterCount(remaining);
    }
    public getRefreshIndicatorSemanticLabel(): string {
        return this._dart_getRefreshIndicatorSemanticLabel();
    }
}
const timeOfDayFormatDefaultProps = {
    alwaysUse24HourFormat: false,
};
const formatHourDefaultProps = {
    alwaysUse24HourFormat: false,
};
const formatTimeOfDayDefaultProps = {
    alwaysUse24HourFormat: false,
};
