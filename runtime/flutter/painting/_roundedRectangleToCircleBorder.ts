
import { IBorderRadiusGeometry } from "./borderRadiusGeometry";
import { IBorderSide,BorderSide } from "./borderSide";
import { IOutlinedBorder } from "./outlinedBorder";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
import { IShapeBorder } from "./shapeBorder";
import { TextDirection } from "../../dart/ui/textDirection";
import { IRect } from "../../dart/ui/rect";
import { IPath } from "../../dart/ui/path";
import { ICanvas } from "../../dart/ui/canvas";
import { BorderRadius } from "./borderRadius";
declare const flutter: {
painting: {
_roundedRectangleToCircleBorder: (this: void, _roundedRectangleToCircleBorder: I_RoundedRectangleToCircleBorder, props : {  borderRadius : IBorderRadiusGeometry, side : IBorderSide, circleness : number,}) => I_RoundedRectangleToCircleBorder
}
};
export interface I_RoundedRectangleToCircleBorder


{
borderRadius: IBorderRadiusGeometry;
circleness: number;
side: IBorderSide;
getDimensions: () => IEdgeInsetsGeometry;
scale: (t: number) => IShapeBorder;
lerpFrom: (a: IShapeBorder | undefined, t: number) => IShapeBorder | undefined;
lerpTo: (b: IShapeBorder | undefined, t: number) => IShapeBorder | undefined;
getInnerPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath;
getOuterPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath;
copyWith: ( props? : {  borderRadius? : IBorderRadiusGeometry | undefined, circleness? : number | undefined, side? : IBorderSide | undefined,}) => I_RoundedRectangleToCircleBorder;
paint: (canvas: ICanvas, rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => void;
getHashCode: () => number;
toString: () => string;
add: (other: IShapeBorder, props : {  reversed : boolean,}) => IShapeBorder | undefined;
}export class _RoundedRectangleToCircleBorder

 implements IOutlinedBorder
{    public readonly borderRadius: IBorderRadiusGeometry = undefined as any;
    public readonly circleness: number = undefined as any;
    public readonly side: IBorderSide = undefined as any;
public constructor( props : {  borderRadius? : IBorderRadiusGeometry, side? : IBorderSide, circleness : number,}){
flutter.painting._roundedRectangleToCircleBorder(this, {
..._roundedRectangleToCircleBorderDefaultProps,
...props
});}
    private readonly _dart_getDimensions: () => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_scale: (t: number) => IShapeBorder = undefined as any;
    private readonly _dart_lerpFrom: (a: IShapeBorder | undefined, t: number) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_lerpTo: (b: IShapeBorder | undefined, t: number) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_getInnerPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath = undefined as any;
    private readonly _dart_getOuterPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath = undefined as any;
    private readonly _dart_copyWith: ( props? : {  borderRadius? : IBorderRadiusGeometry | undefined, circleness? : number | undefined, side? : IBorderSide | undefined,}) => I_RoundedRectangleToCircleBorder = undefined as any;
    private readonly _dart_paint: (canvas: ICanvas, rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_add: (other: IShapeBorder, props : {  reversed : boolean,}) => IShapeBorder | undefined = undefined as any;
public getDimensions() : IEdgeInsetsGeometry {
    return this._dart_getDimensions();
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
public getInnerPath(rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) : IPath {
    return this._dart_getInnerPath(rect, props);
}
public getOuterPath(rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) : IPath {
    return this._dart_getOuterPath(rect, props);
}
public copyWith( props? : {  borderRadius? : IBorderRadiusGeometry | undefined, circleness? : number | undefined, side? : IBorderSide | undefined,}) : I_RoundedRectangleToCircleBorder {
    return this._dart_copyWith(props);
}
public paint(canvas: ICanvas, rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) : void {
    return this._dart_paint(canvas, rect, props);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
public add(other: IShapeBorder, props : {  reversed? : boolean,}) : IShapeBorder | undefined {
    return this._dart_add(other, {
...addDefaultProps,
...props
});
}
}
const _roundedRectangleToCircleBorderDefaultProps = {
    borderRadius: BorderRadius.zero,
    side: BorderSide.none,
};
const addDefaultProps = {
    reversed: false,
};
