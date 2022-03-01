
import { IRenderObject } from "../rendering/renderObject";
import { IRect } from "../../dart/ui/rect";
import { IMatrix4 } from "../../vector_math/matrix4";
declare const flutter: {
widgets: {
_transformedRect: (this: void, _transformedRect: I_TransformedRect, object: IRenderObject, ancestor?: IRenderObject | undefined) => I_TransformedRect
}
};
export interface I_TransformedRect


{
rect: IRect;
transform: IMatrix4;
getHashCode: () => number;
}export class _TransformedRect


{    public readonly rect: IRect = undefined as any;
    public readonly transform: IMatrix4 = undefined as any;
public constructor(object: IRenderObject, ancestor?: IRenderObject | undefined){
flutter.widgets._transformedRect(this, object, ancestor);}
    private readonly _dart_getHashCode: () => number = undefined as any;
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
