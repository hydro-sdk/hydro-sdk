import { ICanvas } from "../../dart/ui/canvas";
import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
declare const flutter: {
    painting: {
        shapeBorder: (this: void, shapeBorder: IShapeBorder) => IShapeBorder;
        shapeBorderLerp: (
            a: IShapeBorder | undefined,
            b: IShapeBorder | undefined,
            t: number
        ) => IShapeBorder | undefined;
    };
};
export interface IShapeBorder {
    getDimensions: () => IEdgeInsetsGeometry;
    add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IShapeBorder | undefined;
    scale: (t: number) => IShapeBorder;
    lerpFrom: (
        a: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined;
    lerpTo: (
        b: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined;
    getOuterPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath;
    getInnerPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath;
    paint: (
        canvas: ICanvas,
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => void;
    toString: () => string;
}
export class ShapeBorder {
    public constructor() {
        flutter.painting.shapeBorder(this);
    }
    public static lerp(
        a: IShapeBorder | undefined,
        b: IShapeBorder | undefined,
        t: number
    ): IShapeBorder | undefined {
        return flutter.painting.shapeBorderLerp(a, b, t);
    }
    private readonly _dart_getDimensions: () => IEdgeInsetsGeometry =
        undefined as any;
    private readonly _dart_add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_scale: (t: number) => IShapeBorder =
        undefined as any;
    private readonly _dart_lerpFrom: (
        a: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_lerpTo: (
        b: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_getOuterPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath = undefined as any;
    private readonly _dart_getInnerPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath = undefined as any;
    private readonly _dart_paint: (
        canvas: ICanvas,
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getDimensions(): IEdgeInsetsGeometry {
        return this._dart_getDimensions();
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
    public scale(t: number): IShapeBorder {
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
    public getOuterPath(
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ): IPath {
        return this._dart_getOuterPath(rect, props);
    }
    public getInnerPath(
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ): IPath {
        return this._dart_getInnerPath(rect, props);
    }
    public paint(
        canvas: ICanvas,
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ): void {
        return this._dart_paint(canvas, rect, props);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
const addDefaultProps = {
    reversed: false,
};
