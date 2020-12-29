import { Offset } from "./offset";
import { Size } from "./size";
declare const dart: {
    ui: {
        rectFromLTRB: (
            left: number,
            top: number,
            right: number,
            bottom: number
        ) => Rect;
        rectFromLTWH: (
            left: number,
            top: number,
            width: number,
            height: number
        ) => Rect;
        rectFromCircle: (props: { center: Offset; radius: number }) => Rect;
        rectFromCenter: (props: {
            center: Offset;
            height: number;
            width: number;
        }) => Rect;
        rectFromPoints: (a: Offset, b: Offset) => Rect;
        rectLerp: (
            a: Rect | undefined,
            b: Rect | undefined,
            t: number
        ) => Rect | undefined;
    };
};
export interface IRect {
    left: number;
    top: number;
    right: number;
    bottom: number;
    getWidth: () => number;
    getHeight: () => number;
    getSize: () => Size;
    getHasNaN: () => boolean;
    getIsInfinite: () => boolean;
    getIsFinite: () => boolean;
    getIsEmpty: () => boolean;
    shift: (offset: Offset) => Rect;
    translate: (translateX: number, translateY: number) => Rect;
    inflate: (delta: number) => Rect;
    deflate: (delta: number) => Rect;
    intersect: (other: Rect) => Rect;
    expandToInclude: (other: Rect) => Rect;
    overlaps: (other: Rect) => boolean;
    getShortestSide: () => number;
    getLongestSide: () => number;
    getTopLeft: () => Offset;
    getTopCenter: () => Offset;
    getTopRight: () => Offset;
    getCenterLeft: () => Offset;
    getCenter: () => Offset;
    getCenterRight: () => Offset;
    getBottomLeft: () => Offset;
    getBottomCenter: () => Offset;
    getBottomRight: () => Offset;
    contains: (offset: Offset) => boolean;
    getHashCode: () => number;
    toString: () => string;
}
export class Rect implements IRect {
    public static zero = Rect.fromLTRB(0.0, 0.0, 0.0, 0.0);
    private static _giantScalar = 1.0e9;
    public static largest = Rect.fromLTRB(
        -Rect._giantScalar,
        -Rect._giantScalar,
        Rect._giantScalar,
        Rect._giantScalar
    );
    public readonly left: number = undefined as any;
    public readonly top: number = undefined as any;
    public readonly right: number = undefined as any;
    public readonly bottom: number = undefined as any;
    public static fromLTRB(
        left: number,
        top: number,
        right: number,
        bottom: number
    ): Rect {
        return dart.ui.rectFromLTRB(left, top, right, bottom);
    }
    public static fromLTWH(
        left: number,
        top: number,
        width: number,
        height: number
    ): Rect {
        return dart.ui.rectFromLTWH(left, top, width, height);
    }
    public static fromCircle(props: { center: Offset; radius: number }): Rect {
        return dart.ui.rectFromCircle(props);
    }
    public static fromCenter(props: {
        center: Offset;
        height: number;
        width: number;
    }): Rect {
        return dart.ui.rectFromCenter(props);
    }
    public static fromPoints(a: Offset, b: Offset): Rect {
        return dart.ui.rectFromPoints(a, b);
    }
    public static lerp(
        a: Rect | undefined,
        b: Rect | undefined,
        t: number
    ): Rect | undefined {
        return dart.ui.rectLerp(a, b, t);
    }
    private readonly _dart_getWidth: () => number = undefined as any;
    private readonly _dart_getHeight: () => number = undefined as any;
    private readonly _dart_getSize: () => Size = undefined as any;
    private readonly _dart_getHasNaN: () => boolean = undefined as any;
    private readonly _dart_getIsInfinite: () => boolean = undefined as any;
    private readonly _dart_getIsFinite: () => boolean = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_shift: (offset: Offset) => Rect = undefined as any;
    private readonly _dart_translate: (
        translateX: number,
        translateY: number
    ) => Rect = undefined as any;
    private readonly _dart_inflate: (delta: number) => Rect = undefined as any;
    private readonly _dart_deflate: (delta: number) => Rect = undefined as any;
    private readonly _dart_intersect: (other: Rect) => Rect = undefined as any;
    private readonly _dart_expandToInclude: (
        other: Rect
    ) => Rect = undefined as any;
    private readonly _dart_overlaps: (
        other: Rect
    ) => boolean = undefined as any;
    private readonly _dart_getShortestSide: () => number = undefined as any;
    private readonly _dart_getLongestSide: () => number = undefined as any;
    private readonly _dart_getTopLeft: () => Offset = undefined as any;
    private readonly _dart_getTopCenter: () => Offset = undefined as any;
    private readonly _dart_getTopRight: () => Offset = undefined as any;
    private readonly _dart_getCenterLeft: () => Offset = undefined as any;
    private readonly _dart_getCenter: () => Offset = undefined as any;
    private readonly _dart_getCenterRight: () => Offset = undefined as any;
    private readonly _dart_getBottomLeft: () => Offset = undefined as any;
    private readonly _dart_getBottomCenter: () => Offset = undefined as any;
    private readonly _dart_getBottomRight: () => Offset = undefined as any;
    private readonly _dart_contains: (
        offset: Offset
    ) => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getWidth(): number {
        return this._dart_getWidth();
    }
    public getHeight(): number {
        return this._dart_getHeight();
    }
    public getSize(): Size {
        return this._dart_getSize();
    }
    public getHasNaN(): boolean {
        return this._dart_getHasNaN();
    }
    public getIsInfinite(): boolean {
        return this._dart_getIsInfinite();
    }
    public getIsFinite(): boolean {
        return this._dart_getIsFinite();
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public shift(offset: Offset): Rect {
        return this._dart_shift(offset);
    }
    public translate(translateX: number, translateY: number): Rect {
        return this._dart_translate(translateX, translateY);
    }
    public inflate(delta: number): Rect {
        return this._dart_inflate(delta);
    }
    public deflate(delta: number): Rect {
        return this._dart_deflate(delta);
    }
    public intersect(other: Rect): Rect {
        return this._dart_intersect(other);
    }
    public expandToInclude(other: Rect): Rect {
        return this._dart_expandToInclude(other);
    }
    public overlaps(other: Rect): boolean {
        return this._dart_overlaps(other);
    }
    public getShortestSide(): number {
        return this._dart_getShortestSide();
    }
    public getLongestSide(): number {
        return this._dart_getLongestSide();
    }
    public getTopLeft(): Offset {
        return this._dart_getTopLeft();
    }
    public getTopCenter(): Offset {
        return this._dart_getTopCenter();
    }
    public getTopRight(): Offset {
        return this._dart_getTopRight();
    }
    public getCenterLeft(): Offset {
        return this._dart_getCenterLeft();
    }
    public getCenter(): Offset {
        return this._dart_getCenter();
    }
    public getCenterRight(): Offset {
        return this._dart_getCenterRight();
    }
    public getBottomLeft(): Offset {
        return this._dart_getBottomLeft();
    }
    public getBottomCenter(): Offset {
        return this._dart_getBottomCenter();
    }
    public getBottomRight(): Offset {
        return this._dart_getBottomRight();
    }
    public contains(offset: Offset): boolean {
        return this._dart_contains(offset);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
