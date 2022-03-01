
import { IRenderSliver } from "./renderSliver";
import { IHitTestEntry } from "../gestures/hitTestEntry";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IHitTestTarget } from "../gestures/hitTestTarget";
declare const flutter: {
rendering: {
sliverHitTestEntry: (this: void, sliverHitTestEntry: ISliverHitTestEntry, target: IRenderSliver, props : {  crossAxisPosition : number, mainAxisPosition : number,}) => ISliverHitTestEntry
}
};
export interface ISliverHitTestEntry


{
mainAxisPosition: number;
crossAxisPosition: number;
target: IHitTestTarget;
getTarget: () => IRenderSliver;
toString: () => string;
getTransform: () => IMatrix4 | undefined;
getHashCode: () => number;
}export class SliverHitTestEntry

 implements IHitTestEntry
{    public readonly mainAxisPosition: number = undefined as any;
    public readonly crossAxisPosition: number = undefined as any;
    public readonly target: IHitTestTarget = undefined as any;
public constructor(target: IRenderSliver, props : {  crossAxisPosition : number, mainAxisPosition : number,}){
flutter.rendering.sliverHitTestEntry(this, target, props);}
    private readonly _dart_getTarget: () => IRenderSliver = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getTransform: () => IMatrix4 | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getTarget() : IRenderSliver {
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
