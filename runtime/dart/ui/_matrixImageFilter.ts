import { IFloat64List } from "../typed_data/float64List";
import { I_ImageFilter } from "./_imageFilter";
import { FilterQuality } from "./filterQuality";
import { IImageFilter } from "./imageFilter";
declare const dart: {
    ui: {
        _matrixImageFilter: (
            this: void,
            _matrixImageFilter: I_MatrixImageFilter,
            props: { data: IFloat64List; filterQuality: FilterQuality }
        ) => I_MatrixImageFilter;
    };
};
export interface I_MatrixImageFilter {
    data: IFloat64List;
    filterQuality: FilterQuality;
    nativeFilter: I_ImageFilter;
    toString: () => string;
    getHashCode: () => number;
}
export class _MatrixImageFilter implements IImageFilter {
    public readonly data: IFloat64List = undefined as any;
    public readonly filterQuality: FilterQuality = undefined as any;
    public readonly nativeFilter: I_ImageFilter = undefined as any;
    public constructor(props: {
        data: IFloat64List;
        filterQuality: FilterQuality;
    }) {
        dart.ui._matrixImageFilter(this, props);
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
