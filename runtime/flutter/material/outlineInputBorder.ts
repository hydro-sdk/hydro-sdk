import { ICanvas } from "../../dart/ui/canvas";
import { IPath } from "../../dart/ui/path";
import { Radius } from "../../dart/ui/radius";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { BorderRadius, IBorderRadius } from "../painting/borderRadius";
import { BorderSide, IBorderSide } from "../painting/borderSide";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { IInputBorder } from "./inputBorder";
declare const flutter: {
    material: {
        outlineInputBorder: (
            this: void,
            outlineInputBorder: IOutlineInputBorder,
            props: {
                borderRadius: IBorderRadius;
                borderSide: IBorderSide;
                gapPadding: number;
            }
        ) => IOutlineInputBorder;
    };
};
export interface IOutlineInputBorder {
    gapPadding: number;
    borderRadius: IBorderRadius;
    borderSide: IBorderSide;
    getIsOutline: () => boolean;
    copyWith: (props?: {
        borderRadius?: IBorderRadius | undefined;
        borderSide?: IBorderSide | undefined;
        gapPadding?: number | undefined;
    }) => IOutlineInputBorder;
    getDimensions: () => IEdgeInsetsGeometry;
    scale: (t: number) => IOutlineInputBorder;
    lerpFrom: (
        a: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined;
    lerpTo: (
        b: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined;
    getInnerPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath;
    getOuterPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath;
    paint: (
        canvas: ICanvas,
        rect: IRect,
        props: {
            gapExtent: number;
            gapPercentage: number;
            gapStart?: number | undefined;
            textDirection?: TextDirection | undefined;
        }
    ) => void;
    getHashCode: () => number;
    add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IShapeBorder | undefined;
    toString: () => string;
}
export class OutlineInputBorder implements IInputBorder {
    public readonly gapPadding: number = undefined as any;
    public readonly borderRadius: IBorderRadius = undefined as any;
    public readonly borderSide: IBorderSide = undefined as any;
    public constructor(props: {
        borderRadius?: IBorderRadius;
        borderSide?: IBorderSide;
        gapPadding?: number;
    }) {
        flutter.material.outlineInputBorder(this, {
            ...outlineInputBorderDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getIsOutline: () => boolean = undefined as any;
    private readonly _dart_copyWith: (props?: {
        borderRadius?: IBorderRadius | undefined;
        borderSide?: IBorderSide | undefined;
        gapPadding?: number | undefined;
    }) => IOutlineInputBorder = undefined as any;
    private readonly _dart_getDimensions: () => IEdgeInsetsGeometry =
        undefined as any;
    private readonly _dart_scale: (t: number) => IOutlineInputBorder =
        undefined as any;
    private readonly _dart_lerpFrom: (
        a: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_lerpTo: (
        b: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_getInnerPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath = undefined as any;
    private readonly _dart_getOuterPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath = undefined as any;
    private readonly _dart_paint: (
        canvas: ICanvas,
        rect: IRect,
        props: {
            gapExtent: number;
            gapPercentage: number;
            gapStart?: number | undefined;
            textDirection?: TextDirection | undefined;
        }
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getIsOutline(): boolean {
        return this._dart_getIsOutline();
    }
    public copyWith(props?: {
        borderRadius?: IBorderRadius | undefined;
        borderSide?: IBorderSide | undefined;
        gapPadding?: number | undefined;
    }): IOutlineInputBorder {
        return this._dart_copyWith(props);
    }
    public getDimensions(): IEdgeInsetsGeometry {
        return this._dart_getDimensions();
    }
    public scale(t: number): IOutlineInputBorder {
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
    public paint(
        canvas: ICanvas,
        rect: IRect,
        props: {
            gapExtent?: number;
            gapPercentage?: number;
            gapStart?: number | undefined;
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
    public add(
        other: IShapeBorder,
        props: { reversed?: boolean }
    ): IShapeBorder | undefined {
        return this._dart_add(other, {
            ...addDefaultProps,
            ...props,
        });
    }
    public toString(): string {
        return this._dart_toString();
    }
}
const outlineInputBorderDefaultProps = {
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
    borderSide: new BorderSide(),
    gapPadding: 4.0,
};
const paintDefaultProps = {
    gapExtent: 0.0,
    gapPercentage: 0.0,
};
const addDefaultProps = {
    reversed: false,
};
