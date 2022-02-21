declare const flutter: {
    foundation: {
        bitField: <T>(
            this: void,
            bitField: IBitField<T>,
            length: number
        ) => IBitField<T>;
        bitFieldFilled: <T>(length: number, value: boolean) => IBitField<T>;
    };
};
export interface IBitField<T> {
    reset: (value: boolean) => void;
}
export class BitField<T> {
    public constructor(length: number) {
        flutter.foundation.bitField(this, length);
    }
    public static filled<T>(length: number, value: boolean): IBitField<T> {
        return flutter.foundation.bitFieldFilled(length, value);
    }
    private readonly _dart_reset: (value: boolean) => void = undefined as any;
    public reset(value: boolean = false): void {
        return this._dart_reset(value);
    }
}
