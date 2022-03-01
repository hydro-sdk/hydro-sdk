
import { IShapeBorder } from "./shapeBorder";
import { TextDirection } from "../../dart/ui/textDirection";
import { IRect } from "../../dart/ui/rect";
import { IPath } from "../../dart/ui/path";
import { ICanvas } from "../../dart/ui/canvas";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
import { IBorderSide } from "./borderSide";
import { IBorderRadius } from "./borderRadius";
import { BoxShape } from "./boxShape";
declare const flutter: {
painting: {
boxBorder: (this: void, boxBorder: IBoxBorder) => IBoxBorder;
boxBorderLerp: (a: IBoxBorder | undefined, b: IBoxBorder | undefined, t: number) => IBoxBorder | undefined
}
};
export interface IBoxBorder


{
getTop: () => IBorderSide;
getBottom: () => IBorderSide;
getIsUniform: () => boolean;
add: (other: IShapeBorder, props : {  reversed : boolean,}) => IBoxBorder | undefined;
getInnerPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath;
getOuterPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath;
paint: (canvas: ICanvas, rect: IRect, props : {  borderRadius? : IBorderRadius | undefined, shape : BoxShape, textDirection? : TextDirection | undefined,}) => void;
scale: (t: number) => IShapeBorder;
lerpFrom: (a: IShapeBorder | undefined, t: number) => IShapeBorder | undefined;
lerpTo: (b: IShapeBorder | undefined, t: number) => IShapeBorder | undefined;
toString: () => string;
getDimensions: () => IEdgeInsetsGeometry;
getHashCode: () => number;
}export class BoxBorder

 implements IShapeBorder
{public constructor(){
flutter.painting.boxBorder(this);}
public static lerp(a: IBoxBorder | undefined, b: IBoxBorder | undefined, t: number) : IBoxBorder | undefined{
return flutter.painting.boxBorderLerp(a, b, t);
}    private readonly _dart_getTop: () => IBorderSide = undefined as any;
    private readonly _dart_getBottom: () => IBorderSide = undefined as any;
    private readonly _dart_getIsUniform: () => boolean = undefined as any;
    private readonly _dart_add: (other: IShapeBorder, props : {  reversed : boolean,}) => IBoxBorder | undefined = undefined as any;
    private readonly _dart_getInnerPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath = undefined as any;
    private readonly _dart_getOuterPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath = undefined as any;
    private readonly _dart_paint: (canvas: ICanvas, rect: IRect, props : {  borderRadius? : IBorderRadius | undefined, shape : BoxShape, textDirection? : TextDirection | undefined,}) => void = undefined as any;
    private readonly _dart_scale: (t: number) => IShapeBorder = undefined as any;
    private readonly _dart_lerpFrom: (a: IShapeBorder | undefined, t: number) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_lerpTo: (b: IShapeBorder | undefined, t: number) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getDimensions: () => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getTop() : IBorderSide {
    return this._dart_getTop();
}
public getBottom() : IBorderSide {
    return this._dart_getBottom();
}
public getIsUniform() : boolean {
    return this._dart_getIsUniform();
}
public add(other: IShapeBorder, props : {  reversed? : boolean,}) : IBoxBorder | undefined {
    return this._dart_add(other, {
...addDefaultProps,
...props
});
}
public getInnerPath(rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) : IPath {
    return this._dart_getInnerPath(rect, props);
}
public getOuterPath(rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) : IPath {
    return this._dart_getOuterPath(rect, props);
}
public paint(canvas: ICanvas, rect: IRect, props : {  borderRadius? : IBorderRadius | undefined, shape? : BoxShape, textDirection? : TextDirection | undefined,}) : void {
    return this._dart_paint(canvas, rect, {
...paintDefaultProps,
...props
});
}
public scale(t: number) : IShapeBorder {
    return this._dart_scale(t);
}
public lerpFrom(a: IShapeBorder | undefined, t: number) : IShapeBorder | undefined {
    return this._dart_lerpFrom(a, t);
}
public lerpTo(b: IShapeBorder | undefined, t: number) : IShapeBorder | undefined {
    return this._dart_lerpTo(b, t);
}
public toString() : string {
    return this._dart_toString();
}
public getDimensions() : IEdgeInsetsGeometry {
    return this._dart_getDimensions();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const addDefaultProps = {
    reversed: false,
};
const paintDefaultProps = {
    shape: BoxShape.rectangle,
};
