import { IIterable } from "../../dart/core/iterable";
import { ICanvas } from "../../dart/ui/canvas";
import { Color, IColor } from "../../dart/ui/color";
import { IRect } from "../../dart/ui/rect";
import { BorderSide, IBorderSide } from "../painting/borderSide";
import { BorderStyle } from "../painting/borderStyle";
import { IEdgeInsets } from "../painting/edgeInsets";
declare const flutter: {
    rendering: {
        tableBorder: (
            this: void,
            tableBorder: ITableBorder,
            props: {
                bottom: IBorderSide;
                horizontalInside: IBorderSide;
                left: IBorderSide;
                right: IBorderSide;
                top: IBorderSide;
                verticalInside: IBorderSide;
            }
        ) => ITableBorder;
        tableBorderAll: (props: {
            color: IColor;
            style: BorderStyle;
            width: number;
        }) => ITableBorder;
        tableBorderSymmetric: (props: {
            inside: IBorderSide;
            outside: IBorderSide;
        }) => ITableBorder;
        tableBorderLerp: (
            a: ITableBorder | undefined,
            b: ITableBorder | undefined,
            t: number
        ) => ITableBorder | undefined;
    };
};
export interface ITableBorder {
    top: IBorderSide;
    right: IBorderSide;
    bottom: IBorderSide;
    left: IBorderSide;
    horizontalInside: IBorderSide;
    verticalInside: IBorderSide;
    getDimensions: () => IEdgeInsets;
    getIsUniform: () => boolean;
    scale: (t: number) => ITableBorder;
    paint: (
        canvas: ICanvas,
        rect: IRect,
        props: { columns: IIterable<number>; rows: IIterable<number> }
    ) => void;
    getHashCode: () => number;
    toString: () => string;
}
export class TableBorder {
    public readonly top: IBorderSide = undefined as any;
    public readonly right: IBorderSide = undefined as any;
    public readonly bottom: IBorderSide = undefined as any;
    public readonly left: IBorderSide = undefined as any;
    public readonly horizontalInside: IBorderSide = undefined as any;
    public readonly verticalInside: IBorderSide = undefined as any;
    public constructor(props: {
        bottom?: IBorderSide;
        horizontalInside?: IBorderSide;
        left?: IBorderSide;
        right?: IBorderSide;
        top?: IBorderSide;
        verticalInside?: IBorderSide;
    }) {
        flutter.rendering.tableBorder(this, {
            ...tableBorderDefaultProps,
            ...props,
        });
    }
    public static all(props: {
        color?: IColor;
        style?: BorderStyle;
        width?: number;
    }): ITableBorder {
        return flutter.rendering.tableBorderAll({
            ...allDefaultProps,
            ...props,
        });
    }
    public static symmetric(props: {
        inside?: IBorderSide;
        outside?: IBorderSide;
    }): ITableBorder {
        return flutter.rendering.tableBorderSymmetric({
            ...symmetricDefaultProps,
            ...props,
        });
    }
    public static lerp(
        a: ITableBorder | undefined,
        b: ITableBorder | undefined,
        t: number
    ): ITableBorder | undefined {
        return flutter.rendering.tableBorderLerp(a, b, t);
    }
    private readonly _dart_getDimensions: () => IEdgeInsets = undefined as any;
    private readonly _dart_getIsUniform: () => boolean = undefined as any;
    private readonly _dart_scale: (t: number) => ITableBorder =
        undefined as any;
    private readonly _dart_paint: (
        canvas: ICanvas,
        rect: IRect,
        props: { columns: IIterable<number>; rows: IIterable<number> }
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getDimensions(): IEdgeInsets {
        return this._dart_getDimensions();
    }
    public getIsUniform(): boolean {
        return this._dart_getIsUniform();
    }
    public scale(t: number): ITableBorder {
        return this._dart_scale(t);
    }
    public paint(
        canvas: ICanvas,
        rect: IRect,
        props: { columns: IIterable<number>; rows: IIterable<number> }
    ): void {
        return this._dart_paint(canvas, rect, props);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
const tableBorderDefaultProps = {
    bottom: BorderSide.none,
    horizontalInside: BorderSide.none,
    left: BorderSide.none,
    right: BorderSide.none,
    top: BorderSide.none,
    verticalInside: BorderSide.none,
};
const allDefaultProps = {
    color: new Color(0xff000000),
    style: BorderStyle.solid,
    width: 1.0,
};
const symmetricDefaultProps = {
    inside: BorderSide.none,
    outside: BorderSide.none,
};
