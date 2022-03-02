import { ICanvas } from "../../dart/ui/canvas";
import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { BorderSide, IBorderSide } from "./borderSide";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
import { IOutlinedBorder } from "./outlinedBorder";
import { IShapeBorder } from "./shapeBorder";
declare const flutter: {
    painting: {
        circleBorder: (
            this: void,
            circleBorder: ICircleBorder,
            props: { side: IBorderSide }
        ) => ICircleBorder;
    };
};
export interface ICircleBorder {
    side: IBorderSide;
    getDimensions: () => IEdgeInsetsGeometry;
    scale: (t: number) => IShapeBorder;
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
    copyWith: (props?: { side?: IBorderSide | undefined }) => ICircleBorder;
    paint: (
        canvas: ICanvas,
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => void;
    getHashCode: () => number;
    toString: () => string;
    add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IShapeBorder | undefined;
}
export class CircleBorder implements IOutlinedBorder {
    public readonly side: IBorderSide = undefined as any;
    public constructor(props: { side?: IBorderSide }) {
        flutter.painting.circleBorder(this, {
            ...circleBorderDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getDimensions: () => IEdgeInsetsGeometry =
        undefined as any;
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
    private readonly _dart_getInnerPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath = undefined as any;
    private readonly _dart_getOuterPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath = undefined as any;
    private readonly _dart_copyWith: (props?: {
        side?: IBorderSide | undefined;
    }) => ICircleBorder = undefined as any;
    private readonly _dart_paint: (
        canvas: ICanvas,
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IShapeBorder | undefined = undefined as any;
    public getDimensions(): IEdgeInsetsGeometry {
        return this._dart_getDimensions();
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
    public copyWith(props?: { side?: IBorderSide | undefined }): ICircleBorder {
        return this._dart_copyWith(props);
    }
    public paint(
        canvas: ICanvas,
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ): void {
        return this._dart_paint(canvas, rect, props);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
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
}
const circleBorderDefaultProps = {
    side: BorderSide.none,
};
const addDefaultProps = {
    reversed: false,
};
