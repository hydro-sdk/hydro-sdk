import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { Axis } from "./axis";
import { IEdgeInsets } from "./edgeInsets";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
declare const flutter: {
    painting: {
        edgeInsetsDirectionalLerp: (
            a: IEdgeInsetsDirectional | undefined,
            b: IEdgeInsetsDirectional | undefined,
            t: number
        ) => IEdgeInsetsDirectional | undefined;
    };
};
export interface IEdgeInsetsDirectional {
    start: number;
    top: number;
    end: number;
    bottom: number;
    getIsNonNegative: () => boolean;
    getFlipped: () => IEdgeInsetsDirectional;
    subtract: (other: IEdgeInsetsGeometry) => IEdgeInsetsGeometry;
    add: (other: IEdgeInsetsGeometry) => IEdgeInsetsGeometry;
    resolve: (direction?: TextDirection | undefined) => IEdgeInsets;
    along: (axis: Axis) => number;
    inflateSize: (size: ISize) => ISize;
    deflateSize: (size: ISize) => ISize;
    clamp: (
        min: IEdgeInsetsGeometry,
        max: IEdgeInsetsGeometry
    ) => IEdgeInsetsGeometry;
    toString: () => string;
    getHorizontal: () => number;
    getVertical: () => number;
    getCollapsedSize: () => ISize;
    getHashCode: () => number;
}
export class EdgeInsetsDirectional implements IEdgeInsetsGeometry {
    public static zero = EdgeInsetsDirectional.only();
    public readonly start: number = undefined as any;
    public readonly top: number = undefined as any;
    public readonly end: number = undefined as any;
    public readonly bottom: number = undefined as any;
    public static lerp(
        a: IEdgeInsetsDirectional | undefined,
        b: IEdgeInsetsDirectional | undefined,
        t: number
    ): IEdgeInsetsDirectional | undefined {
        return flutter.painting.edgeInsetsDirectionalLerp(a, b, t);
    }
    private readonly _dart_getIsNonNegative: () => boolean = undefined as any;
    private readonly _dart_getFlipped: () => IEdgeInsetsDirectional =
        undefined as any;
    private readonly _dart_subtract: (
        other: IEdgeInsetsGeometry
    ) => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_add: (
        other: IEdgeInsetsGeometry
    ) => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_resolve: (
        direction?: TextDirection | undefined
    ) => IEdgeInsets = undefined as any;
    private readonly _dart_along: (axis: Axis) => number = undefined as any;
    private readonly _dart_inflateSize: (size: ISize) => ISize =
        undefined as any;
    private readonly _dart_deflateSize: (size: ISize) => ISize =
        undefined as any;
    private readonly _dart_clamp: (
        min: IEdgeInsetsGeometry,
        max: IEdgeInsetsGeometry
    ) => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHorizontal: () => number = undefined as any;
    private readonly _dart_getVertical: () => number = undefined as any;
    private readonly _dart_getCollapsedSize: () => ISize = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getIsNonNegative(): boolean {
        return this._dart_getIsNonNegative();
    }
    public getFlipped(): IEdgeInsetsDirectional {
        return this._dart_getFlipped();
    }
    public subtract(other: IEdgeInsetsGeometry): IEdgeInsetsGeometry {
        return this._dart_subtract(other);
    }
    public add(other: IEdgeInsetsGeometry): IEdgeInsetsGeometry {
        return this._dart_add(other);
    }
    public resolve(direction?: TextDirection | undefined): IEdgeInsets {
        return this._dart_resolve(direction);
    }
    public along(axis: Axis): number {
        return this._dart_along(axis);
    }
    public inflateSize(size: ISize): ISize {
        return this._dart_inflateSize(size);
    }
    public deflateSize(size: ISize): ISize {
        return this._dart_deflateSize(size);
    }
    public clamp(
        min: IEdgeInsetsGeometry,
        max: IEdgeInsetsGeometry
    ): IEdgeInsetsGeometry {
        return this._dart_clamp(min, max);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHorizontal(): number {
        return this._dart_getHorizontal();
    }
    public getVertical(): number {
        return this._dart_getVertical();
    }
    public getCollapsedSize(): ISize {
        return this._dart_getCollapsedSize();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
