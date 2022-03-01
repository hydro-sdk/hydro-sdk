
import { IPointerEvent } from "./pointerEvent";
import { IHitTestResult } from "./hitTestResult";
export interface IHitTestDispatcher


{
dispatchEvent: (event: IPointerEvent, result: IHitTestResult) => void;
}