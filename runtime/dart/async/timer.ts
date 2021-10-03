import { IDuration } from "../core/duration";
declare const dart: {
    async: {
        timer: (
            this: void,
            timer: ITimer,
            duration: IDuration,
            callback: () => void
        ) => ITimer;
        timerPeriodic: (
            duration: IDuration,
            callback: (timer: ITimer) => void
        ) => ITimer;
        timerRun: (callback: () => void) => void;
    };
};
export interface ITimer {
    cancel: () => void;
    getTick: () => number;
    getIsActive: () => boolean;
}
export class Timer {
    public constructor(duration: IDuration, callback: () => void) {
        dart.async.timer(this, duration, callback);
    }
    public static periodic(
        duration: IDuration,
        callback: (timer: ITimer) => void
    ): ITimer {
        return dart.async.timerPeriodic(duration, callback);
    }
    public static run(callback: () => void): void {
        return dart.async.timerRun(callback);
    }
    private readonly _dart_cancel: () => void = undefined as any;
    private readonly _dart_getTick: () => number = undefined as any;
    private readonly _dart_getIsActive: () => boolean = undefined as any;
    public cancel(): void {
        return this._dart_cancel();
    }
    public getTick(): number {
        return this._dart_getTick();
    }
    public getIsActive(): boolean {
        return this._dart_getIsActive();
    }
}
