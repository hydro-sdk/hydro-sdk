
import { IList } from "../../dart/core/list";
import { IRenderObject } from "./renderObject";
import { IRect } from "../../dart/ui/rect";
import { IMatrix4 } from "../../vector_math/matrix4";
declare const flutter: {
rendering: {
_semanticsGeometry: (this: void, _semanticsGeometry: I_SemanticsGeometry, props : {  ancestors : IList<IRenderObject>, parentPaintClipRect? : IRect | undefined, parentSemanticsClipRect? : IRect | undefined,}) => I_SemanticsGeometry
}
};
export interface I_SemanticsGeometry


{
getTransform: () => IMatrix4;
getSemanticsClipRect: () => IRect | undefined;
getPaintClipRect: () => IRect | undefined;
getRect: () => IRect;
getDropFromTree: () => boolean;
getMarkAsHidden: () => boolean;
}export class _SemanticsGeometry


{public constructor( props : {  ancestors : IList<IRenderObject>, parentPaintClipRect? : IRect | undefined, parentSemanticsClipRect? : IRect | undefined,}){
flutter.rendering._semanticsGeometry(this, props);}
    private readonly _dart_getTransform: () => IMatrix4 = undefined as any;
    private readonly _dart_getSemanticsClipRect: () => IRect | undefined = undefined as any;
    private readonly _dart_getPaintClipRect: () => IRect | undefined = undefined as any;
    private readonly _dart_getRect: () => IRect = undefined as any;
    private readonly _dart_getDropFromTree: () => boolean = undefined as any;
    private readonly _dart_getMarkAsHidden: () => boolean = undefined as any;
public getTransform() : IMatrix4 {
    return this._dart_getTransform();
}
public getSemanticsClipRect() : IRect | undefined {
    return this._dart_getSemanticsClipRect();
}
public getPaintClipRect() : IRect | undefined {
    return this._dart_getPaintClipRect();
}
public getRect() : IRect {
    return this._dart_getRect();
}
public getDropFromTree() : boolean {
    return this._dart_getDropFromTree();
}
public getMarkAsHidden() : boolean {
    return this._dart_getMarkAsHidden();
}
}
