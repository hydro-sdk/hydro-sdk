import { IDateTime } from "../../dart/core/dateTime";
import { IDuration } from "../../dart/core/duration";
declare const flutter: {
    material: {
        dateTimeRange: (
            this: void,
            dateTimeRange: IDateTimeRange,
            props: { end: IDateTime; start: IDateTime }
        ) => IDateTimeRange;
    };
};
export interface IDateTimeRange {
    start: IDateTime;
    end: IDateTime;
    getDuration: () => IDuration;
    getHashCode: () => number;
    toString: () => string;
}
export class DateTimeRange {
    public readonly start: IDateTime = undefined as any;
    public readonly end: IDateTime = undefined as any;
    public constructor(props: { end: IDateTime; start: IDateTime }) {
        flutter.material.dateTimeRange(this, props);
    }
    private readonly _dart_getDuration: () => IDuration = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getDuration(): IDuration {
        return this._dart_getDuration();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
