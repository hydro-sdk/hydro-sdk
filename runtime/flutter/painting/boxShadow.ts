import { IList } from "../../dart/core/list";
import { BlurStyle } from "../../dart/ui/blurStyle";
import { Color, IColor } from "../../dart/ui/color";
import { IOffset, Offset } from "../../dart/ui/offset";
import { IPaint } from "../../dart/ui/paint";
import { IShadow } from "../../dart/ui/shadow";
declare const flutter: {
    painting: {
        boxShadow: (
            this: void,
            boxShadow: IBoxShadow,
            props: {
                blurRadius: number;
                blurStyle: BlurStyle;
                color: IColor;
                offset: IOffset;
                spreadRadius: number;
            }
        ) => IBoxShadow;
        boxShadowLerp: (
            a: IBoxShadow | undefined,
            b: IBoxShadow | undefined,
            t: number
        ) => IBoxShadow | undefined;
        boxShadowLerpList: (
            a: IList<IBoxShadow> | undefined,
            b: IList<IBoxShadow> | undefined,
            t: number
        ) => IList<IBoxShadow> | undefined;
    };
};
export interface IBoxShadow {
    spreadRadius: number;
    blurStyle: BlurStyle;
    color: IColor;
    offset: IOffset;
    blurRadius: number;
    toPaint: () => IPaint;
    scale: (factor: number) => IBoxShadow;
    getHashCode: () => number;
    toString: () => string;
    getBlurSigma: () => number;
}
export class BoxShadow implements IShadow {
    public readonly spreadRadius: number = undefined as any;
    public readonly blurStyle: BlurStyle = undefined as any;
    public readonly color: IColor = undefined as any;
    public readonly offset: IOffset = undefined as any;
    public readonly blurRadius: number = undefined as any;
    public constructor(props: {
        blurRadius?: number;
        blurStyle?: BlurStyle;
        color?: IColor;
        offset?: IOffset;
        spreadRadius?: number;
    }) {
        flutter.painting.boxShadow(this, {
            ...boxShadowDefaultProps,
            ...props,
        });
    }
    public static lerp(
        a: IBoxShadow | undefined,
        b: IBoxShadow | undefined,
        t: number
    ): IBoxShadow | undefined {
        return flutter.painting.boxShadowLerp(a, b, t);
    }
    public static lerpList(
        a: IList<IBoxShadow> | undefined,
        b: IList<IBoxShadow> | undefined,
        t: number
    ): IList<IBoxShadow> | undefined {
        return flutter.painting.boxShadowLerpList(a, b, t);
    }
    private readonly _dart_toPaint: () => IPaint = undefined as any;
    private readonly _dart_scale: (factor: number) => IBoxShadow =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getBlurSigma: () => number = undefined as any;
    public toPaint(): IPaint {
        return this._dart_toPaint();
    }
    public scale(factor: number): IBoxShadow {
        return this._dart_scale(factor);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getBlurSigma(): number {
        return this._dart_getBlurSigma();
    }
}
const boxShadowDefaultProps = {
    blurRadius: 0.0,
    blurStyle: BlurStyle.normal,
    color: new Color(0xff000000),
    offset: Offset.zero,
    spreadRadius: 0.0,
};
