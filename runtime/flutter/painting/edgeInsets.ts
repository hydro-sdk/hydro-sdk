
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
import { Axis } from "./axis";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
declare const flutter: {
painting: {
edgeInsetsLerp: (a: IEdgeInsets | undefined, b: IEdgeInsets | undefined, t: number) => IEdgeInsets | undefined
}
};
export interface IEdgeInsets


{
left: number;
top: number;
right: number;
bottom: number;
getTopLeft: () => IOffset;
getTopRight: () => IOffset;
getBottomLeft: () => IOffset;
getBottomRight: () => IOffset;
getFlipped: () => IEdgeInsets;
inflateRect: (rect: IRect) => IRect;
deflateRect: (rect: IRect) => IRect;
subtract: (other: IEdgeInsetsGeometry) => IEdgeInsetsGeometry;
add: (other: IEdgeInsetsGeometry) => IEdgeInsetsGeometry;
clamp: (min: IEdgeInsetsGeometry, max: IEdgeInsetsGeometry) => IEdgeInsetsGeometry;
resolve: (direction?: TextDirection | undefined) => IEdgeInsets;
copyWith: ( props? : {  bottom? : number | undefined, left? : number | undefined, right? : number | undefined, top? : number | undefined,}) => IEdgeInsets;
along: (axis: Axis) => number;
inflateSize: (size: ISize) => ISize;
deflateSize: (size: ISize) => ISize;
toString: () => string;
getIsNonNegative: () => boolean;
getHorizontal: () => number;
getVertical: () => number;
getCollapsedSize: () => ISize;
getHashCode: () => number;
}export class EdgeInsets

 implements IEdgeInsetsGeometry
{    public static zero = EdgeInsets.only();
    public readonly left: number = undefined as any;
    public readonly top: number = undefined as any;
    public readonly right: number = undefined as any;
    public readonly bottom: number = undefined as any;
public static lerp(a: IEdgeInsets | undefined, b: IEdgeInsets | undefined, t: number) : IEdgeInsets | undefined{
return flutter.painting.edgeInsetsLerp(a, b, t);
}    private readonly _dart_getTopLeft: () => IOffset = undefined as any;
    private readonly _dart_getTopRight: () => IOffset = undefined as any;
    private readonly _dart_getBottomLeft: () => IOffset = undefined as any;
    private readonly _dart_getBottomRight: () => IOffset = undefined as any;
    private readonly _dart_getFlipped: () => IEdgeInsets = undefined as any;
    private readonly _dart_inflateRect: (rect: IRect) => IRect = undefined as any;
    private readonly _dart_deflateRect: (rect: IRect) => IRect = undefined as any;
    private readonly _dart_subtract: (other: IEdgeInsetsGeometry) => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_add: (other: IEdgeInsetsGeometry) => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_clamp: (min: IEdgeInsetsGeometry, max: IEdgeInsetsGeometry) => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_resolve: (direction?: TextDirection | undefined) => IEdgeInsets = undefined as any;
    private readonly _dart_copyWith: ( props? : {  bottom? : number | undefined, left? : number | undefined, right? : number | undefined, top? : number | undefined,}) => IEdgeInsets = undefined as any;
    private readonly _dart_along: (axis: Axis) => number = undefined as any;
    private readonly _dart_inflateSize: (size: ISize) => ISize = undefined as any;
    private readonly _dart_deflateSize: (size: ISize) => ISize = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getIsNonNegative: () => boolean = undefined as any;
    private readonly _dart_getHorizontal: () => number = undefined as any;
    private readonly _dart_getVertical: () => number = undefined as any;
    private readonly _dart_getCollapsedSize: () => ISize = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getTopLeft() : IOffset {
    return this._dart_getTopLeft();
}
public getTopRight() : IOffset {
    return this._dart_getTopRight();
}
public getBottomLeft() : IOffset {
    return this._dart_getBottomLeft();
}
public getBottomRight() : IOffset {
    return this._dart_getBottomRight();
}
public getFlipped() : IEdgeInsets {
    return this._dart_getFlipped();
}
public inflateRect(rect: IRect) : IRect {
    return this._dart_inflateRect(rect);
}
public deflateRect(rect: IRect) : IRect {
    return this._dart_deflateRect(rect);
}
public subtract(other: IEdgeInsetsGeometry) : IEdgeInsetsGeometry {
    return this._dart_subtract(other);
}
public add(other: IEdgeInsetsGeometry) : IEdgeInsetsGeometry {
    return this._dart_add(other);
}
public clamp(min: IEdgeInsetsGeometry, max: IEdgeInsetsGeometry) : IEdgeInsetsGeometry {
    return this._dart_clamp(min, max);
}
public resolve(direction?: TextDirection | undefined) : IEdgeInsets {
    return this._dart_resolve(direction);
}
public copyWith( props? : {  bottom? : number | undefined, left? : number | undefined, right? : number | undefined, top? : number | undefined,}) : IEdgeInsets {
    return this._dart_copyWith(props);
}
public along(axis: Axis) : number {
    return this._dart_along(axis);
}
public inflateSize(size: ISize) : ISize {
    return this._dart_inflateSize(size);
}
public deflateSize(size: ISize) : ISize {
    return this._dart_deflateSize(size);
}
public toString() : string {
    return this._dart_toString();
}
public getIsNonNegative() : boolean {
    return this._dart_getIsNonNegative();
}
public getHorizontal() : number {
    return this._dart_getHorizontal();
}
public getVertical() : number {
    return this._dart_getVertical();
}
public getCollapsedSize() : ISize {
    return this._dart_getCollapsedSize();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
