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
import { IOutlineInputBorder } from "./outlineInputBorder";
declare const flutter: {
    material: {
        materialStateOutlineInputBorder: (
            this: void,
            materialStateOutlineInputBorder: IMaterialStateOutlineInputBorder
        ) => IMaterialStateOutlineInputBorder;
        materialStateOutlineInputBorderResolveWith: (
            callback: (states: ISet<MaterialState>) => IInputBorder
        ) => IMaterialStateOutlineInputBorder;
    };
};
export interface IMaterialStateOutlineInputBorder {
    gapPadding: number;
    borderRadius: IBorderRadius;
    borderSide: IBorderSide;
    resolve: (states: ISet<MaterialState>) => IInputBorder;
    copyWith: (props?: {
        borderRadius?: IBorderRadius | undefined;
        borderSide?: IBorderSide | undefined;
        gapPadding?: number | undefined;
    }) => IOutlineInputBorder;
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
    getIsOutline: () => boolean;
    getDimensions: () => IEdgeInsetsGeometry;
    getHashCode: () => number;
    add: (
        other: IShapeBorder,
        props: { reversed: boolean }
    ) => IShapeBorder | undefined;
    toString: () => string;
}
export class MaterialStateOutlineInputBorder
    implements IOutlineInputBorder, IMaterialStateProperty<IInputBorder>
{
    public readonly gapPadding: number = undefined as any;
    public readonly borderRadius: IBorderRadius = undefined as any;
    public readonly borderSide: IBorderSide = undefined as any;
    public constructor() {
        flutter.material.materialStateOutlineInputBorder(this);
    }
    public static resolveWith(
        callback: (states: ISet<MaterialState>) => IInputBorder
    ): IMaterialStateOutlineInputBorder {
        return flutter.material.materialStateOutlineInputBorderResolveWith(
            callback
        );
    }
    private readonly _dart_resolve: (
        states: ISet<MaterialState>
    ) => IInputBorder = undefined as any;
    private readonly _dart_copyWith: (props?: {
        borderRadius?: IBorderRadius | undefined;
        borderSide?: IBorderSide | undefined;
        gapPadding?: number | undefined;
    }) => IOutlineInputBorder = undefined as any;
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
        gapPadding?: number | undefined;
    }): IOutlineInputBorder {
        return this._dart_copyWith(props);
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
