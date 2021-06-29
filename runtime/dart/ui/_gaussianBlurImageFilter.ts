import { I_ImageFilter } from "./_imageFilter";
import { IImageFilter } from "./imageFilter";
import { TileMode } from "./tileMode";
declare const dart: {
    ui: {
        _gaussianBlurImageFilter: (
            this: void,
            _gaussianBlurImageFilter: I_GaussianBlurImageFilter,
            props: { sigmaX: number; sigmaY: number; tileMode: TileMode }
        ) => I_GaussianBlurImageFilter;
    };
};
export interface I_GaussianBlurImageFilter {
    sigmaX: number;
    sigmaY: number;
    tileMode: TileMode;
    nativeFilter: I_ImageFilter;
    toString: () => string;
    getHashCode: () => number;
}
export class _GaussianBlurImageFilter implements IImageFilter {
    public readonly sigmaX: number = undefined as any;
    public readonly sigmaY: number = undefined as any;
    public readonly tileMode: TileMode = undefined as any;
    public readonly nativeFilter: I_ImageFilter = undefined as any;
    public constructor(props: {
        sigmaX: number;
        sigmaY: number;
        tileMode: TileMode;
    }) {
        dart.ui._gaussianBlurImageFilter(this, props);
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
