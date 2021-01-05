import { IOffset } from "./offset";
import { IRadius, Radius } from "./radius";
import { IRect } from "./rect";
declare const dart: {
    ui: {
        rRectFromLTRBXY: (
            left: number,
            top: number,
            right: number,
            bottom: number,
            radiusX: number,
            radiusY: number
        ) => IRRect;
        rRectFromLTRBR: (
            left: number,
            top: number,
            right: number,
            bottom: number,
            radius: IRadius
        ) => IRRect;
        rRectFromRectXY: (
            rect: IRect,
            radiusX: number,
            radiusY: number
        ) => IRRect;
        rRectFromRectAndRadius: (rect: IRect, radius: IRadius) => IRRect;
        rRectFromLTRBAndCorners: (
            left: number,
            top: number,
            right: number,
            bottom: number,
            props: {
                bottomLeft: IRadius;
                bottomRight: IRadius;
                topLeft: IRadius;
                topRight: IRadius;
            }
        ) => IRRect;
        rRectFromRectAndCorners: (
            rect: IRect,
            props: {
                bottomLeft: IRadius;
                bottomRight: IRadius;
                topLeft: IRadius;
                topRight: IRadius;
            }
        ) => IRRect;
        rRectLerp: (
            a: IRRect | undefined,
            b: IRRect | undefined,
            t: number
        ) => IRRect | undefined;
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
    getTlRadius: () => IRadius;
    getTrRadius: () => IRadius;
    getBrRadius: () => IRadius;
    getBlRadius: () => IRadius;
    shift: (offset: IOffset) => IRRect;
    inflate: (delta: number) => IRRect;
    deflate: (delta: number) => IRRect;
    getWidth: () => number;
    getHeight: () => number;
    getOuterRect: () => IRect;
    getSafeInnerRect: () => IRect;
    getMiddleRect: () => IRect;
    getWideMiddleRect: () => IRect;
    getTallMiddleRect: () => IRect;
    getIsEmpty: () => boolean;
    getIsFinite: () => boolean;
    getIsRect: () => boolean;
    getIsStadium: () => boolean;
    getIsEllipse: () => boolean;
    getIsCircle: () => boolean;
    getShortestSide: () => number;
    getLongestSide: () => number;
    getHasNaN: () => boolean;
    getCenter: () => IOffset;
    scaleRadii: () => IRRect;
    contains: (point: IOffset) => boolean;
    getHashCode: () => number;
    toString: () => string;
}
export class RRect {
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
    ): IRRect {
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
        radius: IRadius
    ): IRRect {
        return dart.ui.rRectFromLTRBR(left, top, right, bottom, radius);
    }
    public static fromRectXY(
        rect: IRect,
        radiusX: number,
        radiusY: number
    ): IRRect {
        return dart.ui.rRectFromRectXY(rect, radiusX, radiusY);
    }
    public static fromRectAndRadius(rect: IRect, radius: IRadius): IRRect {
        return dart.ui.rRectFromRectAndRadius(rect, radius);
    }
    public static fromLTRBAndCorners(
        left: number,
        top: number,
        right: number,
        bottom: number,
        props: {
            bottomLeft?: IRadius;
            bottomRight?: IRadius;
            topLeft?: IRadius;
            topRight?: IRadius;
        }
    ): IRRect {
        return dart.ui.rRectFromLTRBAndCorners(left, top, right, bottom, {
            ...fromLTRBAndCornersDefaultProps,
            ...props,
        });
    }
    public static fromRectAndCorners(
        rect: IRect,
        props: {
            bottomLeft?: IRadius;
            bottomRight?: IRadius;
            topLeft?: IRadius;
            topRight?: IRadius;
        }
    ): IRRect {
        return dart.ui.rRectFromRectAndCorners(rect, {
            ...fromRectAndCornersDefaultProps,
            ...props,
        });
    }
    public static lerp(
        a: IRRect | undefined,
        b: IRRect | undefined,
        t: number
    ): IRRect | undefined {
        return dart.ui.rRectLerp(a, b, t);
    }
    private readonly _dart_getTlRadius: () => IRadius = undefined as any;
    private readonly _dart_getTrRadius: () => IRadius = undefined as any;
    private readonly _dart_getBrRadius: () => IRadius = undefined as any;
    private readonly _dart_getBlRadius: () => IRadius = undefined as any;
    private readonly _dart_shift: (
        offset: IOffset
    ) => IRRect = undefined as any;
    private readonly _dart_inflate: (
        delta: number
    ) => IRRect = undefined as any;
    private readonly _dart_deflate: (
        delta: number
    ) => IRRect = undefined as any;
    private readonly _dart_getWidth: () => number = undefined as any;
    private readonly _dart_getHeight: () => number = undefined as any;
    private readonly _dart_getOuterRect: () => IRect = undefined as any;
    private readonly _dart_getSafeInnerRect: () => IRect = undefined as any;
    private readonly _dart_getMiddleRect: () => IRect = undefined as any;
    private readonly _dart_getWideMiddleRect: () => IRect = undefined as any;
    private readonly _dart_getTallMiddleRect: () => IRect = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsFinite: () => boolean = undefined as any;
    private readonly _dart_getIsRect: () => boolean = undefined as any;
    private readonly _dart_getIsStadium: () => boolean = undefined as any;
    private readonly _dart_getIsEllipse: () => boolean = undefined as any;
    private readonly _dart_getIsCircle: () => boolean = undefined as any;
    private readonly _dart_getShortestSide: () => number = undefined as any;
    private readonly _dart_getLongestSide: () => number = undefined as any;
    private readonly _dart_getHasNaN: () => boolean = undefined as any;
    private readonly _dart_getCenter: () => IOffset = undefined as any;
    private readonly _dart_scaleRadii: () => IRRect = undefined as any;
    private readonly _dart_contains: (
        point: IOffset
    ) => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getTlRadius(): IRadius {
        return this._dart_getTlRadius();
    }
    public getTrRadius(): IRadius {
        return this._dart_getTrRadius();
    }
    public getBrRadius(): IRadius {
        return this._dart_getBrRadius();
    }
    public getBlRadius(): IRadius {
        return this._dart_getBlRadius();
    }
    public shift(offset: IOffset): IRRect {
        return this._dart_shift(offset);
    }
    public inflate(delta: number): IRRect {
        return this._dart_inflate(delta);
    }
    public deflate(delta: number): IRRect {
        return this._dart_deflate(delta);
    }
    public getWidth(): number {
        return this._dart_getWidth();
    }
    public getHeight(): number {
        return this._dart_getHeight();
    }
    public getOuterRect(): IRect {
        return this._dart_getOuterRect();
    }
    public getSafeInnerRect(): IRect {
        return this._dart_getSafeInnerRect();
    }
    public getMiddleRect(): IRect {
        return this._dart_getMiddleRect();
    }
    public getWideMiddleRect(): IRect {
        return this._dart_getWideMiddleRect();
    }
    public getTallMiddleRect(): IRect {
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
    public getCenter(): IOffset {
        return this._dart_getCenter();
    }
    public scaleRadii(): IRRect {
        return this._dart_scaleRadii();
    }
    public contains(point: IOffset): boolean {
        return this._dart_contains(point);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
