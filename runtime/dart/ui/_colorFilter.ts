import { IColorFilter } from "./colorFilter";
declare const dart: {
    ui: {
        _colorFilterMode: (creator: IColorFilter) => I_ColorFilter;
        _colorFilterMatrix: (creator: IColorFilter) => I_ColorFilter;
        _colorFilterLinearToSrgbGamma: (creator: IColorFilter) => I_ColorFilter;
        _colorFilterSrgbToLinearGamma: (creator: IColorFilter) => I_ColorFilter;
    };
};
export interface I_ColorFilter {
    creator: IColorFilter;
}
export class _ColorFilter {
    public readonly creator: IColorFilter = undefined as any;
    public static mode(creator: IColorFilter): I_ColorFilter {
        return dart.ui._colorFilterMode(creator);
    }
    public static matrix(creator: IColorFilter): I_ColorFilter {
        return dart.ui._colorFilterMatrix(creator);
    }
    public static linearToSrgbGamma(creator: IColorFilter): I_ColorFilter {
        return dart.ui._colorFilterLinearToSrgbGamma(creator);
    }
    public static srgbToLinearGamma(creator: IColorFilter): I_ColorFilter {
        return dart.ui._colorFilterSrgbToLinearGamma(creator);
    }
}
