import { IIterable } from "../core/iterable";
import { I_EventDispatch } from "./_eventDispatch";
import { I_PendingEvents } from "./_pendingEvents";
declare const dart: {
    async: {
        _iterablePendingEvents: <T>(
            this: void,
            _iterablePendingEvents: I_IterablePendingEvents<T>,
            data: IIterable<T>
        ) => I_IterablePendingEvents<T>;
    };
};
export interface I_IterablePendingEvents<T> {
    getIsEmpty: () => boolean;
    handleNext: (dispatch: I_EventDispatch<T>) => void;
    clear: () => void;
    schedule: (dispatch: I_EventDispatch<T>) => void;
    cancelSchedule: () => void;
    getIsScheduled: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _IterablePendingEvents<T> implements I_PendingEvents<T> {
    public constructor(data: IIterable<T>) {
        dart.async._iterablePendingEvents(this, data);
    }
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_handleNext: (dispatch: I_EventDispatch<T>) => void =
        undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_schedule: (dispatch: I_EventDispatch<T>) => void =
        undefined as any;
    private readonly _dart_cancelSchedule: () => void = undefined as any;
    private readonly _dart_getIsScheduled: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public handleNext(dispatch: I_EventDispatch<T>): void {
        return this._dart_handleNext(dispatch);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public schedule(dispatch: I_EventDispatch<T>): void {
        return this._dart_schedule(dispatch);
    }
    public cancelSchedule(): void {
        return this._dart_cancelSchedule();
    }
    public getIsScheduled(): boolean {
        return this._dart_getIsScheduled();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
