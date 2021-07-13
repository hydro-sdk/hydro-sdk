import { BlurStyle } from "./blurStyle";
declare const dart: {
    ui: {
        maskFilterBlur: (_style: BlurStyle, _sigma: number) => IMaskFilter;
    };
};
export interface IMaskFilter {
    getHashCode: () => number;
    toString: () => string;
}
export class MaskFilter {
    public static _TypeNone = 0;
    public static _TypeBlur = 1;
    public static blur(_style: BlurStyle, _sigma: number): IMaskFilter {
        return dart.ui.maskFilterBlur(_style, _sigma);
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
