import { IFuture } from "../../dart/async/future";
import { IPointerEvent } from "../gestures/pointerEvent";
export interface IPlatformViewController {
    getViewId: () => number;
    dispatchPointerEvent: (event: IPointerEvent) => IFuture<void>;
    dispose: () => IFuture<void>;
    clearFocus: () => IFuture<void>;
}
