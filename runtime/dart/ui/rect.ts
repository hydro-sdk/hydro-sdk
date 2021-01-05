import { IOffset } from "./offset";
import { ISize } from "./size";
declare const dart: {
    ui: {
        rectFromLTRB: (
            left: number,
            top: number,
            right: number,
            bottom: number
        ) => IRect;
        rectFromLTWH: (
            left: number,
            top: number,
            width: number,
            height: number
        ) => IRect;
        rectFromCircle: (props: { center: IOffset; radius: number }) => IRect;
        rectFromCenter: (props: {
            center: IOffset;
            height: number;
            width: number;
        }) => IRect;
        rectFromPoints: (a: IOffset, b: IOffset) => IRect;
        rectLerp: (
            a: IRect | undefined,
            b: IRect | undefined,
            t: number
        ) => IRect | undefined;
    };
};
export interface IRect {
    left: number;
    top: number;
    right: number;
    bottom: number;
    getWidth: () => number;
    getHeight: () => number;
    getSize: () => ISize;
    getHasNaN: () => boolean;
    getIsInfinite: () => boolean;
    getIsFinite: () => boolean;
    getIsEmpty: () => boolean;
    shift: (offset: IOffset) => IRect;
    translate: (translateX: number, translateY: number) => IRect;
    inflate: (delta: number) => IRect;
    deflate: (delta: number) => IRect;
    intersect: (other: IRect) => IRect;
    expandToInclude: (other: IRect) => IRect;
    overlaps: (other: IRect) => boolean;
    getShortestSide: () => number;
    getLongestSide: () => number;
    getTopLeft: () => IOffset;
    getTopCenter: () => IOffset;
    getTopRight: () => IOffset;
    getCenterLeft: () => IOffset;
    getCenter: () => IOffset;
    getCenterRight: () => IOffset;
    getBottomLeft: () => IOffset;
    getBottomCenter: () => IOffset;
    getBottomRight: () => IOffset;
    contains: (offset: IOffset) => boolean;
    getHashCode: () => number;
    toString: () => string;
}
export class Rect {
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
    ): IRect {
        return dart.ui.rectFromLTRB(left, top, right, bottom);
    }
    public static fromLTWH(
        left: number,
        top: number,
        width: number,
        height: number
    ): IRect {
        return dart.ui.rectFromLTWH(left, top, width, height);
    }
    public static fromCircle(props: {
        center: IOffset;
        radius: number;
    }): IRect {
        return dart.ui.rectFromCircle(props);
    }
    public static fromCenter(props: {
        center: IOffset;
        height: number;
        width: number;
    }): IRect {
        return dart.ui.rectFromCenter(props);
    }
    public static fromPoints(a: IOffset, b: IOffset): IRect {
        return dart.ui.rectFromPoints(a, b);
    }
    public static lerp(
        a: IRect | undefined,
        b: IRect | undefined,
        t: number
    ): IRect | undefined {
        return dart.ui.rectLerp(a, b, t);
    }
    private readonly _dart_getWidth: () => number = undefined as any;
    private readonly _dart_getHeight: () => number = undefined as any;
    private readonly _dart_getSize: () => ISize = undefined as any;
    private readonly _dart_getHasNaN: () => boolean = undefined as any;
    private readonly _dart_getIsInfinite: () => boolean = undefined as any;
    private readonly _dart_getIsFinite: () => boolean = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_shift: (offset: IOffset) => IRect = undefined as any;
    private readonly _dart_translate: (
        translateX: number,
        translateY: number
    ) => IRect = undefined as any;
    private readonly _dart_inflate: (delta: number) => IRect = undefined as any;
    private readonly _dart_deflate: (delta: number) => IRect = undefined as any;
    private readonly _dart_intersect: (
        other: IRect
    ) => IRect = undefined as any;
    private readonly _dart_expandToInclude: (
        other: IRect
    ) => IRect = undefined as any;
    private readonly _dart_overlaps: (
        other: IRect
    ) => boolean = undefined as any;
    private readonly _dart_getShortestSide: () => number = undefined as any;
    private readonly _dart_getLongestSide: () => number = undefined as any;
    private readonly _dart_getTopLeft: () => IOffset = undefined as any;
    private readonly _dart_getTopCenter: () => IOffset = undefined as any;
    private readonly _dart_getTopRight: () => IOffset = undefined as any;
    private readonly _dart_getCenterLeft: () => IOffset = undefined as any;
    private readonly _dart_getCenter: () => IOffset = undefined as any;
    private readonly _dart_getCenterRight: () => IOffset = undefined as any;
    private readonly _dart_getBottomLeft: () => IOffset = undefined as any;
    private readonly _dart_getBottomCenter: () => IOffset = undefined as any;
    private readonly _dart_getBottomRight: () => IOffset = undefined as any;
    private readonly _dart_contains: (
        offset: IOffset
    ) => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getWidth(): number {
        return this._dart_getWidth();
    }
    public getHeight(): number {
        return this._dart_getHeight();
    }
    public getSize(): ISize {
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
    public shift(offset: IOffset): IRect {
        return this._dart_shift(offset);
    }
    public translate(translateX: number, translateY: number): IRect {
        return this._dart_translate(translateX, translateY);
    }
    public inflate(delta: number): IRect {
        return this._dart_inflate(delta);
    }
    public deflate(delta: number): IRect {
        return this._dart_deflate(delta);
    }
    public intersect(other: IRect): IRect {
        return this._dart_intersect(other);
    }
    public expandToInclude(other: IRect): IRect {
        return this._dart_expandToInclude(other);
    }
    public overlaps(other: IRect): boolean {
        return this._dart_overlaps(other);
    }
    public getShortestSide(): number {
        return this._dart_getShortestSide();
    }
    public getLongestSide(): number {
        return this._dart_getLongestSide();
    }
    public getTopLeft(): IOffset {
        return this._dart_getTopLeft();
    }
    public getTopCenter(): IOffset {
        return this._dart_getTopCenter();
    }
    public getTopRight(): IOffset {
        return this._dart_getTopRight();
    }
    public getCenterLeft(): IOffset {
        return this._dart_getCenterLeft();
    }
    public getCenter(): IOffset {
        return this._dart_getCenter();
    }
    public getCenterRight(): IOffset {
        return this._dart_getCenterRight();
    }
    public getBottomLeft(): IOffset {
        return this._dart_getBottomLeft();
    }
    public getBottomCenter(): IOffset {
        return this._dart_getBottomCenter();
    }
    public getBottomRight(): IOffset {
        return this._dart_getBottomRight();
    }
    public contains(offset: IOffset): boolean {
        return this._dart_contains(offset);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
