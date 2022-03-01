
import { IPointerEvent } from "./pointerEvent";
import { IMultiTapGestureRecognizer } from "./multiTapGestureRecognizer";
import { IDeviceGestureSettings } from "./deviceGestureSettings";
import { IDuration } from "../../dart/core/duration";
import { I_TapTracker } from "./_tapTracker";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IPointerDownEvent } from "./pointerDownEvent";
import { IGestureArenaEntry } from "./gestureArenaEntry";
declare const flutter: {
gestures: {
_tapGesture: (this: void, _tapGesture: I_TapGesture, props : {  event : IPointerEvent, gestureRecognizer : IMultiTapGestureRecognizer, gestureSettings? : IDeviceGestureSettings | undefined, longTapDelay : IDuration,}) => I_TapGesture
}
};
export interface I_TapGesture


{
gestureRecognizer: IMultiTapGestureRecognizer;
gestureSettings: IDeviceGestureSettings | undefined;
pointer: number;
entry: IGestureArenaEntry;
initialButtons: number;
handleEvent: (event: IPointerEvent) => void;
stopTrackingPointer: (route : (event: IPointerEvent) => void) => void;
accept: () => void;
reject: () => void;
cancel: () => void;
startTrackingPointer: (route : (event: IPointerEvent) => void, transform?: IMatrix4 | undefined) => void;
isWithinGlobalTolerance: (event: IPointerEvent, tolerance: number) => boolean;
hasElapsedMinTime: () => boolean;
hasSameButton: (event: IPointerDownEvent) => boolean;
toString: () => string;
getHashCode: () => number;
}export class _TapGesture

 implements I_TapTracker
{    public readonly gestureRecognizer: IMultiTapGestureRecognizer = undefined as any;
    public readonly gestureSettings: IDeviceGestureSettings | undefined = undefined as any;
    public readonly pointer: number = undefined as any;
    public readonly entry: IGestureArenaEntry = undefined as any;
    public readonly initialButtons: number = undefined as any;
public constructor( props : {  event : IPointerEvent, gestureRecognizer : IMultiTapGestureRecognizer, gestureSettings? : IDeviceGestureSettings | undefined, longTapDelay : IDuration,}){
flutter.gestures._tapGesture(this, props);}
    private readonly _dart_handleEvent: (event: IPointerEvent) => void = undefined as any;
    private readonly _dart_stopTrackingPointer: (route : (event: IPointerEvent) => void) => void = undefined as any;
    private readonly _dart_accept: () => void = undefined as any;
    private readonly _dart_reject: () => void = undefined as any;
    private readonly _dart_cancel: () => void = undefined as any;
    private readonly _dart_startTrackingPointer: (route : (event: IPointerEvent) => void, transform?: IMatrix4 | undefined) => void = undefined as any;
    private readonly _dart_isWithinGlobalTolerance: (event: IPointerEvent, tolerance: number) => boolean = undefined as any;
    private readonly _dart_hasElapsedMinTime: () => boolean = undefined as any;
    private readonly _dart_hasSameButton: (event: IPointerDownEvent) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public handleEvent(event: IPointerEvent) : void {
    return this._dart_handleEvent(event);
}
public stopTrackingPointer(route : (event: IPointerEvent) => void) : void {
    return this._dart_stopTrackingPointer(route);
}
public accept() : void {
    return this._dart_accept();
}
public reject() : void {
    return this._dart_reject();
}
public cancel() : void {
    return this._dart_cancel();
}
public startTrackingPointer(route : (event: IPointerEvent) => void, transform?: IMatrix4 | undefined) : void {
    return this._dart_startTrackingPointer(route, transform);
}
public isWithinGlobalTolerance(event: IPointerEvent, tolerance: number) : boolean {
    return this._dart_isWithinGlobalTolerance(event, tolerance);
}
public hasElapsedMinTime() : boolean {
    return this._dart_hasElapsedMinTime();
}
public hasSameButton(event: IPointerDownEvent) : boolean {
    return this._dart_hasSameButton(event);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
