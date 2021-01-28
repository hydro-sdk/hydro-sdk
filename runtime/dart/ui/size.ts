import { double } from "../core/double";
import { IOffset } from "./offset";
import { IOffsetBase } from "./offsetBase";
declare const dart: {
    ui: {
        size: (this: void, size: ISize, width: number, height: number) => ISize;
        sizeCopy: (source: ISize) => ISize;
        sizeSquare: (dimension: number) => ISize;
        sizeFromWidth: (width: number) => ISize;
        sizeFromHeight: (height: number) => ISize;
        sizeFromRadius: (radius: number) => ISize;
        sizeLerp: (
            a: ISize | undefined,
            b: ISize | undefined,
            t: number
        ) => ISize | undefined;
    };
};
export interface ISize {
    getWidth: () => number;
    getHeight: () => number;
    getAspectRatio: () => number;
    getIsEmpty: () => boolean;
    getShortestSide: () => number;
    getLongestSide: () => number;
    topLeft: (origin: IOffset) => IOffset;
    topCenter: (origin: IOffset) => IOffset;
    topRight: (origin: IOffset) => IOffset;
    centerLeft: (origin: IOffset) => IOffset;
    center: (origin: IOffset) => IOffset;
    centerRight: (origin: IOffset) => IOffset;
    bottomLeft: (origin: IOffset) => IOffset;
    bottomCenter: (origin: IOffset) => IOffset;
    bottomRight: (origin: IOffset) => IOffset;
    contains: (offset: IOffset) => boolean;
    getFlipped: () => ISize;
    getHashCode: () => number;
    toString: () => string;
    getIsInfinite: () => boolean;
    getIsFinite: () => boolean;
}
export class Size implements IOffsetBase {
    public static zero = new Size(0.0, 0.0);
    public static infinite = new Size(double.infinity, double.infinity);
    public constructor(width: number, height: number) {
        dart.ui.size(this, width, height);
    }
    public static copy(source: ISize): ISize {
        return dart.ui.sizeCopy(source);
    }
    public static square(dimension: number): ISize {
        return dart.ui.sizeSquare(dimension);
    }
    public static fromWidth(width: number): ISize {
        return dart.ui.sizeFromWidth(width);
    }
    public static fromHeight(height: number): ISize {
        return dart.ui.sizeFromHeight(height);
    }
    public static fromRadius(radius: number): ISize {
        return dart.ui.sizeFromRadius(radius);
    }
    public static lerp(
        a: ISize | undefined,
        b: ISize | undefined,
        t: number
    ): ISize | undefined {
        return dart.ui.sizeLerp(a, b, t);
    }
    private readonly _dart_getWidth: () => number = undefined as any;
    private readonly _dart_getHeight: () => number = undefined as any;
    private readonly _dart_getAspectRatio: () => number = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getShortestSide: () => number = undefined as any;
    private readonly _dart_getLongestSide: () => number = undefined as any;
    private readonly _dart_topLeft: (
        origin: IOffset
    ) => IOffset = undefined as any;
    private readonly _dart_topCenter: (
        origin: IOffset
    ) => IOffset = undefined as any;
    private readonly _dart_topRight: (
        origin: IOffset
    ) => IOffset = undefined as any;
    private readonly _dart_centerLeft: (
        origin: IOffset
    ) => IOffset = undefined as any;
    private readonly _dart_center: (
        origin: IOffset
    ) => IOffset = undefined as any;
    private readonly _dart_centerRight: (
        origin: IOffset
    ) => IOffset = undefined as any;
    private readonly _dart_bottomLeft: (
        origin: IOffset
    ) => IOffset = undefined as any;
    private readonly _dart_bottomCenter: (
        origin: IOffset
    ) => IOffset = undefined as any;
    private readonly _dart_bottomRight: (
        origin: IOffset
    ) => IOffset = undefined as any;
    private readonly _dart_contains: (
        offset: IOffset
    ) => boolean = undefined as any;
    private readonly _dart_getFlipped: () => ISize = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getIsInfinite: () => boolean = undefined as any;
    private readonly _dart_getIsFinite: () => boolean = undefined as any;
    public getWidth(): number {
        return this._dart_getWidth();
    }
    public getHeight(): number {
        return this._dart_getHeight();
    }
    public getAspectRatio(): number {
        return this._dart_getAspectRatio();
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getShortestSide(): number {
        return this._dart_getShortestSide();
    }
    public getLongestSide(): number {
        return this._dart_getLongestSide();
    }
    public topLeft(origin: IOffset): IOffset {
        return this._dart_topLeft(origin);
    }
    public topCenter(origin: IOffset): IOffset {
        return this._dart_topCenter(origin);
    }
    public topRight(origin: IOffset): IOffset {
        return this._dart_topRight(origin);
    }
    public centerLeft(origin: IOffset): IOffset {
        return this._dart_centerLeft(origin);
    }
    public center(origin: IOffset): IOffset {
        return this._dart_center(origin);
    }
    public centerRight(origin: IOffset): IOffset {
        return this._dart_centerRight(origin);
    }
    public bottomLeft(origin: IOffset): IOffset {
        return this._dart_bottomLeft(origin);
    }
    public bottomCenter(origin: IOffset): IOffset {
        return this._dart_bottomCenter(origin);
    }
    public bottomRight(origin: IOffset): IOffset {
        return this._dart_bottomRight(origin);
    }
    public contains(offset: IOffset): boolean {
        return this._dart_contains(offset);
    }
    public getFlipped(): ISize {
        return this._dart_getFlipped();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getIsInfinite(): boolean {
        return this._dart_getIsInfinite();
    }
    public getIsFinite(): boolean {
        return this._dart_getIsFinite();
    }
}
