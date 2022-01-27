declare const flutter: {
    painting: {
        accumulator: (
            this: void,
            accumulator: IAccumulator,
            _value: number
        ) => IAccumulator;
    };
};
export interface IAccumulator {
    getValue: () => number;
    increment: (addend: number) => void;
}
export class Accumulator {
    public constructor(_value: number = 0) {
        flutter.painting.accumulator(this, _value);
    }
    private readonly _dart_getValue: () => number = undefined as any;
    private readonly _dart_increment: (addend: number) => void =
        undefined as any;
    public getValue(): number {
        return this._dart_getValue();
    }
    public increment(addend: number): void {
        return this._dart_increment(addend);
    }
}
