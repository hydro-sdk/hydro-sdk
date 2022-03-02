import { IFuture } from "../../dart/async/future";
import { IDateTime } from "../../dart/core/dateTime";
import { IList, List } from "../../dart/core/list";
import { ILocale } from "../../dart/ui/locale";
import { ICupertinoLocalizations } from "./cupertinoLocalizations";
import { DatePickerDateOrder } from "./datePickerDateOrder";
import { DatePickerDateTimeOrder } from "./datePickerDateTimeOrder";
declare const flutter: {
    cupertino: {
        defaultCupertinoLocalizations: (
            this: void,
            defaultCupertinoLocalizations: IDefaultCupertinoLocalizations
        ) => IDefaultCupertinoLocalizations;
        defaultCupertinoLocalizationsLoad: (
            locale: ILocale
        ) => IFuture<ICupertinoLocalizations>;
    };
};
export interface IDefaultCupertinoLocalizations {
    datePickerYear: (yearIndex: number) => string;
    datePickerMonth: (monthIndex: number) => string;
    datePickerDayOfMonth: (dayIndex: number) => string;
    datePickerHour: (hour: number) => string;
    datePickerHourSemanticsLabel: (hour: number) => string;
    datePickerMinute: (minute: number) => string;
    datePickerMinuteSemanticsLabel: (minute: number) => string;
    datePickerMediumDate: (date: IDateTime) => string;
    getDatePickerDateOrder: () => DatePickerDateOrder;
    getDatePickerDateTimeOrder: () => DatePickerDateTimeOrder;
    getAnteMeridiemAbbreviation: () => string;
    getPostMeridiemAbbreviation: () => string;
    getTodayLabel: () => string;
    getAlertDialogLabel: () => string;
    tabSemanticsLabel: (props: {
        tabCount: number;
        tabIndex: number;
    }) => string;
    timerPickerHour: (hour: number) => string;
    timerPickerMinute: (minute: number) => string;
    timerPickerSecond: (second: number) => string;
    timerPickerHourLabel: (hour: number) => string;
    getTimerPickerHourLabels: () => IList<string>;
    timerPickerMinuteLabel: (minute: number) => string;
    getTimerPickerMinuteLabels: () => IList<string>;
    timerPickerSecondLabel: (second: number) => string;
    getTimerPickerSecondLabels: () => IList<string>;
    getCutButtonLabel: () => string;
    getCopyButtonLabel: () => string;
    getPasteButtonLabel: () => string;
    getSelectAllButtonLabel: () => string;
    getSearchTextFieldPlaceholderLabel: () => string;
    getModalBarrierDismissLabel: () => string;
}
export class DefaultCupertinoLocalizations implements ICupertinoLocalizations {
    public static _shortWeekdays = List.fromArray([
        "Mon",
        "Tue",
        "Wed",
        "Thu",
        "Fri",
        "Sat",
        "Sun",
    ]);
    public static _shortMonths = List.fromArray([
        "Jan",
        "Feb",
        "Mar",
        "Apr",
        "May",
        "Jun",
        "Jul",
        "Aug",
        "Sep",
        "Oct",
        "Nov",
        "Dec",
    ]);
    public static _months = List.fromArray([
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December",
    ]);
    public constructor() {
        flutter.cupertino.defaultCupertinoLocalizations(this);
    }
    public static load(locale: ILocale): IFuture<ICupertinoLocalizations> {
        return flutter.cupertino.defaultCupertinoLocalizationsLoad(locale);
    }
    private readonly _dart_datePickerYear: (yearIndex: number) => string =
        undefined as any;
    private readonly _dart_datePickerMonth: (monthIndex: number) => string =
        undefined as any;
    private readonly _dart_datePickerDayOfMonth: (dayIndex: number) => string =
        undefined as any;
    private readonly _dart_datePickerHour: (hour: number) => string =
        undefined as any;
    private readonly _dart_datePickerHourSemanticsLabel: (
        hour: number
    ) => string = undefined as any;
    private readonly _dart_datePickerMinute: (minute: number) => string =
        undefined as any;
    private readonly _dart_datePickerMinuteSemanticsLabel: (
        minute: number
    ) => string = undefined as any;
    private readonly _dart_datePickerMediumDate: (date: IDateTime) => string =
        undefined as any;
    private readonly _dart_getDatePickerDateOrder: () => DatePickerDateOrder =
        undefined as any;
    private readonly _dart_getDatePickerDateTimeOrder: () => DatePickerDateTimeOrder =
        undefined as any;
    private readonly _dart_getAnteMeridiemAbbreviation: () => string =
        undefined as any;
    private readonly _dart_getPostMeridiemAbbreviation: () => string =
        undefined as any;
    private readonly _dart_getTodayLabel: () => string = undefined as any;
    private readonly _dart_getAlertDialogLabel: () => string = undefined as any;
    private readonly _dart_tabSemanticsLabel: (props: {
        tabCount: number;
        tabIndex: number;
    }) => string = undefined as any;
    private readonly _dart_timerPickerHour: (hour: number) => string =
        undefined as any;
    private readonly _dart_timerPickerMinute: (minute: number) => string =
        undefined as any;
    private readonly _dart_timerPickerSecond: (second: number) => string =
        undefined as any;
    private readonly _dart_timerPickerHourLabel: (hour: number) => string =
        undefined as any;
    private readonly _dart_getTimerPickerHourLabels: () => IList<string> =
        undefined as any;
    private readonly _dart_timerPickerMinuteLabel: (minute: number) => string =
        undefined as any;
    private readonly _dart_getTimerPickerMinuteLabels: () => IList<string> =
        undefined as any;
    private readonly _dart_timerPickerSecondLabel: (second: number) => string =
        undefined as any;
    private readonly _dart_getTimerPickerSecondLabels: () => IList<string> =
        undefined as any;
    private readonly _dart_getCutButtonLabel: () => string = undefined as any;
    private readonly _dart_getCopyButtonLabel: () => string = undefined as any;
    private readonly _dart_getPasteButtonLabel: () => string = undefined as any;
    private readonly _dart_getSelectAllButtonLabel: () => string =
        undefined as any;
    private readonly _dart_getSearchTextFieldPlaceholderLabel: () => string =
        undefined as any;
    private readonly _dart_getModalBarrierDismissLabel: () => string =
        undefined as any;
    public datePickerYear(yearIndex: number): string {
        return this._dart_datePickerYear(yearIndex);
    }
    public datePickerMonth(monthIndex: number): string {
        return this._dart_datePickerMonth(monthIndex);
    }
    public datePickerDayOfMonth(dayIndex: number): string {
        return this._dart_datePickerDayOfMonth(dayIndex);
    }
    public datePickerHour(hour: number): string {
        return this._dart_datePickerHour(hour);
    }
    public datePickerHourSemanticsLabel(hour: number): string {
        return this._dart_datePickerHourSemanticsLabel(hour);
    }
    public datePickerMinute(minute: number): string {
        return this._dart_datePickerMinute(minute);
    }
    public datePickerMinuteSemanticsLabel(minute: number): string {
        return this._dart_datePickerMinuteSemanticsLabel(minute);
    }
    public datePickerMediumDate(date: IDateTime): string {
        return this._dart_datePickerMediumDate(date);
    }
    public getDatePickerDateOrder(): DatePickerDateOrder {
        return this._dart_getDatePickerDateOrder();
    }
    public getDatePickerDateTimeOrder(): DatePickerDateTimeOrder {
        return this._dart_getDatePickerDateTimeOrder();
    }
    public getAnteMeridiemAbbreviation(): string {
        return this._dart_getAnteMeridiemAbbreviation();
    }
    public getPostMeridiemAbbreviation(): string {
        return this._dart_getPostMeridiemAbbreviation();
    }
    public getTodayLabel(): string {
        return this._dart_getTodayLabel();
    }
    public getAlertDialogLabel(): string {
        return this._dart_getAlertDialogLabel();
    }
    public tabSemanticsLabel(props: {
        tabCount: number;
        tabIndex: number;
    }): string {
        return this._dart_tabSemanticsLabel(props);
    }
    public timerPickerHour(hour: number): string {
        return this._dart_timerPickerHour(hour);
    }
    public timerPickerMinute(minute: number): string {
        return this._dart_timerPickerMinute(minute);
    }
    public timerPickerSecond(second: number): string {
        return this._dart_timerPickerSecond(second);
    }
    public timerPickerHourLabel(hour: number): string {
        return this._dart_timerPickerHourLabel(hour);
    }
    public getTimerPickerHourLabels(): IList<string> {
        return this._dart_getTimerPickerHourLabels();
    }
    public timerPickerMinuteLabel(minute: number): string {
        return this._dart_timerPickerMinuteLabel(minute);
    }
    public getTimerPickerMinuteLabels(): IList<string> {
        return this._dart_getTimerPickerMinuteLabels();
    }
    public timerPickerSecondLabel(second: number): string {
        return this._dart_timerPickerSecondLabel(second);
    }
    public getTimerPickerSecondLabels(): IList<string> {
        return this._dart_getTimerPickerSecondLabels();
    }
    public getCutButtonLabel(): string {
        return this._dart_getCutButtonLabel();
    }
    public getCopyButtonLabel(): string {
        return this._dart_getCopyButtonLabel();
    }
    public getPasteButtonLabel(): string {
        return this._dart_getPasteButtonLabel();
    }
    public getSelectAllButtonLabel(): string {
        return this._dart_getSelectAllButtonLabel();
    }
    public getSearchTextFieldPlaceholderLabel(): string {
        return this._dart_getSearchTextFieldPlaceholderLabel();
    }
    public getModalBarrierDismissLabel(): string {
        return this._dart_getModalBarrierDismissLabel();
    }
}
