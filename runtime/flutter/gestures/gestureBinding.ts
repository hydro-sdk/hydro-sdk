import { IDuration } from "../../dart/core/duration";
import { IOffset } from "../../dart/ui/offset";
import { IGestureArenaManager } from "./gestureArenaManager";
import { IHitTestable } from "./hitTestable";
import { IHitTestDispatcher } from "./hitTestDispatcher";
import { IHitTestEntry } from "./hitTestEntry";
import { IHitTestResult } from "./hitTestResult";
import { IHitTestTarget } from "./hitTestTarget";
import { IPointerEvent } from "./pointerEvent";
import { IPointerRouter } from "./pointerRouter";
import { IPointerSignalResolver } from "./pointerSignalResolver";
import { ISamplingClock } from "./samplingClock";
export interface IGestureBinding
    extends IHitTestable,
        IHitTestDispatcher,
        IHitTestTarget {
    pointerRouter: IPointerRouter;
    gestureArena: IGestureArenaManager;
    pointerSignalResolver: IPointerSignalResolver;
    resamplingEnabled: boolean;
    samplingOffset: IDuration;
    initInstances: () => void;
    unlocked: () => void;
    cancelPointer: (pointer: number) => void;
    handlePointerEvent: (event: IPointerEvent) => void;
    hitTest: (result: IHitTestResult, position: IOffset) => void;
    dispatchEvent: (
        event: IPointerEvent,
        hitTestResult?: IHitTestResult | undefined
    ) => void;
    handleEvent: (event: IPointerEvent, entry: IHitTestEntry) => void;
    resetGestureBinding: () => void;
    getDebugSamplingClock: () => ISamplingClock | undefined;
}
