
import { IRenderBox } from "./renderBox";
import { IOffset } from "../../dart/ui/offset";
import { IHitTestEntry } from "../gestures/hitTestEntry";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IHitTestTarget } from "../gestures/hitTestTarget";
declare const flutter: {
rendering: {
boxHitTestEntry: (this: void, boxHitTestEntry: IBoxHitTestEntry, target: IRenderBox, localPosition: IOffset) => IBoxHitTestEntry
}
};
export interface IBoxHitTestEntry


{
localPosition: IOffset;
target: IHitTestTarget;
getTarget: () => IRenderBox;
toString: () => string;
getTransform: () => IMatrix4 | undefined;
getHashCode: () => number;
}export class BoxHitTestEntry

 implements IHitTestEntry
{    public readonly localPosition: IOffset = undefined as any;
    public readonly target: IHitTestTarget = undefined as any;
public constructor(target: IRenderBox, localPosition: IOffset){
flutter.rendering.boxHitTestEntry(this, target, localPosition);}
    private readonly _dart_getTarget: () => IRenderBox = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getTransform: () => IMatrix4 | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getTarget() : IRenderBox {
    return this._dart_getTarget();
}
public toString() : string {
    return this._dart_toString();
}
public getTransform() : IMatrix4 | undefined {
    return this._dart_getTransform();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
