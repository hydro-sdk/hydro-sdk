import { IFuture } from "../../dart/async/future";
import { IMouseCursor } from "./mouseCursor";
export interface IMouseCursorSession {
    cursor: IMouseCursor;
    device: number;
    activate: () => IFuture<void>;
    dispose: () => void;
}
