import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IRect } from "../../dart/ui/rect";
import { IShader } from "../../dart/ui/shader";
import { TextDirection } from "../../dart/ui/textDirection";
import { TileMode } from "../../dart/ui/tileMode";
import { Alignment } from "./alignment";
import { IAlignmentGeometry } from "./alignmentGeometry";
import { IGradient } from "./gradient";
import { IGradientTransform } from "./gradientTransform";
declare const flutter: {
    painting: {
        radialGradient: (
            this: void,
            radialGradient: IRadialGradient,
            props: {
                center: IAlignmentGeometry;
                focal?: IAlignmentGeometry | undefined;
                focalRadius: number;
                radius: number;
                stops?: IList<number> | undefined;
                tileMode: TileMode;
                transform?: IGradientTransform | undefined;
                colors: IList<IColor>;
            }
        ) => IRadialGradient;
        radialGradientLerp: (
            a: IRadialGradient | undefined,
            b: IRadialGradient | undefined,
            t: number
        ) => IRadialGradient | undefined;
    };
};
export interface IRadialGradient {
    center: IAlignmentGeometry;
    radius: number;
    tileMode: TileMode;
    focal: IAlignmentGeometry | undefined;
    focalRadius: number;
    colors: IList<IColor>;
    stops: IList<number> | undefined;
    transform: IGradientTransform | undefined;
    createShader: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IShader;
    scale: (factor: number) => IRadialGradient;
    lerpFrom: (a: IGradient | undefined, t: number) => IGradient | undefined;
    lerpTo: (b: IGradient | undefined, t: number) => IGradient | undefined;
    getHashCode: () => number;
    toString: () => string;
}
export class RadialGradient implements IGradient {
    public readonly center: IAlignmentGeometry = undefined as any;
    public readonly radius: number = undefined as any;
    public readonly tileMode: TileMode = undefined as any;
    public readonly focal: IAlignmentGeometry | undefined = undefined as any;
    public readonly focalRadius: number = undefined as any;
    public readonly colors: IList<IColor> = undefined as any;
    public readonly stops: IList<number> | undefined = undefined as any;
    public readonly transform: IGradientTransform | undefined =
        undefined as any;
    public constructor(props: {
        center?: IAlignmentGeometry;
        focal?: IAlignmentGeometry | undefined;
        focalRadius?: number;
        radius?: number;
        stops?: IList<number> | undefined;
        tileMode?: TileMode;
        transform?: IGradientTransform | undefined;
        colors: IList<IColor>;
    }) {
        flutter.painting.radialGradient(this, {
            ...radialGradientDefaultProps,
            ...props,
        });
    }
    public static lerp(
        a: IRadialGradient | undefined,
        b: IRadialGradient | undefined,
        t: number
    ): IRadialGradient | undefined {
        return flutter.painting.radialGradientLerp(a, b, t);
    }
    private readonly _dart_createShader: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IShader = undefined as any;
    private readonly _dart_scale: (factor: number) => IRadialGradient =
        undefined as any;
    private readonly _dart_lerpFrom: (
        a: IGradient | undefined,
        t: number
    ) => IGradient | undefined = undefined as any;
    private readonly _dart_lerpTo: (
        b: IGradient | undefined,
        t: number
    ) => IGradient | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public createShader(
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ): IShader {
        return this._dart_createShader(rect, props);
    }
    public scale(factor: number): IRadialGradient {
        return this._dart_scale(factor);
    }
    public lerpFrom(
        a: IGradient | undefined,
        t: number
    ): IGradient | undefined {
        return this._dart_lerpFrom(a, t);
    }
    public lerpTo(b: IGradient | undefined, t: number): IGradient | undefined {
        return this._dart_lerpTo(b, t);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
const radialGradientDefaultProps = {
    center: Alignment.center,
    focalRadius: 0.0,
    radius: 0.5,
    tileMode: TileMode.clamp,
};
