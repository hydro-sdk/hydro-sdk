import { I_EventDispatch } from "./_eventDispatch";
export interface I_PendingEvents<T> {
    getIsEmpty: () => boolean;
    getIsScheduled: () => boolean;
    schedule: (dispatch: I_EventDispatch<T>) => void;
    cancelSchedule: () => void;
    handleNext: (dispatch: I_EventDispatch<T>) => void;
    clear: () => void;
}
export class _PendingEvents<T> {
    public static _STATE_UNSCHEDULED = 0;
    public static _STATE_SCHEDULED = 1;
    public static _STATE_CANCELED = 3;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsScheduled: () => boolean = undefined as any;
    private readonly _dart_schedule: (dispatch: I_EventDispatch<T>) => void =
        undefined as any;
    private readonly _dart_cancelSchedule: () => void = undefined as any;
    private readonly _dart_handleNext: (dispatch: I_EventDispatch<T>) => void =
        undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getIsScheduled(): boolean {
        return this._dart_getIsScheduled();
    }
    public schedule(dispatch: I_EventDispatch<T>): void {
        return this._dart_schedule(dispatch);
    }
    public cancelSchedule(): void {
        return this._dart_cancelSchedule();
    }
    public handleNext(dispatch: I_EventDispatch<T>): void {
        return this._dart_handleNext(dispatch);
    }
    public clear(): void {
        return this._dart_clear();
    }
}
