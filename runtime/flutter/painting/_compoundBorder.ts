
import { IList } from "../../dart/core/list";
import { IShapeBorder } from "./shapeBorder";
import { TextDirection } from "../../dart/ui/textDirection";
import { IRect } from "../../dart/ui/rect";
import { IPath } from "../../dart/ui/path";
import { ICanvas } from "../../dart/ui/canvas";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
declare const flutter: {
painting: {
_compoundBorder: (this: void, _compoundBorder: I_CompoundBorder, borders: IList<IShapeBorder>) => I_CompoundBorder;
_compoundBorderLerp: (a: IShapeBorder | undefined, b: IShapeBorder | undefined, t: number) => I_CompoundBorder
}
};
export interface I_CompoundBorder


{
borders: IList<IShapeBorder>;
getDimensions: () => IEdgeInsetsGeometry;
add: (other: IShapeBorder, props : {  reversed : boolean,}) => IShapeBorder;
scale: (t: number) => IShapeBorder;
lerpFrom: (a: IShapeBorder | undefined, t: number) => IShapeBorder | undefined;
lerpTo: (b: IShapeBorder | undefined, t: number) => IShapeBorder | undefined;
getInnerPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath;
getOuterPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath;
paint: (canvas: ICanvas, rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => void;
getHashCode: () => number;
toString: () => string;
}export class _CompoundBorder

 implements IShapeBorder
{    public readonly borders: IList<IShapeBorder> = undefined as any;
public constructor(borders: IList<IShapeBorder>){
flutter.painting._compoundBorder(this, borders);}
public static lerp(a: IShapeBorder | undefined, b: IShapeBorder | undefined, t: number) : I_CompoundBorder{
return flutter.painting._compoundBorderLerp(a, b, t);
}    private readonly _dart_getDimensions: () => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_add: (other: IShapeBorder, props : {  reversed : boolean,}) => IShapeBorder = undefined as any;
    private readonly _dart_scale: (t: number) => IShapeBorder = undefined as any;
    private readonly _dart_lerpFrom: (a: IShapeBorder | undefined, t: number) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_lerpTo: (b: IShapeBorder | undefined, t: number) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_getInnerPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath = undefined as any;
    private readonly _dart_getOuterPath: (rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => IPath = undefined as any;
    private readonly _dart_paint: (canvas: ICanvas, rect: IRect, props? : {  textDirection? : TextDirection | undefined,}) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public getDimensions() : IEdgeInsetsGeometry {
    return this._dart_getDimensions();
}
public add(other: IShapeBorder, props : {  reversed? : boolean,}) : IShapeBorder {
    return this._dart_add(other, {
...addDefaultProps,
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
}
const addDefaultProps = {
    reversed: false,
};
