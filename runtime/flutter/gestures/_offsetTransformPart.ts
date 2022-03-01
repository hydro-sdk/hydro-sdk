
import { IOffset } from "../../dart/ui/offset";
import { I_TransformPart } from "./_transformPart";
import { IMatrix4 } from "../../vector_math/matrix4";
declare const flutter: {
gestures: {
_offsetTransformPart: (this: void, _offsetTransformPart: I_OffsetTransformPart, offset: IOffset) => I_OffsetTransformPart
}
};
export interface I_OffsetTransformPart


{
offset: IOffset;
multiply: (rhs: IMatrix4) => IMatrix4;
toString: () => string;
getHashCode: () => number;
}export class _OffsetTransformPart

 implements I_TransformPart
{    public readonly offset: IOffset = undefined as any;
public constructor(offset: IOffset){
flutter.gestures._offsetTransformPart(this, offset);}
    private readonly _dart_multiply: (rhs: IMatrix4) => IMatrix4 = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public multiply(rhs: IMatrix4) : IMatrix4 {
    return this._dart_multiply(rhs);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
