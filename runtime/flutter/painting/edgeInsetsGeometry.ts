import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { Axis } from "./axis";
import { IEdgeInsets } from "./edgeInsets";
declare const flutter: {
    painting: {
        edgeInsetsGeometryLerp: (
            a: IEdgeInsetsGeometry | undefined,
            b: IEdgeInsetsGeometry | undefined,
            t: number
        ) => IEdgeInsetsGeometry | undefined;
    };
};
export interface IEdgeInsetsGeometry {
    getIsNonNegative: () => boolean;
    getHorizontal: () => number;
    getVertical: () => number;
    along: (axis: Axis) => number;
    getCollapsedSize: () => ISize;
    getFlipped: () => IEdgeInsetsGeometry;
    inflateSize: (size: ISize) => ISize;
    deflateSize: (size: ISize) => ISize;
    subtract: (other: IEdgeInsetsGeometry) => IEdgeInsetsGeometry;
    add: (other: IEdgeInsetsGeometry) => IEdgeInsetsGeometry;
    clamp: (
        min: IEdgeInsetsGeometry,
        max: IEdgeInsetsGeometry
    ) => IEdgeInsetsGeometry;
    resolve: (direction?: TextDirection | undefined) => IEdgeInsets;
    toString: () => string;
    getHashCode: () => number;
}
export class EdgeInsetsGeometry {
    public static lerp(
        a: IEdgeInsetsGeometry | undefined,
        b: IEdgeInsetsGeometry | undefined,
        t: number
    ): IEdgeInsetsGeometry | undefined {
        return flutter.painting.edgeInsetsGeometryLerp(a, b, t);
    }
    private readonly _dart_getIsNonNegative: () => boolean = undefined as any;
    private readonly _dart_getHorizontal: () => number = undefined as any;
    private readonly _dart_getVertical: () => number = undefined as any;
    private readonly _dart_along: (axis: Axis) => number = undefined as any;
    private readonly _dart_getCollapsedSize: () => ISize = undefined as any;
    private readonly _dart_getFlipped: () => IEdgeInsetsGeometry =
        undefined as any;
    private readonly _dart_inflateSize: (size: ISize) => ISize =
        undefined as any;
    private readonly _dart_deflateSize: (size: ISize) => ISize =
        undefined as any;
    private readonly _dart_subtract: (
        other: IEdgeInsetsGeometry
    ) => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_add: (
        other: IEdgeInsetsGeometry
    ) => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_clamp: (
        min: IEdgeInsetsGeometry,
        max: IEdgeInsetsGeometry
    ) => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_resolve: (
        direction?: TextDirection | undefined
    ) => IEdgeInsets = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getIsNonNegative(): boolean {
        return this._dart_getIsNonNegative();
    }
    public getHorizontal(): number {
        return this._dart_getHorizontal();
    }
    public getVertical(): number {
        return this._dart_getVertical();
    }
    public along(axis: Axis): number {
        return this._dart_along(axis);
    }
    public getCollapsedSize(): ISize {
        return this._dart_getCollapsedSize();
    }
    public getFlipped(): IEdgeInsetsGeometry {
        return this._dart_getFlipped();
    }
    public inflateSize(size: ISize): ISize {
        return this._dart_inflateSize(size);
    }
    public deflateSize(size: ISize): ISize {
        return this._dart_deflateSize(size);
    }
    public subtract(other: IEdgeInsetsGeometry): IEdgeInsetsGeometry {
        return this._dart_subtract(other);
    }
    public add(other: IEdgeInsetsGeometry): IEdgeInsetsGeometry {
        return this._dart_add(other);
    }
    public clamp(
        min: IEdgeInsetsGeometry,
        max: IEdgeInsetsGeometry
    ): IEdgeInsetsGeometry {
        return this._dart_clamp(min, max);
    }
    public resolve(direction?: TextDirection | undefined): IEdgeInsets {
        return this._dart_resolve(direction);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
