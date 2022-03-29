import { IOffset } from "../../dart/ui/offset";
import { IHitTestEntry } from "../gestures/hitTestEntry";
import { IPointerEnterEvent } from "../gestures/pointerEnterEvent";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IPointerExitEvent } from "../gestures/pointerExitEvent";
import { IMouseCursor } from "../services/mouseCursor";
import { IMouseTrackerAnnotation } from "../services/mouseTrackerAnnotation";
import { IBoxHitTestResult } from "./boxHitTestResult";
import { PlatformViewHitTestBehavior } from "./platformViewHitTestBehavior";
export interface I_PlatformViewGestureMixin
    extends Omit<IMouseTrackerAnnotation> {
    setHitTestBehavior: (value: PlatformViewHitTestBehavior) => void;
    hitTest: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean;
    hitTestSelf: (position: IOffset) => boolean;
    getOnEnter: () => (event: IPointerEnterEvent) => void | undefined;
    getOnExit: () => (event: IPointerExitEvent) => void | undefined;
    getCursor: () => IMouseCursor;
    getValidForMouseTracker: () => boolean;
    handleEvent: (event: IPointerEvent, entry: unknown) => void;
    detach: () => void;
}
