
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IHitTestResult } from "../gestures/hitTestResult";
import { IOffset } from "../../dart/ui/offset";
import { IMouseCursor } from "../services/mouseCursor";
declare const flutter: {
rendering: {
mouseTracker: (this: void, mouseTracker: IMouseTracker) => IMouseTracker
}
};
export interface IMouseTracker


{
getMouseIsConnected: () => boolean;
updateWithEvent: (event: IPointerEvent, getResult : () => IHitTestResult) => void;
updateAllDevices: (hitTest : (offset: IOffset) => IHitTestResult) => void;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
dispose: () => void;
getHasListeners: () => boolean;
toString: () => string;
getHashCode: () => number;
}export class MouseTracker

 implements IChangeNotifier, IListenable
{public constructor(){
flutter.rendering.mouseTracker(this);}
    private readonly _dart_getMouseIsConnected: () => boolean = undefined as any;
    private readonly _dart_updateWithEvent: (event: IPointerEvent, getResult : () => IHitTestResult) => void = undefined as any;
    private readonly _dart_updateAllDevices: (hitTest : (offset: IOffset) => IHitTestResult) => void = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getMouseIsConnected() : boolean {
    return this._dart_getMouseIsConnected();
}
public updateWithEvent(event: IPointerEvent, getResult : () => IHitTestResult) : void {
    return this._dart_updateWithEvent(event, getResult);
}
public updateAllDevices(hitTest : (offset: IOffset) => IHitTestResult) : void {
    return this._dart_updateAllDevices(hitTest);
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public dispose() : void {
    return this._dart_dispose();
}
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public getHasListeners() : boolean {
    return this._dart_getHasListeners();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
