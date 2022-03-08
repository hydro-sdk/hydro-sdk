import { ISet } from "../../dart/core/set";
import { ICanvas } from "../../dart/ui/canvas";
import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IBorderSide } from "../painting/borderSide";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        _outlineBorder: (
            this: void,
            _outlineBorder: I_OutlineBorder,
            props: { shape: IShapeBorder; side: IBorderSide }
        ) => I_OutlineBorder;
    };
};
export interface I_OutlineBorder {
    shape: IShapeBorder;
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
    paint: (
        canvas: ICanvas,
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => void;
    getHashCode: () => number;
    resolve: (states: ISet<MaterialState>) => IShapeBorder;
    add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IShapeBorder | undefined;
    toString: () => string;
}
export class _OutlineBorder
    implements IShapeBorder, IMaterialStateProperty<IShapeBorder>
{
    public readonly shape: IShapeBorder = undefined as any;
    public readonly side: IBorderSide = undefined as any;
    public constructor(props: { shape: IShapeBorder; side: IBorderSide }) {
        flutter.material._outlineBorder(this, props);
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
    private readonly _dart_paint: (
        canvas: ICanvas,
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_resolve: (
        states: ISet<MaterialState>
    ) => IShapeBorder = undefined as any;
    private readonly _dart_add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
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
    public resolve(states: ISet<MaterialState>): IShapeBorder {
        return this._dart_resolve(states);
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
const addDefaultProps = {
    reversed: false,
};
