import { List } from "../core/list";
declare const dart: {
    ui: {
        fontWeightLerp: (
            a: IFontWeight | undefined,
            b: IFontWeight | undefined,
            t: number
        ) => IFontWeight | undefined;
        fontWeightW100: (this: void) => IFontWeight;
        fontWeightW200: (this: void) => IFontWeight;
        fontWeightW300: (this: void) => IFontWeight;
        fontWeightW400: (this: void) => IFontWeight;
        fontWeightW500: (this: void) => IFontWeight;
        fontWeightW600: (this: void) => IFontWeight;
        fontWeightW700: (this: void) => IFontWeight;
        fontWeightW800: (this: void) => IFontWeight;
        fontWeightW900: (this: void) => IFontWeight;
    };
};
export interface IFontWeight {
    index: number;
    toString: () => string;
}
export class FontWeight {
    public static w100 = dart.ui.fontWeightW100();
    public static w200 = dart.ui.fontWeightW200();
    public static w300 = dart.ui.fontWeightW300();
    public static w400 = dart.ui.fontWeightW400();
    public static w500 = dart.ui.fontWeightW500();
    public static w600 = dart.ui.fontWeightW600();
    public static w700 = dart.ui.fontWeightW700();
    public static w800 = dart.ui.fontWeightW800();
    public static w900 = dart.ui.fontWeightW900();
    public static normal = FontWeight.w400;
    public static bold = FontWeight.w700;
    public static values = List.fromArray([
        FontWeight.w100,
        FontWeight.w200,
        FontWeight.w300,
        FontWeight.w400,
        FontWeight.w500,
        FontWeight.w600,
        FontWeight.w700,
        FontWeight.w800,
        FontWeight.w900,
    ]);
    public readonly index: number = undefined as any;
    public static lerp(
        a: IFontWeight | undefined,
        b: IFontWeight | undefined,
        t: number
    ): IFontWeight | undefined {
        return dart.ui.fontWeightLerp(a, b, t);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
