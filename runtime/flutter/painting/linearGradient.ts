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
        linearGradient: (
            this: void,
            linearGradient: ILinearGradient,
            props: {
                begin: IAlignmentGeometry;
                end: IAlignmentGeometry;
                stops?: IList<number> | undefined;
                tileMode: TileMode;
                transform?: IGradientTransform | undefined;
                colors: IList<IColor>;
            }
        ) => ILinearGradient;
        linearGradientLerp: (
            a: ILinearGradient | undefined,
            b: ILinearGradient | undefined,
            t: number
        ) => ILinearGradient | undefined;
    };
};
export interface ILinearGradient {
    begin: IAlignmentGeometry;
    end: IAlignmentGeometry;
    tileMode: TileMode;
    colors: IList<IColor>;
    stops: IList<number> | undefined;
    transform: IGradientTransform | undefined;
    createShader: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IShader;
    scale: (factor: number) => ILinearGradient;
    lerpFrom: (a: IGradient | undefined, t: number) => IGradient | undefined;
    lerpTo: (b: IGradient | undefined, t: number) => IGradient | undefined;
    getHashCode: () => number;
    toString: () => string;
}
export class LinearGradient implements IGradient {
    public readonly begin: IAlignmentGeometry = undefined as any;
    public readonly end: IAlignmentGeometry = undefined as any;
    public readonly tileMode: TileMode = undefined as any;
    public readonly colors: IList<IColor> = undefined as any;
    public readonly stops: IList<number> | undefined = undefined as any;
    public readonly transform: IGradientTransform | undefined =
        undefined as any;
    public constructor(props: {
        begin?: IAlignmentGeometry;
        end?: IAlignmentGeometry;
        stops?: IList<number> | undefined;
        tileMode?: TileMode;
        transform?: IGradientTransform | undefined;
        colors: IList<IColor>;
    }) {
        flutter.painting.linearGradient(this, {
            ...linearGradientDefaultProps,
            ...props,
        });
    }
    public static lerp(
        a: ILinearGradient | undefined,
        b: ILinearGradient | undefined,
        t: number
    ): ILinearGradient | undefined {
        return flutter.painting.linearGradientLerp(a, b, t);
    }
    private readonly _dart_createShader: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IShader = undefined as any;
    private readonly _dart_scale: (factor: number) => ILinearGradient =
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
    public scale(factor: number): ILinearGradient {
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
const linearGradientDefaultProps = {
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    tileMode: TileMode.clamp,
};
