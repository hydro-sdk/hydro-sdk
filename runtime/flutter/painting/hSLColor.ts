
import { IColor } from "../../dart/ui/color";
declare const flutter: {
painting: {
hSLColorFromColor: (color: IColor) => IHSLColor;
hSLColorLerp: (a: IHSLColor | undefined, b: IHSLColor | undefined, t: number) => IHSLColor | undefined
}
};
export interface IHSLColor


{
alpha: number;
hue: number;
saturation: number;
lightness: number;
withAlpha: (alpha: number) => IHSLColor;
withHue: (hue: number) => IHSLColor;
withSaturation: (saturation: number) => IHSLColor;
withLightness: (lightness: number) => IHSLColor;
toColor: () => IColor;
getHashCode: () => number;
toString: () => string;
}export class HSLColor


{    public readonly alpha: number = undefined as any;
    public readonly hue: number = undefined as any;
    public readonly saturation: number = undefined as any;
    public readonly lightness: number = undefined as any;
public static fromColor(color: IColor) : IHSLColor{
return flutter.painting.hSLColorFromColor(color);
}public static lerp(a: IHSLColor | undefined, b: IHSLColor | undefined, t: number) : IHSLColor | undefined{
return flutter.painting.hSLColorLerp(a, b, t);
}    private readonly _dart_withAlpha: (alpha: number) => IHSLColor = undefined as any;
    private readonly _dart_withHue: (hue: number) => IHSLColor = undefined as any;
    private readonly _dart_withSaturation: (saturation: number) => IHSLColor = undefined as any;
    private readonly _dart_withLightness: (lightness: number) => IHSLColor = undefined as any;
    private readonly _dart_toColor: () => IColor = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public withAlpha(alpha: number) : IHSLColor {
    return this._dart_withAlpha(alpha);
}
public withHue(hue: number) : IHSLColor {
    return this._dart_withHue(hue);
}
public withSaturation(saturation: number) : IHSLColor {
    return this._dart_withSaturation(saturation);
}
public withLightness(lightness: number) : IHSLColor {
    return this._dart_withLightness(lightness);
}
public toColor() : IColor {
    return this._dart_toColor();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
}
