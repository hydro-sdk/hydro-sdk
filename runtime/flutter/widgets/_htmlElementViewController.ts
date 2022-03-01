
import { IPlatformViewController } from "../services/platformViewController";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IFuture } from "../../dart/async/future";
declare const flutter: {
widgets: {
_htmlElementViewController: (this: void, _htmlElementViewController: I_HtmlElementViewController, viewId: number, viewType: string) => I_HtmlElementViewController
}
};
export interface I_HtmlElementViewController


{
viewId: number;
viewType: string;
clearFocus: () => IFuture<void>;
dispatchPointerEvent: (event: IPointerEvent) => IFuture<void>;
dispose: () => IFuture<void>;
getViewId: () => number;
toString: () => string;
getHashCode: () => number;
}export class _HtmlElementViewController

 implements IPlatformViewController
{    public readonly viewId: number = undefined as any;
    public readonly viewType: string = undefined as any;
public constructor(viewId: number, viewType: string){
flutter.widgets._htmlElementViewController(this, viewId, viewType);}
    private readonly _dart_clearFocus: () => IFuture<void> = undefined as any;
    private readonly _dart_dispatchPointerEvent: (event: IPointerEvent) => IFuture<void> = undefined as any;
    private readonly _dart_dispose: () => IFuture<void> = undefined as any;
    private readonly _dart_getViewId: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public clearFocus() : IFuture<void> {
    return this._dart_clearFocus();
}
public dispatchPointerEvent(event: IPointerEvent) : IFuture<void> {
    return this._dart_dispatchPointerEvent(event);
}
public dispose() : IFuture<void> {
    return this._dart_dispose();
}
public getViewId() : number {
    return this._dart_getViewId();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
