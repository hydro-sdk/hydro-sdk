import { I_ComposeImageFilter } from "./_composeImageFilter";
import { I_GaussianBlurImageFilter } from "./_gaussianBlurImageFilter";
import { I_MatrixImageFilter } from "./_matrixImageFilter";
import { IColorFilter } from "./colorFilter";
import { IImageFilter } from "./imageFilter";
declare const dart: {
    ui: {
        _imageFilterBlur: (filter: I_GaussianBlurImageFilter) => I_ImageFilter;
        _imageFilterMatrix: (filter: I_MatrixImageFilter) => I_ImageFilter;
        _imageFilterFromColorFilter: (filter: IColorFilter) => I_ImageFilter;
        _imageFilterComposed: (filter: I_ComposeImageFilter) => I_ImageFilter;
    };
};
export interface I_ImageFilter {
    creator: IImageFilter;
}
export class _ImageFilter {
    public readonly creator: IImageFilter = undefined as any;
    public static blur(filter: I_GaussianBlurImageFilter): I_ImageFilter {
        return dart.ui._imageFilterBlur(filter);
    }
    public static matrix(filter: I_MatrixImageFilter): I_ImageFilter {
        return dart.ui._imageFilterMatrix(filter);
    }
    public static fromColorFilter(filter: IColorFilter): I_ImageFilter {
        return dart.ui._imageFilterFromColorFilter(filter);
    }
    public static composed(filter: I_ComposeImageFilter): I_ImageFilter {
        return dart.ui._imageFilterComposed(filter);
    }
}
