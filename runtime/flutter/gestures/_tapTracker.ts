
import { IDuration } from "../../dart/core/duration";
import { IGestureArenaEntry } from "./gestureArenaEntry";
import { IPointerDownEvent } from "./pointerDownEvent";
import { IDeviceGestureSettings } from "./deviceGestureSettings";
import { IPointerEvent } from "./pointerEvent";
import { IMatrix4 } from "../../vector_math/matrix4";
declare const flutter: {
gestures: {
_tapTracker: (this: void, _tapTracker: I_TapTracker, props : {  doubleTapMinTime : IDuration, entry : IGestureArenaEntry, event : IPointerDownEvent, gestureSettings? : IDeviceGestureSettings | undefined,}) => I_TapTracker
}
};
export interface I_TapTracker


{
gestureSettings: IDeviceGestureSettings | undefined;
pointer: number;
entry: IGestureArenaEntry;
initialButtons: number;
startTrackingPointer: (route : (event: IPointerEvent) => void, transform?: IMatrix4 | undefined) => void;
stopTrackingPointer: (route : (event: IPointerEvent) => void) => void;
isWithinGlobalTolerance: (event: IPointerEvent, tolerance: number) => boolean;
hasElapsedMinTime: () => boolean;
hasSameButton: (event: IPointerDownEvent) => boolean;
}export class _TapTracker


{    public readonly gestureSettings: IDeviceGestureSettings | undefined = undefined as any;
    public readonly pointer: number = undefined as any;
    public readonly entry: IGestureArenaEntry = undefined as any;
    public readonly initialButtons: number = undefined as any;
public constructor( props : {  doubleTapMinTime : IDuration, entry : IGestureArenaEntry, event : IPointerDownEvent, gestureSettings? : IDeviceGestureSettings | undefined,}){
flutter.gestures._tapTracker(this, props);}
    private readonly _dart_startTrackingPointer: (route : (event: IPointerEvent) => void, transform?: IMatrix4 | undefined) => void = undefined as any;
    private readonly _dart_stopTrackingPointer: (route : (event: IPointerEvent) => void) => void = undefined as any;
    private readonly _dart_isWithinGlobalTolerance: (event: IPointerEvent, tolerance: number) => boolean = undefined as any;
    private readonly _dart_hasElapsedMinTime: () => boolean = undefined as any;
    private readonly _dart_hasSameButton: (event: IPointerDownEvent) => boolean = undefined as any;
public startTrackingPointer(route : (event: IPointerEvent) => void, transform?: IMatrix4 | undefined) : void {
    return this._dart_startTrackingPointer(route, transform);
}
public stopTrackingPointer(route : (event: IPointerEvent) => void) : void {
    return this._dart_stopTrackingPointer(route);
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
}
