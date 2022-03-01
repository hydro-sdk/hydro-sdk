
import { IPointerEvent } from "./pointerEvent";
import { IHitTestEntry } from "./hitTestEntry";
export interface IHitTestTarget


{
handleEvent: (event: IPointerEvent, entry: IHitTestEntry) => void;
}