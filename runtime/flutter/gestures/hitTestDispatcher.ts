import { IHitTestResult } from "./hitTestResult";
import { IPointerEvent } from "./pointerEvent";
export interface IHitTestDispatcher {
    dispatchEvent: (event: IPointerEvent, result: IHitTestResult) => void;
}
