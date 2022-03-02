import { IHitTestEntry } from "./hitTestEntry";
import { IPointerEvent } from "./pointerEvent";
export interface IHitTestTarget {
    handleEvent: (event: IPointerEvent, entry: IHitTestEntry) => void;
}
