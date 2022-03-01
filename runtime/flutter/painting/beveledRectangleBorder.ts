
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
beveledRectangleBorder: (this: void, beveledRectangleBorder: IBeveledRectangleBorder, props : {  borderRadius : IBorderRadiusGeometry, side : IBorderSide,}) => IBeveledRectangleBorder
}
};
export interface IBeveledRectangleBorder


{
borderRadius: IBorderRadiusGeometry;
side: IBorderSide;
getDimensions: () => IEdgeInsetsGeometry;
scale: (t: number) => IShapeBorder;
lerpFrom: (a: IShapeBorder | undefined, t: number) => IShapeBorder | undefined;
lerpTo: (b: IShapeBorder | undefined, t: number) => IShapeBorder | undefined;
copyWith: ( props? : {  borderRadius? : IBorderRadiusGeometry | undefined, side? : IBorderSide | undefined,}) => IBeveledRectangleBorder;
getInnerPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath;
getOuterPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath;
paint: (canvas: ICanvas, rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => void;
getHashCode: () => number;
toString: () => string;
add: (other: IShapeBorder, props : {  reversed : boolean,}) => IShapeBorder | undefined;
}export class BeveledRectangleBorder

 implements IOutlinedBorder
{    public readonly borderRadius: IBorderRadiusGeometry = undefined as any;
    public readonly side: IBorderSide = undefined as any;
public constructor( props : {  borderRadius? : IBorderRadiusGeometry, side? : IBorderSide,}){
flutter.painting.beveledRectangleBorder(this, {
...beveledRectangleBorderDefaultProps,
...props
});}
    private readonly _dart_getDimensions: () => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_scale: (t: number) => IShapeBorder = undefined as any;
    private readonly _dart_lerpFrom: (a: IShapeBorder | undefined, t: number) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_lerpTo: (b: IShapeBorder | undefined, t: number) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_copyWith: ( props? : {  borderRadius? : IBorderRadiusGeometry | undefined, side? : IBorderSide | undefined,}) => IBeveledRectangleBorder = undefined as any;
    private readonly _dart_getInnerPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath = undefined as any;
    private readonly _dart_getOuterPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath = undefined as any;
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
public copyWith( props? : {  borderRadius? : IBorderRadiusGeometry | undefined, side? : IBorderSide | undefined,}) : IBeveledRectangleBorder {
    return this._dart_copyWith(props);
}
public getInnerPath(rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) : IPath {
    return this._dart_getInnerPath(rect, props);
}
public getOuterPath(rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) : IPath {
    return this._dart_getOuterPath(rect, props);
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
const beveledRectangleBorderDefaultProps = {
    borderRadius: BorderRadius.zero,
    side: BorderSide.none,
};
const addDefaultProps = {
    reversed: false,
};
