
import { IBorderSide,BorderSide } from "./borderSide";
import { IOutlinedBorder } from "./outlinedBorder";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
import { IShapeBorder } from "./shapeBorder";
import { TextDirection } from "../../dart/ui/textDirection";
import { IRect } from "../../dart/ui/rect";
import { IPath } from "../../dart/ui/path";
import { ICanvas } from "../../dart/ui/canvas";
declare const flutter: {
painting: {
_stadiumToCircleBorder: (this: void, _stadiumToCircleBorder: I_StadiumToCircleBorder, props : {  circleness : number, side : IBorderSide,}) => I_StadiumToCircleBorder
}
};
export interface I_StadiumToCircleBorder


{
circleness: number;
side: IBorderSide;
getDimensions: () => IEdgeInsetsGeometry;
scale: (t: number) => IShapeBorder;
lerpFrom: (a: IShapeBorder | undefined, t: number) => IShapeBorder | undefined;
lerpTo: (b: IShapeBorder | undefined, t: number) => IShapeBorder | undefined;
getInnerPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath;
getOuterPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath;
copyWith: ( props? : {  circleness? : number | undefined, side? : IBorderSide | undefined,}) => I_StadiumToCircleBorder;
paint: (canvas: ICanvas, rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => void;
getHashCode: () => number;
toString: () => string;
add: (other: IShapeBorder, props : {  reversed : boolean,}) => IShapeBorder | undefined;
}export class _StadiumToCircleBorder

 implements IOutlinedBorder
{    public readonly circleness: number = undefined as any;
    public readonly side: IBorderSide = undefined as any;
public constructor( props : {  circleness? : number, side? : IBorderSide,}){
flutter.painting._stadiumToCircleBorder(this, {
..._stadiumToCircleBorderDefaultProps,
...props
});}
    private readonly _dart_getDimensions: () => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_scale: (t: number) => IShapeBorder = undefined as any;
    private readonly _dart_lerpFrom: (a: IShapeBorder | undefined, t: number) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_lerpTo: (b: IShapeBorder | undefined, t: number) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_getInnerPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath = undefined as any;
    private readonly _dart_getOuterPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath = undefined as any;
    private readonly _dart_copyWith: ( props? : {  circleness? : number | undefined, side? : IBorderSide | undefined,}) => I_StadiumToCircleBorder = undefined as any;
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
public copyWith( props? : {  circleness? : number | undefined, side? : IBorderSide | undefined,}) : I_StadiumToCircleBorder {
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
const _stadiumToCircleBorderDefaultProps = {
    circleness: 0.0,
    side: BorderSide.none,
};
const addDefaultProps = {
    reversed: false,
};
