
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { IVelocityTracker } from "./velocityTracker";
import { IDuration } from "../../dart/core/duration";
import { IOffset } from "../../dart/ui/offset";
import { IVelocityEstimate } from "./velocityEstimate";
import { IVelocity } from "./velocity";
declare const flutter: {
gestures: {
iOSScrollViewFlingVelocityTracker: (this: void, iOSScrollViewFlingVelocityTracker: IIOSScrollViewFlingVelocityTracker, kind: PointerDeviceKind) => IIOSScrollViewFlingVelocityTracker
}
};
export interface IIOSScrollViewFlingVelocityTracker


{
kind: PointerDeviceKind;
addPosition: (time: IDuration, position: IOffset) => void;
getVelocityEstimate: () => IVelocityEstimate;
getVelocity: () => IVelocity;
toString: () => string;
getHashCode: () => number;
}export class IOSScrollViewFlingVelocityTracker

 implements IVelocityTracker
{    public static _sampleSize = 20;
    public readonly kind: PointerDeviceKind = undefined as any;
public constructor(kind: PointerDeviceKind){
flutter.gestures.iOSScrollViewFlingVelocityTracker(this, kind);}
    private readonly _dart_addPosition: (time: IDuration, position: IOffset) => void = undefined as any;
    private readonly _dart_getVelocityEstimate: () => IVelocityEstimate = undefined as any;
    private readonly _dart_getVelocity: () => IVelocity = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public addPosition(time: IDuration, position: IOffset) : void {
    return this._dart_addPosition(time, position);
}
public getVelocityEstimate() : IVelocityEstimate {
    return this._dart_getVelocityEstimate();
}
public getVelocity() : IVelocity {
    return this._dart_getVelocity();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
