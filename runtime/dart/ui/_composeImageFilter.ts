import { I_ImageFilter } from "./_imageFilter";
import { IImageFilter } from "./imageFilter";
declare const dart: {
    ui: {
        _composeImageFilter: (
            this: void,
            _composeImageFilter: I_ComposeImageFilter,
            props: { innerFilter: IImageFilter; outerFilter: IImageFilter }
        ) => I_ComposeImageFilter;
    };
};
export interface I_ComposeImageFilter {
    innerFilter: IImageFilter;
    outerFilter: IImageFilter;
    nativeFilter: I_ImageFilter;
    toString: () => string;
    getHashCode: () => number;
}
export class _ComposeImageFilter implements IImageFilter {
    public readonly innerFilter: IImageFilter = undefined as any;
    public readonly outerFilter: IImageFilter = undefined as any;
    public readonly nativeFilter: I_ImageFilter = undefined as any;
    public constructor(props: {
        innerFilter: IImageFilter;
        outerFilter: IImageFilter;
    }) {
        dart.ui._composeImageFilter(this, props);
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
