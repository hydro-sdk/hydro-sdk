import { Offset } from "./offset";
import { Radius } from "./radius";
import { Rect } from "./rect";

declare const dart: {
    ui: {
        rRectFromLTRBXY: (
            left: number,
            top: number,
            right: number,
            bottom: number,
            radiusX: number,
            radiusY: number
        ) => RRect;
        rRectFromLTRBR: (
            left: number,
            top: number,
            right: number,
            bottom: number,
            radius: Radius
        ) => RRect;
        rRectFromRectXY: (
            rect: Rect,
            radiusX: number,
            radiusY: number
        ) => RRect;
        rRectFromRectAndRadius: (rect: Rect, radius: Radius) => RRect;
        rRectFromLTRBAndCorners: (
            left: number,
            top: number,
            right: number,
            bottom: number,
            props: {
                bottomLeft: Radius;
                bottomRight: Radius;
                topLeft: Radius;
                topRight: Radius;
            }
        ) => RRect;
        rRectFromRectAndCorners: (
            rect: Rect,
            props: {
                bottomLeft: Radius;
                bottomRight: Radius;
                topLeft: Radius;
                topRight: Radius;
            }
        ) => RRect;
        rRectLerp: (
            a: RRect | undefined,
            b: RRect | undefined,
            t: number
        ) => RRect | undefined;
    };
};
const fromLTRBAndCornersDefaultProps = {
    bottomLeft: Radius.zero,
    bottomRight: Radius.zero,
    topLeft: Radius.zero,
    topRight: Radius.zero,
};
const fromRectAndCornersDefaultProps = {
    bottomLeft: Radius.zero,
    bottomRight: Radius.zero,
    topLeft: Radius.zero,
    topRight: Radius.zero,
};
export interface IRRect {
    left: number;
    top: number;
    right: number;
    bottom: number;
    tlRadiusX: number;
    tlRadiusY: number;
    trRadiusX: number;
    trRadiusY: number;
    brRadiusX: number;
    brRadiusY: number;
    blRadiusX: number;
    blRadiusY: number;
    getTlRadius: () => Radius;
    getTrRadius: () => Radius;
    getBrRadius: () => Radius;
    getBlRadius: () => Radius;
    shift: (offset: Offset) => RRect;
    inflate: (delta: number) => RRect;
    deflate: (delta: number) => RRect;
    getWidth: () => number;
    getHeight: () => number;
    getOuterRect: () => Rect;
    getSafeInnerRect: () => Rect;
    getMiddleRect: () => Rect;
    getWideMiddleRect: () => Rect;
    getTallMiddleRect: () => Rect;
    getIsEmpty: () => boolean;
    getIsFinite: () => boolean;
    getIsRect: () => boolean;
    getIsStadium: () => boolean;
    getIsEllipse: () => boolean;
    getIsCircle: () => boolean;
    getShortestSide: () => number;
    getLongestSide: () => number;
    getHasNaN: () => boolean;
    getCenter: () => Offset;
    scaleRadii: () => RRect;
    contains: (point: Offset) => boolean;
    getHashCode: () => number;
    toString: () => string;
}
export class RRect implements IRRect {
    public readonly left: number = undefined as any;
    public readonly top: number = undefined as any;
    public readonly right: number = undefined as any;
    public readonly bottom: number = undefined as any;
    public readonly tlRadiusX: number = undefined as any;
    public readonly tlRadiusY: number = undefined as any;
    public readonly trRadiusX: number = undefined as any;
    public readonly trRadiusY: number = undefined as any;
    public readonly brRadiusX: number = undefined as any;
    public readonly brRadiusY: number = undefined as any;
    public readonly blRadiusX: number = undefined as any;
    public readonly blRadiusY: number = undefined as any;
    public static fromLTRBXY(
        left: number,
        top: number,
        right: number,
        bottom: number,
        radiusX: number,
        radiusY: number
    ): RRect {
        return dart.ui.rRectFromLTRBXY(
            left,
            top,
            right,
            bottom,
            radiusX,
            radiusY
        );
    }
    public static fromLTRBR(
        left: number,
        top: number,
        right: number,
        bottom: number,
        radius: Radius
    ): RRect {
        return dart.ui.rRectFromLTRBR(left, top, right, bottom, radius);
    }
    public static fromRectXY(
        rect: Rect,
        radiusX: number,
        radiusY: number
    ): RRect {
        return dart.ui.rRectFromRectXY(rect, radiusX, radiusY);
    }
    public static fromRectAndRadius(rect: Rect, radius: Radius): RRect {
        return dart.ui.rRectFromRectAndRadius(rect, radius);
    }
    public static fromLTRBAndCorners(
        left: number,
        top: number,
        right: number,
        bottom: number,
        props: {
            bottomLeft?: Radius;
            bottomRight?: Radius;
            topLeft?: Radius;
            topRight?: Radius;
        }
    ): RRect {
        return dart.ui.rRectFromLTRBAndCorners(left, top, right, bottom, {
            ...fromLTRBAndCornersDefaultProps,
            ...props,
        });
    }
    public static fromRectAndCorners(
        rect: Rect,
        props: {
            bottomLeft?: Radius;
            bottomRight?: Radius;
            topLeft?: Radius;
            topRight?: Radius;
        }
    ): RRect {
        return dart.ui.rRectFromRectAndCorners(rect, {
            ...fromRectAndCornersDefaultProps,
            ...props,
        });
    }
    public static lerp(
        a: RRect | undefined,
        b: RRect | undefined,
        t: number
    ): RRect | undefined {
        return dart.ui.rRectLerp(a, b, t);
    }
    private readonly _dart_getTlRadius: () => Radius = undefined as any;
    private readonly _dart_getTrRadius: () => Radius = undefined as any;
    private readonly _dart_getBrRadius: () => Radius = undefined as any;
    private readonly _dart_getBlRadius: () => Radius = undefined as any;
    private readonly _dart_shift: (offset: Offset) => RRect = undefined as any;
    private readonly _dart_inflate: (delta: number) => RRect = undefined as any;
    private readonly _dart_deflate: (delta: number) => RRect = undefined as any;
    private readonly _dart_getWidth: () => number = undefined as any;
    private readonly _dart_getHeight: () => number = undefined as any;
    private readonly _dart_getOuterRect: () => Rect = undefined as any;
    private readonly _dart_getSafeInnerRect: () => Rect = undefined as any;
    private readonly _dart_getMiddleRect: () => Rect = undefined as any;
    private readonly _dart_getWideMiddleRect: () => Rect = undefined as any;
    private readonly _dart_getTallMiddleRect: () => Rect = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsFinite: () => boolean = undefined as any;
    private readonly _dart_getIsRect: () => boolean = undefined as any;
    private readonly _dart_getIsStadium: () => boolean = undefined as any;
    private readonly _dart_getIsEllipse: () => boolean = undefined as any;
    private readonly _dart_getIsCircle: () => boolean = undefined as any;
    private readonly _dart_getShortestSide: () => number = undefined as any;
    private readonly _dart_getLongestSide: () => number = undefined as any;
    private readonly _dart_getHasNaN: () => boolean = undefined as any;
    private readonly _dart_getCenter: () => Offset = undefined as any;
    private readonly _dart_scaleRadii: () => RRect = undefined as any;
    private readonly _dart_contains: (
        point: Offset
    ) => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getTlRadius(): Radius {
        return this._dart_getTlRadius();
    }
    public getTrRadius(): Radius {
        return this._dart_getTrRadius();
    }
    public getBrRadius(): Radius {
        return this._dart_getBrRadius();
    }
    public getBlRadius(): Radius {
        return this._dart_getBlRadius();
    }
    public shift(offset: Offset): RRect {
        return this._dart_shift(offset);
    }
    public inflate(delta: number): RRect {
        return this._dart_inflate(delta);
    }
    public deflate(delta: number): RRect {
        return this._dart_deflate(delta);
    }
    public getWidth(): number {
        return this._dart_getWidth();
    }
    public getHeight(): number {
        return this._dart_getHeight();
    }
    public getOuterRect(): Rect {
        return this._dart_getOuterRect();
    }
    public getSafeInnerRect(): Rect {
        return this._dart_getSafeInnerRect();
    }
    public getMiddleRect(): Rect {
        return this._dart_getMiddleRect();
    }
    public getWideMiddleRect(): Rect {
        return this._dart_getWideMiddleRect();
    }
    public getTallMiddleRect(): Rect {
        return this._dart_getTallMiddleRect();
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getIsFinite(): boolean {
        return this._dart_getIsFinite();
    }
    public getIsRect(): boolean {
        return this._dart_getIsRect();
    }
    public getIsStadium(): boolean {
        return this._dart_getIsStadium();
    }
    public getIsEllipse(): boolean {
        return this._dart_getIsEllipse();
    }
    public getIsCircle(): boolean {
        return this._dart_getIsCircle();
    }
    public getShortestSide(): number {
        return this._dart_getShortestSide();
    }
    public getLongestSide(): number {
        return this._dart_getLongestSide();
    }
    public getHasNaN(): boolean {
        return this._dart_getHasNaN();
    }
    public getCenter(): Offset {
        return this._dart_getCenter();
    }
    public scaleRadii(): RRect {
        return this._dart_scaleRadii();
    }
    public contains(point: Offset): boolean {
        return this._dart_contains(point);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
