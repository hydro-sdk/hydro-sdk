
import { IAlignment } from "./alignment";
import { IAlignmentGeometry } from "./alignmentGeometry";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
declare const flutter: {
painting: {
fractionalOffset: (this: void, fractionalOffset: IFractionalOffset, dx: number, dy: number) => IFractionalOffset;
fractionalOffsetFromOffsetAndSize: (offset: IOffset, size: ISize) => IFractionalOffset;
fractionalOffsetFromOffsetAndRect: (offset: IOffset, rect: IRect) => IFractionalOffset;
fractionalOffsetLerp: (a: IFractionalOffset | undefined, b: IFractionalOffset | undefined, t: number) => IFractionalOffset | undefined
}
};
export interface IFractionalOffset


{
x: number;
y: number;
getDx: () => number;
getDy: () => number;
toString: () => string;
add: (other: IAlignmentGeometry) => IAlignmentGeometry;
alongOffset: (other: IOffset) => IOffset;
alongSize: (other: ISize) => IOffset;
withinRect: (rect: IRect) => IOffset;
inscribe: (size: ISize, rect: IRect) => IRect;
resolve: (direction?: TextDirection | undefined) => IAlignment;
getHashCode: () => number;
}export class FractionalOffset

 implements IAlignment
{    public static topLeft = new FractionalOffset(0.0, 0.0);
    public static topCenter = new FractionalOffset(0.5, 0.0);
    public static topRight = new FractionalOffset(1.0, 0.0);
    public static centerLeft = new FractionalOffset(0.0, 0.5);
    public static center = new FractionalOffset(0.5, 0.5);
    public static centerRight = new FractionalOffset(1.0, 0.5);
    public static bottomLeft = new FractionalOffset(0.0, 1.0);
    public static bottomCenter = new FractionalOffset(0.5, 1.0);
    public static bottomRight = new FractionalOffset(1.0, 1.0);
    public readonly x: number = undefined as any;
    public readonly y: number = undefined as any;
public constructor(dx: number, dy: number){
flutter.painting.fractionalOffset(this, dx, dy);}
public static fromOffsetAndSize(offset: IOffset, size: ISize) : IFractionalOffset{
return flutter.painting.fractionalOffsetFromOffsetAndSize(offset, size);
}public static fromOffsetAndRect(offset: IOffset, rect: IRect) : IFractionalOffset{
return flutter.painting.fractionalOffsetFromOffsetAndRect(offset, rect);
}public static lerp(a: IFractionalOffset | undefined, b: IFractionalOffset | undefined, t: number) : IFractionalOffset | undefined{
return flutter.painting.fractionalOffsetLerp(a, b, t);
}    private readonly _dart_getDx: () => number = undefined as any;
    private readonly _dart_getDy: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_add: (other: IAlignmentGeometry) => IAlignmentGeometry = undefined as any;
    private readonly _dart_alongOffset: (other: IOffset) => IOffset = undefined as any;
    private readonly _dart_alongSize: (other: ISize) => IOffset = undefined as any;
    private readonly _dart_withinRect: (rect: IRect) => IOffset = undefined as any;
    private readonly _dart_inscribe: (size: ISize, rect: IRect) => IRect = undefined as any;
    private readonly _dart_resolve: (direction?: TextDirection | undefined) => IAlignment = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getDx() : number {
    return this._dart_getDx();
}
public getDy() : number {
    return this._dart_getDy();
}
public toString() : string {
    return this._dart_toString();
}
public add(other: IAlignmentGeometry) : IAlignmentGeometry {
    return this._dart_add(other);
}
public alongOffset(other: IOffset) : IOffset {
    return this._dart_alongOffset(other);
}
public alongSize(other: ISize) : IOffset {
    return this._dart_alongSize(other);
}
public withinRect(rect: IRect) : IOffset {
    return this._dart_withinRect(rect);
}
public inscribe(size: ISize, rect: IRect) : IRect {
    return this._dart_inscribe(size, rect);
}
public resolve(direction?: TextDirection | undefined) : IAlignment {
    return this._dart_resolve(direction);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
