
import { IMap } from "../../dart/core/map";
import { IColor } from "../../dart/ui/color";
declare const flutter: {
painting: {
colorSwatch: <T>(this: void, colorSwatch: IColorSwatch<T>, primary: number, _swatch: IMap<T, IColor>) => IColorSwatch<T>
}
};
export interface IColorSwatch
<T>

{
value: number;
getHashCode: () => number;
toString: () => string;
withAlpha: (a: number) => IColor;
withOpacity: (opacity: number) => IColor;
withRed: (r: number) => IColor;
withGreen: (g: number) => IColor;
withBlue: (b: number) => IColor;
computeLuminance: () => number;
getAlpha: () => number;
getOpacity: () => number;
getRed: () => number;
getGreen: () => number;
getBlue: () => number;
}export class ColorSwatch
<T>
 implements IColor
{    public readonly value: number = undefined as any;
public constructor(primary: number, _swatch: IMap<T, IColor>){
flutter.painting.colorSwatch(this, primary, _swatch);}
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_withAlpha: (a: number) => IColor = undefined as any;
    private readonly _dart_withOpacity: (opacity: number) => IColor = undefined as any;
    private readonly _dart_withRed: (r: number) => IColor = undefined as any;
    private readonly _dart_withGreen: (g: number) => IColor = undefined as any;
    private readonly _dart_withBlue: (b: number) => IColor = undefined as any;
    private readonly _dart_computeLuminance: () => number = undefined as any;
    private readonly _dart_getAlpha: () => number = undefined as any;
    private readonly _dart_getOpacity: () => number = undefined as any;
    private readonly _dart_getRed: () => number = undefined as any;
    private readonly _dart_getGreen: () => number = undefined as any;
    private readonly _dart_getBlue: () => number = undefined as any;
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
public withAlpha(a: number) : IColor {
    return this._dart_withAlpha(a);
}
public withOpacity(opacity: number) : IColor {
    return this._dart_withOpacity(opacity);
}
public withRed(r: number) : IColor {
    return this._dart_withRed(r);
}
public withGreen(g: number) : IColor {
    return this._dart_withGreen(g);
}
public withBlue(b: number) : IColor {
    return this._dart_withBlue(b);
}
public computeLuminance() : number {
    return this._dart_computeLuminance();
}
public getAlpha() : number {
    return this._dart_getAlpha();
}
public getOpacity() : number {
    return this._dart_getOpacity();
}
public getRed() : number {
    return this._dart_getRed();
}
public getGreen() : number {
    return this._dart_getGreen();
}
public getBlue() : number {
    return this._dart_getBlue();
}
}
