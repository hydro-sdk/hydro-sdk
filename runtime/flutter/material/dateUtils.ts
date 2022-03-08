import { IDateTime } from "../../dart/core/dateTime";
import { IDateTimeRange } from "./dateTimeRange";
import { IMaterialLocalizations } from "./materialLocalizations";
declare const flutter: {
    material: {
        dateUtilsDateOnly: (date: IDateTime) => IDateTime;
        dateUtilsDatesOnly: (range: IDateTimeRange) => IDateTimeRange;
        dateUtilsIsSameDay: (
            dateA?: IDateTime | undefined,
            dateB?: IDateTime | undefined
        ) => boolean;
        dateUtilsIsSameMonth: (
            dateA?: IDateTime | undefined,
            dateB?: IDateTime | undefined
        ) => boolean;
        dateUtilsMonthDelta: (
            startDate: IDateTime,
            endDate: IDateTime
        ) => number;
        dateUtilsAddMonthsToMonthDate: (
            monthDate: IDateTime,
            monthsToAdd: number
        ) => IDateTime;
        dateUtilsAddDaysToDate: (date: IDateTime, days: number) => IDateTime;
        dateUtilsFirstDayOffset: (
            year: number,
            month: number,
            localizations: IMaterialLocalizations
        ) => number;
        dateUtilsGetDaysInMonth: (year: number, month: number) => number;
    };
};
export interface IDateUtils {}
export class DateUtils {
    public static dateOnly(date: IDateTime): IDateTime {
        return flutter.material.dateUtilsDateOnly(date);
    }
    public static datesOnly(range: IDateTimeRange): IDateTimeRange {
        return flutter.material.dateUtilsDatesOnly(range);
    }
    public static isSameDay(
        dateA?: IDateTime | undefined,
        dateB?: IDateTime | undefined
    ): boolean {
        return flutter.material.dateUtilsIsSameDay(dateA, dateB);
    }
    public static isSameMonth(
        dateA?: IDateTime | undefined,
        dateB?: IDateTime | undefined
    ): boolean {
        return flutter.material.dateUtilsIsSameMonth(dateA, dateB);
    }
    public static monthDelta(startDate: IDateTime, endDate: IDateTime): number {
        return flutter.material.dateUtilsMonthDelta(startDate, endDate);
    }
    public static addMonthsToMonthDate(
        monthDate: IDateTime,
        monthsToAdd: number
    ): IDateTime {
        return flutter.material.dateUtilsAddMonthsToMonthDate(
            monthDate,
            monthsToAdd
        );
    }
    public static addDaysToDate(date: IDateTime, days: number): IDateTime {
        return flutter.material.dateUtilsAddDaysToDate(date, days);
    }
    public static firstDayOffset(
        year: number,
        month: number,
        localizations: IMaterialLocalizations
    ): number {
        return flutter.material.dateUtilsFirstDayOffset(
            year,
            month,
            localizations
        );
    }
    public static getDaysInMonth(year: number, month: number): number {
        return flutter.material.dateUtilsGetDaysInMonth(year, month);
    }
}
