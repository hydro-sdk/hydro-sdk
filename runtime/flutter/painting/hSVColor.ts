import { IColor } from "../../dart/ui/color";
declare const flutter: {
    painting: {
        hSVColorFromColor: (color: IColor) => IHSVColor;
        hSVColorLerp: (
            a: IHSVColor | undefined,
            b: IHSVColor | undefined,
            t: number
        ) => IHSVColor | undefined;
    };
};
export interface IHSVColor {
    alpha: number;
    hue: number;
    saturation: number;
    value: number;
    withAlpha: (alpha: number) => IHSVColor;
    withHue: (hue: number) => IHSVColor;
    withSaturation: (saturation: number) => IHSVColor;
    withValue: (value: number) => IHSVColor;
    toColor: () => IColor;
    getHashCode: () => number;
    toString: () => string;
}
export class HSVColor {
    public readonly alpha: number = undefined as any;
    public readonly hue: number = undefined as any;
    public readonly saturation: number = undefined as any;
    public readonly value: number = undefined as any;
    public static fromColor(color: IColor): IHSVColor {
        return flutter.painting.hSVColorFromColor(color);
    }
    public static lerp(
        a: IHSVColor | undefined,
        b: IHSVColor | undefined,
        t: number
    ): IHSVColor | undefined {
        return flutter.painting.hSVColorLerp(a, b, t);
    }
    private readonly _dart_withAlpha: (alpha: number) => IHSVColor =
        undefined as any;
    private readonly _dart_withHue: (hue: number) => IHSVColor =
        undefined as any;
    private readonly _dart_withSaturation: (saturation: number) => IHSVColor =
        undefined as any;
    private readonly _dart_withValue: (value: number) => IHSVColor =
        undefined as any;
    private readonly _dart_toColor: () => IColor = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public withAlpha(alpha: number): IHSVColor {
        return this._dart_withAlpha(alpha);
    }
    public withHue(hue: number): IHSVColor {
        return this._dart_withHue(hue);
    }
    public withSaturation(saturation: number): IHSVColor {
        return this._dart_withSaturation(saturation);
    }
    public withValue(value: number): IHSVColor {
        return this._dart_withValue(value);
    }
    public toColor(): IColor {
        return this._dart_toColor();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
