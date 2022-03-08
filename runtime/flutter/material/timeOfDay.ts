import { IBuildContext } from "../widgets/buildContext";
import { DayPeriod } from "./dayPeriod";
declare const flutter: {
    material: {
        timeOfDay: (
            this: void,
            timeOfDay: ITimeOfDay,
            props: { hour: number; minute: number }
        ) => ITimeOfDay;
        timeOfDayNow: () => ITimeOfDay;
    };
};
export interface ITimeOfDay {
    hour: number;
    minute: number;
    replacing: (props?: {
        hour?: number | undefined;
        minute?: number | undefined;
    }) => ITimeOfDay;
    getPeriod: () => DayPeriod;
    getHourOfPeriod: () => number;
    getPeriodOffset: () => number;
    format: (context: IBuildContext) => string;
    getHashCode: () => number;
    toString: () => string;
}
export class TimeOfDay {
    public static hoursPerDay = 24;
    public static hoursPerPeriod = 12;
    public static minutesPerHour = 60;
    public readonly hour: number = undefined as any;
    public readonly minute: number = undefined as any;
    public constructor(props: { hour: number; minute: number }) {
        flutter.material.timeOfDay(this, props);
    }
    public static now(): ITimeOfDay {
        return flutter.material.timeOfDayNow();
    }
    private readonly _dart_replacing: (props?: {
        hour?: number | undefined;
        minute?: number | undefined;
    }) => ITimeOfDay = undefined as any;
    private readonly _dart_getPeriod: () => DayPeriod = undefined as any;
    private readonly _dart_getHourOfPeriod: () => number = undefined as any;
    private readonly _dart_getPeriodOffset: () => number = undefined as any;
    private readonly _dart_format: (context: IBuildContext) => string =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public replacing(props?: {
        hour?: number | undefined;
        minute?: number | undefined;
    }): ITimeOfDay {
        return this._dart_replacing(props);
    }
    public getPeriod(): DayPeriod {
        return this._dart_getPeriod();
    }
    public getHourOfPeriod(): number {
        return this._dart_getHourOfPeriod();
    }
    public getPeriodOffset(): number {
        return this._dart_getPeriodOffset();
    }
    public format(context: IBuildContext): string {
        return this._dart_format(context);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
