import { IFuture } from "../../dart/async/future";
import { IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { IFlow } from "../../dart/developer/flow";
import { AppLifecycleState } from "../../dart/ui/appLifecycleState";
import { IFrameTiming } from "../../dart/ui/frameTiming";
import { IPriority } from "./priority";
import { SchedulerPhase } from "./schedulerPhase";
export interface ISchedulerBinding {
    initInstances: () => void;
    addTimingsCallback: (
        callback: (timings: IList<IFrameTiming>) => void
    ) => void;
    removeTimingsCallback: (
        callback: (timings: IList<IFrameTiming>) => void
    ) => void;
    initServiceExtensions: () => void;
    getLifecycleState: () => AppLifecycleState | undefined;
    handleAppLifecycleStateChanged: (state: AppLifecycleState) => void;
    scheduleTask: <T>(
        task: () => T,
        priority: IPriority,
        props?: { debugLabel?: string | undefined; flow?: IFlow | undefined }
    ) => IFuture<T>;
    unlocked: () => void;
    getTransientCallbackCount: () => number;
    scheduleFrameCallback: (
        callback: (timeStamp: IDuration) => void,
        props: { rescheduling: boolean }
    ) => number;
    cancelFrameCallbackWithId: (id: number) => void;
    debugAssertNoTransientCallbacks: (reason: string) => boolean;
    addPersistentFrameCallback: (
        callback: (timeStamp: IDuration) => void
    ) => void;
    addPostFrameCallback: (callback: (timeStamp: IDuration) => void) => void;
    getEndOfFrame: () => IFuture<void>;
    getHasScheduledFrame: () => boolean;
    getSchedulerPhase: () => SchedulerPhase;
    getFramesEnabled: () => boolean;
    ensureFrameCallbacksRegistered: () => void;
    ensureVisualUpdate: () => void;
    scheduleFrame: () => void;
    scheduleForcedFrame: () => void;
    scheduleWarmUpFrame: () => void;
    resetEpoch: () => void;
    getCurrentFrameTimeStamp: () => IDuration;
    getCurrentSystemFrameTimeStamp: () => IDuration;
    handleBeginFrame: (rawTimeStamp?: IDuration | undefined) => void;
    handleDrawFrame: () => void;
}
