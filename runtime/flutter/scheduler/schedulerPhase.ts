export enum SchedulerPhase {
    idle,
    transientCallbacks,
    midFrameMicrotasks,
    persistentCallbacks,
    postFrameCallbacks,
}
