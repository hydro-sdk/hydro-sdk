
import { IPointerEvent } from "../gestures/pointerEvent";
import { ILinkedHashMap } from "../../dart/collection/linkedHashMap";
import { IMouseTrackerAnnotation } from "../services/mouseTrackerAnnotation";
import { IMatrix4 } from "../../vector_math/matrix4";
declare const flutter: {
rendering: {
_mouseState: (this: void, _mouseState: I_MouseState, props : {  initialEvent : IPointerEvent,}) => I_MouseState
}
};
export interface I_MouseState


{
getAnnotations: () => ILinkedHashMap<IMouseTrackerAnnotation, IMatrix4>;
replaceAnnotations: (value: ILinkedHashMap<IMouseTrackerAnnotation, IMatrix4>) => ILinkedHashMap<IMouseTrackerAnnotation, IMatrix4>;
getLatestEvent: () => IPointerEvent;
replaceLatestEvent: (value: IPointerEvent) => IPointerEvent;
getDevice: () => number;
toString: () => string;
}export class _MouseState


{public constructor( props : {  initialEvent : IPointerEvent,}){
flutter.rendering._mouseState(this, props);}
    private readonly _dart_getAnnotations: () => ILinkedHashMap<IMouseTrackerAnnotation, IMatrix4> = undefined as any;
    private readonly _dart_replaceAnnotations: (value: ILinkedHashMap<IMouseTrackerAnnotation, IMatrix4>) => ILinkedHashMap<IMouseTrackerAnnotation, IMatrix4> = undefined as any;
    private readonly _dart_getLatestEvent: () => IPointerEvent = undefined as any;
    private readonly _dart_replaceLatestEvent: (value: IPointerEvent) => IPointerEvent = undefined as any;
    private readonly _dart_getDevice: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public getAnnotations() : ILinkedHashMap<IMouseTrackerAnnotation, IMatrix4> {
    return this._dart_getAnnotations();
}
public replaceAnnotations(value: ILinkedHashMap<IMouseTrackerAnnotation, IMatrix4>) : ILinkedHashMap<IMouseTrackerAnnotation, IMatrix4> {
    return this._dart_replaceAnnotations(value);
}
public getLatestEvent() : IPointerEvent {
    return this._dart_getLatestEvent();
}
public replaceLatestEvent(value: IPointerEvent) : IPointerEvent {
    return this._dart_replaceLatestEvent(value);
}
public getDevice() : number {
    return this._dart_getDevice();
}
public toString() : string {
    return this._dart_toString();
}
}
