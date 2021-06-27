declare const dart: {
    ui: {
        color: (this: void, color: IColor, value: number) => IColor;
        colorFromARGB: (a: number, r: number, g: number, b: number) => IColor;
        colorFromRGBO: (
            r: number,
            g: number,
            b: number,
            opacity: number
        ) => IColor;
        colorLerp: (
            a: IColor | undefined,
            b: IColor | undefined,
            t: number
        ) => IColor | undefined;
        colorAlphaBlend: (foreground: IColor, background: IColor) => IColor;
        colorGetAlphaFromOpacity: (opacity: number) => number;
    };
};
export interface IColor {
    value: number;
    getAlpha: () => number;
    getOpacity: () => number;
    getRed: () => number;
    getGreen: () => number;
    getBlue: () => number;
    withAlpha: (a: number) => IColor;
    withOpacity: (opacity: number) => IColor;
    withRed: (r: number) => IColor;
    withGreen: (g: number) => IColor;
    withBlue: (b: number) => IColor;
    computeLuminance: () => number;
    getHashCode: () => number;
    toString: () => string;
}
export class Color {
    public readonly value: number = undefined as any;
    public constructor(value: number) {
        dart.ui.color(this, value);
    }
    public static fromARGB(a: number, r: number, g: number, b: number): IColor {
        return dart.ui.colorFromARGB(a, r, g, b);
    }
    public static fromRGBO(
        r: number,
        g: number,
        b: number,
        opacity: number
    ): IColor {
        return dart.ui.colorFromRGBO(r, g, b, opacity);
    }
    public static lerp(
        a: IColor | undefined,
        b: IColor | undefined,
        t: number
    ): IColor | undefined {
        return dart.ui.colorLerp(a, b, t);
    }
    public static alphaBlend(foreground: IColor, background: IColor): IColor {
        return dart.ui.colorAlphaBlend(foreground, background);
    }
    public static getAlphaFromOpacity(opacity: number): number {
        return dart.ui.colorGetAlphaFromOpacity(opacity);
    }
    private readonly _dart_getAlpha: () => number = undefined as any;
    private readonly _dart_getOpacity: () => number = undefined as any;
    private readonly _dart_getRed: () => number = undefined as any;
    private readonly _dart_getGreen: () => number = undefined as any;
    private readonly _dart_getBlue: () => number = undefined as any;
    private readonly _dart_withAlpha: (a: number) => IColor = undefined as any;
    private readonly _dart_withOpacity: (opacity: number) => IColor =
        undefined as any;
    private readonly _dart_withRed: (r: number) => IColor = undefined as any;
    private readonly _dart_withGreen: (g: number) => IColor = undefined as any;
    private readonly _dart_withBlue: (b: number) => IColor = undefined as any;
    private readonly _dart_computeLuminance: () => number = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
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
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
