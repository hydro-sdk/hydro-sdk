import { ISet } from "../../dart/core/set";
import { ICanvas } from "../../dart/ui/canvas";
import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IBorderRadius } from "../painting/borderRadius";
import { IBorderSide } from "../painting/borderSide";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { IInputBorder } from "./inputBorder";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
import { IMaterialStateUnderlineInputBorder } from "./materialStateUnderlineInputBorder";
import { IUnderlineInputBorder } from "./underlineInputBorder";
declare const flutter: {
    material: {
        _materialStateUnderlineInputBorder: (
            this: void,
            _materialStateUnderlineInputBorder: I_MaterialStateUnderlineInputBorder,
            _resolve: (states: ISet<MaterialState>) => IInputBorder
        ) => I_MaterialStateUnderlineInputBorder;
    };
};
export interface I_MaterialStateUnderlineInputBorder {
    borderRadius: IBorderRadius;
    borderSide: IBorderSide;
    resolve: (states: ISet<MaterialState>) => IInputBorder;
    copyWith: (props?: {
        borderRadius?: IBorderRadius | undefined;
        borderSide?: IBorderSide | undefined;
    }) => IUnderlineInputBorder;
    scale: (t: number) => IUnderlineInputBorder;
    getInnerPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath;
    getOuterPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath;
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
            gapExtent: number;
            gapPercentage: number;
            gapStart?: number | undefined;
            textDirection?: TextDirection | undefined;
        }
    ) => void;
    getIsOutline: () => boolean;
    getDimensions: () => IEdgeInsetsGeometry;
    getHashCode: () => number;
    add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IShapeBorder | undefined;
    toString: () => string;
}
export class _MaterialStateUnderlineInputBorder
    implements
        IMaterialStateUnderlineInputBorder,
        IMaterialStateProperty<IInputBorder>
{
    public readonly borderRadius: IBorderRadius = undefined as any;
    public readonly borderSide: IBorderSide = undefined as any;
    public constructor(
        _resolve: (states: ISet<MaterialState>) => IInputBorder
    ) {
        flutter.material._materialStateUnderlineInputBorder(this, _resolve);
    }
    private readonly _dart_resolve: (
        states: ISet<MaterialState>
    ) => IInputBorder = undefined as any;
    private readonly _dart_copyWith: (props?: {
        borderRadius?: IBorderRadius | undefined;
        borderSide?: IBorderSide | undefined;
    }) => IUnderlineInputBorder = undefined as any;
    private readonly _dart_scale: (t: number) => IUnderlineInputBorder =
        undefined as any;
    private readonly _dart_getInnerPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath = undefined as any;
    private readonly _dart_getOuterPath: (
        rect: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IPath = undefined as any;
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
            gapExtent: number;
            gapPercentage: number;
            gapStart?: number | undefined;
            textDirection?: TextDirection | undefined;
        }
    ) => void = undefined as any;
    private readonly _dart_getIsOutline: () => boolean = undefined as any;
    private readonly _dart_getDimensions: () => IEdgeInsetsGeometry =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public resolve(states: ISet<MaterialState>): IInputBorder {
        return this._dart_resolve(states);
    }
    public copyWith(props?: {
        borderRadius?: IBorderRadius | undefined;
        borderSide?: IBorderSide | undefined;
    }): IUnderlineInputBorder {
        return this._dart_copyWith(props);
    }
    public scale(t: number): IUnderlineInputBorder {
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
    public getIsOutline(): boolean {
        return this._dart_getIsOutline();
    }
    public getDimensions(): IEdgeInsetsGeometry {
        return this._dart_getDimensions();
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
const paintDefaultProps = {
    gapExtent: 0.0,
    gapPercentage: 0.0,
};
const addDefaultProps = {
    reversed: false,
};
