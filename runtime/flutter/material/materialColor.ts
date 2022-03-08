import { IColor } from "../../dart/ui/color";
import { IColorSwatch } from "../painting/colorSwatch";
declare const flutter: {
    material: {
        materialColor: (
            this: void,
            materialColor: IMaterialColor,
            primary: number,
            swatch: { [index: number]: IColor }
        ) => IMaterialColor;
    };
};
export interface IMaterialColor {
    value: number;
    getShade50: () => IColor;
    getShade100: () => IColor;
    getShade200: () => IColor;
    getShade300: () => IColor;
    getShade400: () => IColor;
    getShade500: () => IColor;
    getShade600: () => IColor;
    getShade700: () => IColor;
    getShade800: () => IColor;
    getShade900: () => IColor;
    toString: () => string;
    getHashCode: () => number;
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
}
export class MaterialColor implements IColorSwatch<number> {
    public readonly value: number = undefined as any;
    public constructor(primary: number, swatch: { [index: number]: IColor }) {
        flutter.material.materialColor(this, primary, swatch);
    }
    private readonly _dart_getShade50: () => IColor = undefined as any;
    private readonly _dart_getShade100: () => IColor = undefined as any;
    private readonly _dart_getShade200: () => IColor = undefined as any;
    private readonly _dart_getShade300: () => IColor = undefined as any;
    private readonly _dart_getShade400: () => IColor = undefined as any;
    private readonly _dart_getShade500: () => IColor = undefined as any;
    private readonly _dart_getShade600: () => IColor = undefined as any;
    private readonly _dart_getShade700: () => IColor = undefined as any;
    private readonly _dart_getShade800: () => IColor = undefined as any;
    private readonly _dart_getShade900: () => IColor = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_withAlpha: (a: number) => IColor = undefined as any;
    private readonly _dart_withOpacity: (opacity: number) => IColor =
        undefined as any;
    private readonly _dart_withRed: (r: number) => IColor = undefined as any;
    private readonly _dart_withGreen: (g: number) => IColor = undefined as any;
    private readonly _dart_withBlue: (b: number) => IColor = undefined as any;
    private readonly _dart_computeLuminance: () => number = undefined as any;
    private readonly _dart_getAlpha: () => number = undefined as any;
    private readonly _dart_getOpacity: () => number = undefined as any;
    private readonly _dart_getRed: () => number = undefined as any;
    private readonly _dart_getGreen: () => number = undefined as any;
    private readonly _dart_getBlue: () => number = undefined as any;
    public getShade50(): IColor {
        return this._dart_getShade50();
    }
    public getShade100(): IColor {
        return this._dart_getShade100();
    }
    public getShade200(): IColor {
        return this._dart_getShade200();
    }
    public getShade300(): IColor {
        return this._dart_getShade300();
    }
    public getShade400(): IColor {
        return this._dart_getShade400();
    }
    public getShade500(): IColor {
        return this._dart_getShade500();
    }
    public getShade600(): IColor {
        return this._dart_getShade600();
    }
    public getShade700(): IColor {
        return this._dart_getShade700();
    }
    public getShade800(): IColor {
        return this._dart_getShade800();
    }
    public getShade900(): IColor {
        return this._dart_getShade900();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public withAlpha(a: number): IColor {
        return this._dart_withAlpha(a);
    }
    public withOpacity(opacity: number): IColor {
        return this._dart_withOpacity(opacity);
    }
    public withRed(r: number): IColor {
        return this._dart_withRed(r);
    }
    public withGreen(g: number): IColor {
        return this._dart_withGreen(g);
    }
    public withBlue(b: number): IColor {
        return this._dart_withBlue(b);
    }
    public computeLuminance(): number {
        return this._dart_computeLuminance();
    }
    public getAlpha(): number {
        return this._dart_getAlpha();
    }
    public getOpacity(): number {
        return this._dart_getOpacity();
    }
    public getRed(): number {
        return this._dart_getRed();
    }
    public getGreen(): number {
        return this._dart_getGreen();
    }
    public getBlue(): number {
        return this._dart_getBlue();
    }
}
