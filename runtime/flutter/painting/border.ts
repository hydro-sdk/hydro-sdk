import { ICanvas } from "../../dart/ui/canvas";
import { Color, IColor } from "../../dart/ui/color";
import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IBorderRadius } from "./borderRadius";
import { BorderSide, IBorderSide } from "./borderSide";
import { BorderStyle } from "./borderStyle";
import { IBoxBorder } from "./boxBorder";
import { BoxShape } from "./boxShape";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
import { IShapeBorder } from "./shapeBorder";
declare const flutter: {
    painting: {
        border: (
            this: void,
            border: IBorder,
            props: {
                bottom: IBorderSide;
                left: IBorderSide;
                right: IBorderSide;
                top: IBorderSide;
            }
        ) => IBorder;
        borderAll: (props: {
            color: IColor;
            style: BorderStyle;
            width: number;
        }) => IBorder;
        borderMerge: (a: IBorder, b: IBorder) => IBorder;
        borderLerp: (
            a: IBorder | undefined,
            b: IBorder | undefined,
            t: number
        ) => IBorder | undefined;
    };
};
export interface IBorder {
    top: IBorderSide;
    right: IBorderSide;
    bottom: IBorderSide;
    left: IBorderSide;
    getDimensions: () => IEdgeInsetsGeometry;
    getIsUniform: () => boolean;
    add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IBorder | undefined;
    scale: (t: number) => IBorder;
    lerpFrom: (
        a: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined;
    lerpTo: (
        b: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined;
    paint: (
        canvas: ICanvas,
        rect: IRect,
        props: {
            borderRadius?: IBorderRadius | undefined;
            shape: BoxShape;
            textDirection?: TextDirection | undefined;
        }
    ) => void;
    getHashCode: () => number;
    toString: () => string;
    getInnerPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath;
    getOuterPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath;
    getTop: () => IBorderSide;
    getBottom: () => IBorderSide;
}
export class Border implements IBoxBorder {
    public readonly top: IBorderSide = undefined as any;
    public readonly right: IBorderSide = undefined as any;
    public readonly bottom: IBorderSide = undefined as any;
    public readonly left: IBorderSide = undefined as any;
    public constructor(props: {
        bottom?: IBorderSide;
        left?: IBorderSide;
        right?: IBorderSide;
        top?: IBorderSide;
    }) {
        flutter.painting.border(this, {
            ...borderDefaultProps,
            ...props,
        });
    }
    public static all(props: {
        color?: IColor;
        style?: BorderStyle;
        width?: number;
    }): IBorder {
        return flutter.painting.borderAll({
            ...allDefaultProps,
            ...props,
        });
    }
    public static merge(a: IBorder, b: IBorder): IBorder {
        return flutter.painting.borderMerge(a, b);
    }
    public static lerp(
        a: IBorder | undefined,
        b: IBorder | undefined,
        t: number
    ): IBorder | undefined {
        return flutter.painting.borderLerp(a, b, t);
    }
    private readonly _dart_getDimensions: () => IEdgeInsetsGeometry =
        undefined as any;
    private readonly _dart_getIsUniform: () => boolean = undefined as any;
    private readonly _dart_add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IBorder | undefined = undefined as any;
    private readonly _dart_scale: (t: number) => IBorder = undefined as any;
    private readonly _dart_lerpFrom: (
        a: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_lerpTo: (
        b: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_paint: (
        canvas: ICanvas,
        rect: IRect,
        props: {
            borderRadius?: IBorderRadius | undefined;
            shape: BoxShape;
            textDirection?: TextDirection | undefined;
        }
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getInnerPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath = undefined as any;
    private readonly _dart_getOuterPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath = undefined as any;
    private readonly _dart_getTop: () => IBorderSide = undefined as any;
    private readonly _dart_getBottom: () => IBorderSide = undefined as any;
    public getDimensions(): IEdgeInsetsGeometry {
        return this._dart_getDimensions();
    }
    public getIsUniform(): boolean {
        return this._dart_getIsUniform();
    }
    public add(
        other: IShapeBorder,
        props: { reversed?: boolean }
    ): IBorder | undefined {
        return this._dart_add(other, {
            ...addDefaultProps,
            ...props,
        });
    }
    public scale(t: number): IBorder {
        return this._dart_scale(t);
    }
    public lerpFrom(
        a: IShapeBorder | undefined,
        t: number
    ): IShapeBorder | undefined {
        return this._dart_lerpFrom(a, t);
    }
    public lerpTo(
        b: IShapeBorder | undefined,
        t: number
    ): IShapeBorder | undefined {
        return this._dart_lerpTo(b, t);
    }
    public paint(
        canvas: ICanvas,
        rect: IRect,
        props: {
            borderRadius?: IBorderRadius | undefined;
            shape?: BoxShape;
            textDirection?: TextDirection | undefined;
        }
    ): void {
        return this._dart_paint(canvas, rect, {
            ...paintDefaultProps,
            ...props,
        });
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getInnerPath(
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ): IPath {
        return this._dart_getInnerPath(rect, props);
    }
    public getOuterPath(
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ): IPath {
        return this._dart_getOuterPath(rect, props);
    }
    public getTop(): IBorderSide {
        return this._dart_getTop();
    }
    public getBottom(): IBorderSide {
        return this._dart_getBottom();
    }
}
const borderDefaultProps = {
    bottom: BorderSide.none,
    left: BorderSide.none,
    right: BorderSide.none,
    top: BorderSide.none,
};
const addDefaultProps = {
    reversed: false,
};
const paintDefaultProps = {
    shape: BoxShape.rectangle,
};
const allDefaultProps = {
    color: new Color(0xff000000),
    style: BorderStyle.solid,
    width: 1.0,
};
