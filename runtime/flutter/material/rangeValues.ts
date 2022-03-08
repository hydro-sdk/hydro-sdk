declare const flutter: {
    material: {
        rangeValues: (
            this: void,
            rangeValues: IRangeValues,
            start: number,
            end: number
        ) => IRangeValues;
    };
};
export interface IRangeValues {
    start: number;
    end: number;
    getHashCode: () => number;
    toString: () => string;
}
export class RangeValues {
    public readonly start: number = undefined as any;
    public readonly end: number = undefined as any;
    public constructor(start: number, end: number) {
        flutter.material.rangeValues(this, start, end);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
