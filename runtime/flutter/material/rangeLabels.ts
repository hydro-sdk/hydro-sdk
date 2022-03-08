declare const flutter: {
    material: {
        rangeLabels: (
            this: void,
            rangeLabels: IRangeLabels,
            start: string,
            end: string
        ) => IRangeLabels;
    };
};
export interface IRangeLabels {
    start: string;
    end: string;
    getHashCode: () => number;
    toString: () => string;
}
export class RangeLabels {
    public readonly start: string = undefined as any;
    public readonly end: string = undefined as any;
    public constructor(start: string, end: string) {
        flutter.material.rangeLabels(this, start, end);
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
