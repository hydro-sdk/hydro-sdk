import { IList } from "../core/list";
import { BlendMode } from "./blendMode";
import { IColor } from "./color";
import { IImageFilter } from "./imageFilter";
declare const dart: {
    ui: {
        colorFilterMode: (color: IColor, blendMode: BlendMode) => IColorFilter;
        colorFilterMatrix: (matrix: IList<number>) => IColorFilter;
        colorFilterLinearToSrgbGamma: () => IColorFilter;
        colorFilterSrgbToLinearGamma: () => IColorFilter;
    };
};
export interface IColorFilter {
    getHashCode: () => number;
    toString: () => string;
}
export class ColorFilter implements IImageFilter {
    public static _kTypeMode = 1;
    public static _kTypeMatrix = 2;
    public static _kTypeLinearToSrgbGamma = 3;
    public static _kTypeSrgbToLinearGamma = 4;
    public static mode(color: IColor, blendMode: BlendMode): IColorFilter {
        return dart.ui.colorFilterMode(color, blendMode);
    }
    public static matrix(matrix: IList<number>): IColorFilter {
        return dart.ui.colorFilterMatrix(matrix);
    }
    public static linearToSrgbGamma(): IColorFilter {
        return dart.ui.colorFilterLinearToSrgbGamma();
    }
    public static srgbToLinearGamma(): IColorFilter {
        return dart.ui.colorFilterSrgbToLinearGamma();
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
