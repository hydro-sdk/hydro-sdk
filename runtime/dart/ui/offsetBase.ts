declare const dart: {
    ui: {
        offsetBase: (
            this: void,
            offsetBase: IOffsetBase,
            _dx: number,
            _dy: number
        ) => IOffsetBase;
    };
};
export interface IOffsetBase {
    getIsInfinite: () => boolean;
    getIsFinite: () => boolean;
    getHashCode: () => number;
    toString: () => string;
}
export class OffsetBase {
    public constructor(_dx: number, _dy: number) {
        dart.ui.offsetBase(this, _dx, _dy);
    }
    private readonly _dart_getIsInfinite: () => boolean = undefined as any;
    private readonly _dart_getIsFinite: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getIsInfinite(): boolean {
        return this._dart_getIsInfinite();
    }
    public getIsFinite(): boolean {
        return this._dart_getIsFinite();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
