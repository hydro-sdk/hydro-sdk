declare const dart: {
    ui: {
        fontFeature: (
            this: void,
            fontFeature: IFontFeature,
            feature: string,
            value: number
        ) => IFontFeature;
        fontFeatureEnable: (feature: string) => IFontFeature;
        fontFeatureDisable: (feature: string) => IFontFeature;
        fontFeatureRandomize: () => IFontFeature;
        fontFeatureStylisticSet: (value: number) => IFontFeature;
        fontFeatureSlashedZero: () => IFontFeature;
        fontFeatureOldstyleFigures: () => IFontFeature;
        fontFeatureProportionalFigures: () => IFontFeature;
        fontFeatureTabularFigures: () => IFontFeature;
    };
};
export interface IFontFeature {
    feature: string;
    value: number;
    getHashCode: () => number;
    toString: () => string;
}
export class FontFeature {
    public static _kEncodedSize = 8;
    public readonly feature: string = undefined as any;
    public readonly value: number = undefined as any;
    public constructor(feature: string, value: number = 1) {
        dart.ui.fontFeature(this, feature, value);
    }
    public static enable(feature: string): IFontFeature {
        return dart.ui.fontFeatureEnable(feature);
    }
    public static disable(feature: string): IFontFeature {
        return dart.ui.fontFeatureDisable(feature);
    }
    public static randomize(): IFontFeature {
        return dart.ui.fontFeatureRandomize();
    }
    public static stylisticSet(value: number): IFontFeature {
        return dart.ui.fontFeatureStylisticSet(value);
    }
    public static slashedZero(): IFontFeature {
        return dart.ui.fontFeatureSlashedZero();
    }
    public static oldstyleFigures(): IFontFeature {
        return dart.ui.fontFeatureOldstyleFigures();
    }
    public static proportionalFigures(): IFontFeature {
        return dart.ui.fontFeatureProportionalFigures();
    }
    public static tabularFigures(): IFontFeature {
        return dart.ui.fontFeatureTabularFigures();
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
