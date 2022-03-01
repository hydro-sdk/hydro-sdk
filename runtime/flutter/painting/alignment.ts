
import { IAlignmentGeometry } from "./alignmentGeometry";
import { TextDirection } from "../../dart/ui/textDirection";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { IRect } from "../../dart/ui/rect";
declare const flutter: {
painting: {
alignment: (this: void, alignment: IAlignment, x: number, y: number) => IAlignment;
alignmentLerp: (a: IAlignment | undefined, b: IAlignment | undefined, t: number) => IAlignment | undefined
}
};
export interface IAlignment


{
x: number;
y: number;
add: (other: IAlignmentGeometry) => IAlignmentGeometry;
alongOffset: (other: IOffset) => IOffset;
alongSize: (other: ISize) => IOffset;
withinRect: (rect: IRect) => IOffset;
inscribe: (size: ISize, rect: IRect) => IRect;
resolve: (direction?: TextDirection | undefined) => IAlignment;
toString: () => string;
getHashCode: () => number;
}export class Alignment

 implements IAlignmentGeometry
{    public static topLeft = new Alignment(-1.0, -1.0);
    public static topCenter = new Alignment(0.0, -1.0);
    public static topRight = new Alignment(1.0, -1.0);
    public static centerLeft = new Alignment(-1.0, 0.0);
    public static center = new Alignment(0.0, 0.0);
    public static centerRight = new Alignment(1.0, 0.0);
    public static bottomLeft = new Alignment(-1.0, 1.0);
    public static bottomCenter = new Alignment(0.0, 1.0);
    public static bottomRight = new Alignment(1.0, 1.0);
    public readonly x: number = undefined as any;
    public readonly y: number = undefined as any;
public constructor(x: number, y: number){
flutter.painting.alignment(this, x, y);}
public static lerp(a: IAlignment | undefined, b: IAlignment | undefined, t: number) : IAlignment | undefined{
return flutter.painting.alignmentLerp(a, b, t);
}    private readonly _dart_add: (other: IAlignmentGeometry) => IAlignmentGeometry = undefined as any;
    private readonly _dart_alongOffset: (other: IOffset) => IOffset = undefined as any;
    private readonly _dart_alongSize: (other: ISize) => IOffset = undefined as any;
    private readonly _dart_withinRect: (rect: IRect) => IOffset = undefined as any;
    private readonly _dart_inscribe: (size: ISize, rect: IRect) => IRect = undefined as any;
    private readonly _dart_resolve: (direction?: TextDirection | undefined) => IAlignment = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
