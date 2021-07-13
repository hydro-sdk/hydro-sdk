import { IList } from "../core/list";
import { Color, IColor } from "./color";
import { IOffset, Offset } from "./offset";
import { IPaint } from "./paint";
declare const dart: {
    ui: {
        shadow: (
            this: void,
            shadow: IShadow,
            props: { blurRadius: number; color: IColor; offset: IOffset }
        ) => IShadow;
        shadowConvertRadiusToSigma: (radius: number) => number;
        shadowLerp: (
            a: IShadow | undefined,
            b: IShadow | undefined,
            t: number
        ) => IShadow | undefined;
        shadowLerpList: (
            a: IList<IShadow> | undefined,
            b: IList<IShadow> | undefined,
            t: number
        ) => IList<IShadow> | undefined;
    };
};
export interface IShadow {
    color: IColor;
    offset: IOffset;
    blurRadius: number;
    getBlurSigma: () => number;
    toPaint: () => IPaint;
    scale: (factor: number) => IShadow;
    getHashCode: () => number;
    toString: () => string;
}
export class Shadow {
    public static _kColorDefault = 0xff000000;
    public static _kBytesPerShadow = 16;
    public static _kColorOffset = 0 << 2;
    public static _kXOffset = 1 << 2;
    public static _kYOffset = 2 << 2;
    public static _kBlurOffset = 3 << 2;
    public readonly color: IColor = undefined as any;
    public readonly offset: IOffset = undefined as any;
    public readonly blurRadius: number = undefined as any;
    public constructor(props: {
        blurRadius?: number;
        color?: IColor;
        offset?: IOffset;
    }) {
        dart.ui.shadow(this, {
            ...shadowDefaultProps,
            ...props,
        });
    }
    public static convertRadiusToSigma(radius: number): number {
        return dart.ui.shadowConvertRadiusToSigma(radius);
    }
    public static lerp(
        a: IShadow | undefined,
        b: IShadow | undefined,
        t: number
    ): IShadow | undefined {
        return dart.ui.shadowLerp(a, b, t);
    }
    public static lerpList(
        a: IList<IShadow> | undefined,
        b: IList<IShadow> | undefined,
        t: number
    ): IList<IShadow> | undefined {
        return dart.ui.shadowLerpList(a, b, t);
    }
    private readonly _dart_getBlurSigma: () => number = undefined as any;
    private readonly _dart_toPaint: () => IPaint = undefined as any;
    private readonly _dart_scale: (factor: number) => IShadow =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getBlurSigma(): number {
        return this._dart_getBlurSigma();
    }
    public toPaint(): IPaint {
        return this._dart_toPaint();
    }
    public scale(factor: number): IShadow {
        return this._dart_scale(factor);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
const shadowDefaultProps = {
    blurRadius: 0.0,
    color: new Color(Shadow._kColorDefault),
    offset: Offset.zero,
};
