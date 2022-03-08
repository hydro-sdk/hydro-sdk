import { ICanvas } from "../../dart/ui/canvas";
import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IBorderSide } from "../painting/borderSide";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { IInputBorder } from "./inputBorder";
declare const flutter: {
    material: {
        _noInputBorder: (
            this: void,
            _noInputBorder: I_NoInputBorder
        ) => I_NoInputBorder;
    };
};
export interface I_NoInputBorder {
    borderSide: IBorderSide;
    copyWith: (props?: {
        borderSide?: IBorderSide | undefined;
    }) => I_NoInputBorder;
    getIsOutline: () => boolean;
    getDimensions: () => IEdgeInsetsGeometry;
    scale: (t: number) => I_NoInputBorder;
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
    add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IShapeBorder | undefined;
    lerpFrom: (
        a: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined;
    lerpTo: (
        b: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined;
    toString: () => string;
    getHashCode: () => number;
}
export class _NoInputBorder implements IInputBorder {
    public readonly borderSide: IBorderSide = undefined as any;
    public constructor() {
        flutter.material._noInputBorder(this);
    }
    private readonly _dart_copyWith: (props?: {
        borderSide?: IBorderSide | undefined;
    }) => I_NoInputBorder = undefined as any;
    private readonly _dart_getIsOutline: () => boolean = undefined as any;
    private readonly _dart_getDimensions: () => IEdgeInsetsGeometry =
        undefined as any;
    private readonly _dart_scale: (t: number) => I_NoInputBorder =
        undefined as any;
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
    private readonly _dart_add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_lerpFrom: (
        a: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_lerpTo: (
        b: IShapeBorder | undefined,
        t: number
    ) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public copyWith(props?: {
        borderSide?: IBorderSide | undefined;
    }): I_NoInputBorder {
        return this._dart_copyWith(props);
    }
    public getIsOutline(): boolean {
        return this._dart_getIsOutline();
    }
    public getDimensions(): IEdgeInsetsGeometry {
        return this._dart_getDimensions();
    }
    public scale(t: number): I_NoInputBorder {
        return this._dart_scale(t);
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
    public add(
        other: IShapeBorder,
        props: { reversed?: boolean }
    ): IShapeBorder | undefined {
        return this._dart_add(other, {
            ...addDefaultProps,
            ...props,
        });
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
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const paintDefaultProps = {
    gapExtent: 0.0,
    gapPercentage: 0.0,
};
const addDefaultProps = {
    reversed: false,
};
