import { double } from "./../../dart/core/double";
import { RuntimeBaseClass } from "./../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "./../../syntheticBox";
import { Type } from "./../core/type";
import { Offset } from "./offset";
import { IOffsetBase, OffsetBase } from "./offsetBase";
declare const dart: {
    ui: {
        size: (this: void, size: Size, width: number, height: number) => Size;
        sizeCopy: (source: Size) => Size;
        sizeSquare: (dimension: number) => Size;
        sizeFromWidth: (width: number) => Size;
        sizeFromHeight: (height: number) => Size;
        sizeFromRadius: (radius: number) => Size;
        sizeLerp: (
            a: Size | undefined,
            b: Size | undefined,
            t: number
        ) => Size | undefined;
    };
};
export interface ISize {
    getWidth: () => number;
    getHeight: () => number;
    getAspectRatio: () => number;
    getIsEmpty: () => boolean;
    getShortestSide: () => number;
    getLongestSide: () => number;
    topLeft: (origin: Offset) => Offset;
    topCenter: (origin: Offset) => Offset;
    topRight: (origin: Offset) => Offset;
    centerLeft: (origin: Offset) => Offset;
    center: (origin: Offset) => Offset;
    centerRight: (origin: Offset) => Offset;
    bottomLeft: (origin: Offset) => Offset;
    bottomCenter: (origin: Offset) => Offset;
    bottomRight: (origin: Offset) => Offset;
    contains: (offset: Offset) => boolean;
    getFlipped: () => Size;
    getHashCode: () => number;
    toString: () => string;
}
export class Size implements ISize, IOffsetBase {
    public static zero = new Size(0.0, 0.0);
    public static infinite = new Size(double.infinity, double.infinity);
    public constructor(width: number, height: number) {
        dart.ui.size(this, width, height);
    }
    public static copy(source: Size): Size {
        return dart.ui.sizeCopy(source);
    }
    public static square(dimension: number): Size {
        return dart.ui.sizeSquare(dimension);
    }
    public static fromWidth(width: number): Size {
        return dart.ui.sizeFromWidth(width);
    }
    public static fromHeight(height: number): Size {
        return dart.ui.sizeFromHeight(height);
    }
    public static fromRadius(radius: number): Size {
        return dart.ui.sizeFromRadius(radius);
    }
    public static lerp(
        a: Size | undefined,
        b: Size | undefined,
        t: number
    ): Size | undefined {
        return dart.ui.sizeLerp(a, b, t);
    }
    private readonly _dart_getWidth: () => number = undefined as any;
    private readonly _dart_getHeight: () => number = undefined as any;
    private readonly _dart_getAspectRatio: () => number = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getShortestSide: () => number = undefined as any;
    private readonly _dart_getLongestSide: () => number = undefined as any;
    private readonly _dart_topLeft: (
        origin: Offset
    ) => Offset = undefined as any;
    private readonly _dart_topCenter: (
        origin: Offset
    ) => Offset = undefined as any;
    private readonly _dart_topRight: (
        origin: Offset
    ) => Offset = undefined as any;
    private readonly _dart_centerLeft: (
        origin: Offset
    ) => Offset = undefined as any;
    private readonly _dart_center: (
        origin: Offset
    ) => Offset = undefined as any;
    private readonly _dart_centerRight: (
        origin: Offset
    ) => Offset = undefined as any;
    private readonly _dart_bottomLeft: (
        origin: Offset
    ) => Offset = undefined as any;
    private readonly _dart_bottomCenter: (
        origin: Offset
    ) => Offset = undefined as any;
    private readonly _dart_bottomRight: (
        origin: Offset
    ) => Offset = undefined as any;
    private readonly _dart_contains: (
        offset: Offset
    ) => boolean = undefined as any;
    private readonly _dart_getFlipped: () => Size = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getIsInfinite: () => boolean = undefined as any;
    private readonly _dart_getIsFinite: () => boolean = undefined as any;
    public getWidth() {
        return this._dart_getWidth();
    }
    public getHeight() {
        return this._dart_getHeight();
    }
    public getAspectRatio() {
        return this._dart_getAspectRatio();
    }
    public getIsEmpty() {
        return this._dart_getIsEmpty();
    }
    public getShortestSide() {
        return this._dart_getShortestSide();
    }
    public getLongestSide() {
        return this._dart_getLongestSide();
    }
    public topLeft(origin: Offset) {
        return this._dart_topLeft(origin);
    }
    public topCenter(origin: Offset) {
        return this._dart_topCenter(origin);
    }
    public topRight(origin: Offset) {
        return this._dart_topRight(origin);
    }
    public centerLeft(origin: Offset) {
        return this._dart_centerLeft(origin);
    }
    public center(origin: Offset) {
        return this._dart_center(origin);
    }
    public centerRight(origin: Offset) {
        return this._dart_centerRight(origin);
    }
    public bottomLeft(origin: Offset) {
        return this._dart_bottomLeft(origin);
    }
    public bottomCenter(origin: Offset) {
        return this._dart_bottomCenter(origin);
    }
    public bottomRight(origin: Offset) {
        return this._dart_bottomRight(origin);
    }
    public contains(offset: Offset) {
        return this._dart_contains(offset);
    }
    public getFlipped() {
        return this._dart_getFlipped();
    }
    public getHashCode() {
        return this._dart_getHashCode();
    }
    public toString() {
        return this._dart_toString();
    }
    public getIsInfinite() {
        return this._dart_getIsInfinite();
    }
    public getIsFinite() {
        return this._dart_getIsFinite();
    }
}
