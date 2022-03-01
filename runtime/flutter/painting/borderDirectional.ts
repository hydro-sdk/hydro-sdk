
import { IBorderSide,BorderSide } from "./borderSide";
import { IBoxBorder } from "./boxBorder";
import { IShapeBorder } from "./shapeBorder";
import { TextDirection } from "../../dart/ui/textDirection";
import { IRect } from "../../dart/ui/rect";
import { IPath } from "../../dart/ui/path";
import { IBorderRadius } from "./borderRadius";
import { BoxShape } from "./boxShape";
import { ICanvas } from "../../dart/ui/canvas";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
declare const flutter: {
painting: {
borderDirectional: (this: void, borderDirectional: IBorderDirectional, props : {  bottom : IBorderSide, end : IBorderSide, start : IBorderSide, top : IBorderSide,}) => IBorderDirectional;
borderDirectionalMerge: (a: IBorderDirectional, b: IBorderDirectional) => IBorderDirectional;
borderDirectionalLerp: (a: IBorderDirectional | undefined, b: IBorderDirectional | undefined, t: number) => IBorderDirectional | undefined
}
};
export interface IBorderDirectional


{
top: IBorderSide;
start: IBorderSide;
end: IBorderSide;
bottom: IBorderSide;
getDimensions: () => IEdgeInsetsGeometry;
getIsUniform: () => boolean;
add: (other: IShapeBorder, props : {  reversed : boolean,}) => IBoxBorder | undefined;
scale: (t: number) => IBorderDirectional;
lerpFrom: (a: IShapeBorder | undefined, t: number) => IShapeBorder | undefined;
lerpTo: (b: IShapeBorder | undefined, t: number) => IShapeBorder | undefined;
paint: (canvas: ICanvas, rect: IRect, props : {  borderRadius? : IBorderRadius | undefined, shape : BoxShape, textDirection? : TextDirection | undefined,}) => void;
getHashCode: () => number;
toString: () => string;
getInnerPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath;
getOuterPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath;
getTop: () => IBorderSide;
getBottom: () => IBorderSide;
}export class BorderDirectional

 implements IBoxBorder
{    public readonly top: IBorderSide = undefined as any;
    public readonly start: IBorderSide = undefined as any;
    public readonly end: IBorderSide = undefined as any;
    public readonly bottom: IBorderSide = undefined as any;
public constructor( props : {  bottom? : IBorderSide, end? : IBorderSide, start? : IBorderSide, top? : IBorderSide,}){
flutter.painting.borderDirectional(this, {
...borderDirectionalDefaultProps,
...props
});}
public static merge(a: IBorderDirectional, b: IBorderDirectional) : IBorderDirectional{
return flutter.painting.borderDirectionalMerge(a, b);
}public static lerp(a: IBorderDirectional | undefined, b: IBorderDirectional | undefined, t: number) : IBorderDirectional | undefined{
return flutter.painting.borderDirectionalLerp(a, b, t);
}    private readonly _dart_getDimensions: () => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_getIsUniform: () => boolean = undefined as any;
    private readonly _dart_add: (other: IShapeBorder, props : {  reversed : boolean,}) => IBoxBorder | undefined = undefined as any;
    private readonly _dart_scale: (t: number) => IBorderDirectional = undefined as any;
    private readonly _dart_lerpFrom: (a: IShapeBorder | undefined, t: number) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_lerpTo: (b: IShapeBorder | undefined, t: number) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_paint: (canvas: ICanvas, rect: IRect, props : {  borderRadius? : IBorderRadius | undefined, shape : BoxShape, textDirection? : TextDirection | undefined,}) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getInnerPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath = undefined as any;
    private readonly _dart_getOuterPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath = undefined as any;
    private readonly _dart_getTop: () => IBorderSide = undefined as any;
    private readonly _dart_getBottom: () => IBorderSide = undefined as any;
public getDimensions() : IEdgeInsetsGeometry {
    return this._dart_getDimensions();
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
public scale(t: number) : IBorderDirectional {
    return this._dart_scale(t);
}
public lerpFrom(a: IShapeBorder | undefined, t: number) : IShapeBorder | undefined {
    return this._dart_lerpFrom(a, t);
}
public lerpTo(b: IShapeBorder | undefined, t: number) : IShapeBorder | undefined {
    return this._dart_lerpTo(b, t);
}
public paint(canvas: ICanvas, rect: IRect, props : {  borderRadius? : IBorderRadius | undefined, shape? : BoxShape, textDirection? : TextDirection | undefined,}) : void {
    return this._dart_paint(canvas, rect, {
...paintDefaultProps,
...props
});
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
public getInnerPath(rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) : IPath {
    return this._dart_getInnerPath(rect, props);
}
public getOuterPath(rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) : IPath {
    return this._dart_getOuterPath(rect, props);
}
public getTop() : IBorderSide {
    return this._dart_getTop();
}
public getBottom() : IBorderSide {
    return this._dart_getBottom();
}
}
const borderDirectionalDefaultProps = {
    bottom: BorderSide.none,
    end: BorderSide.none,
    start: BorderSide.none,
    top: BorderSide.none,
};
const addDefaultProps = {
    reversed: false,
};
const paintDefaultProps = {
    shape: BoxShape.rectangle,
};
