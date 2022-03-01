
import { IOffset } from "../../dart/ui/offset";
import { IDuration } from "../../dart/core/duration";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { IDeviceGestureSettings } from "./deviceGestureSettings";
import { IMultiDragPointerState } from "./multiDragPointerState";
import { GestureDisposition } from "./gestureDisposition";
import { IDrag } from "./drag";
declare const flutter: {
gestures: {
_delayedPointerState: (this: void, _delayedPointerState: I_DelayedPointerState, initialPosition: IOffset, delay: IDuration, kind: PointerDeviceKind, deviceGestureSettings?: IDeviceGestureSettings | undefined) => I_DelayedPointerState
}
};
export interface I_DelayedPointerState


{
gestureSettings: IDeviceGestureSettings | undefined;
initialPosition: IOffset;
kind: PointerDeviceKind;
accepted: (starter : (position: IOffset) => IDrag | undefined) => void;
checkForResolutionAfterMove: () => void;
dispose: () => void;
resolve: (disposition: GestureDisposition) => void;
rejected: () => void;
getPendingDelta: () => IOffset | undefined;
toString: () => string;
getHashCode: () => number;
}export class _DelayedPointerState

 implements IMultiDragPointerState
{    public readonly gestureSettings: IDeviceGestureSettings | undefined = undefined as any;
    public readonly initialPosition: IOffset = undefined as any;
    public readonly kind: PointerDeviceKind = undefined as any;
public constructor(initialPosition: IOffset, delay: IDuration, kind: PointerDeviceKind, deviceGestureSettings?: IDeviceGestureSettings | undefined){
flutter.gestures._delayedPointerState(this, initialPosition, delay, kind, deviceGestureSettings);}
    private readonly _dart_accepted: (starter : (position: IOffset) => IDrag | undefined) => void = undefined as any;
    private readonly _dart_checkForResolutionAfterMove: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_resolve: (disposition: GestureDisposition) => void = undefined as any;
    private readonly _dart_rejected: () => void = undefined as any;
    private readonly _dart_getPendingDelta: () => IOffset | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public accepted(starter : (position: IOffset) => IDrag | undefined) : void {
    return this._dart_accepted(starter);
}
public checkForResolutionAfterMove() : void {
    return this._dart_checkForResolutionAfterMove();
}
public dispose() : void {
    return this._dart_dispose();
}
public resolve(disposition: GestureDisposition) : void {
    return this._dart_resolve(disposition);
}
public rejected() : void {
    return this._dart_rejected();
}
public getPendingDelta() : IOffset | undefined {
    return this._dart_getPendingDelta();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
