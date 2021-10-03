import { IFunction } from "../core/function";
import { IFuture } from "./future";
import { IStreamSubscription } from "./streamSubscription";
declare const dart: {
    async: {
        _doneStreamSubscription: <T>(
            this: void,
            _doneStreamSubscription: I_DoneStreamSubscription<T>,
            _onDone?: () => void
        ) => I_DoneStreamSubscription<T>;
    };
};
export interface I_DoneStreamSubscription<T> {
    getIsPaused: () => boolean;
    onData: (handleData?: (data: T) => void) => void;
    onError: (handleError?: IFunction | undefined) => void;
    onDone: (handleDone?: () => void) => void;
    pause: (resumeSignal?: IFuture<void> | undefined) => void;
    resume: () => void;
    cancel: () => IFuture<any>;
    asFuture: <E>(futureValue?: E | undefined) => IFuture<E>;
    toString: () => string;
    getHashCode: () => number;
}
export class _DoneStreamSubscription<T> implements IStreamSubscription<T> {
    public static _DONE_SENT = 1;
    public static _SCHEDULED = 2;
    public static _PAUSED = 4;
    public constructor(_onDone?: () => void) {
        dart.async._doneStreamSubscription(this, _onDone);
    }
    private readonly _dart_getIsPaused: () => boolean = undefined as any;
    private readonly _dart_onData: (handleData?: (data: T) => void) => void =
        undefined as any;
    private readonly _dart_onError: (
        handleError?: IFunction | undefined
    ) => void = undefined as any;
    private readonly _dart_onDone: (handleDone?: () => void) => void =
        undefined as any;
    private readonly _dart_pause: (
        resumeSignal?: IFuture<void> | undefined
    ) => void = undefined as any;
    private readonly _dart_resume: () => void = undefined as any;
    private readonly _dart_cancel: () => IFuture<any> = undefined as any;
    private readonly _dart_asFuture: <E>(
        futureValue?: E | undefined
    ) => IFuture<E> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getIsPaused(): boolean {
        return this._dart_getIsPaused();
    }
    public onData(handleData?: (data: T) => void): void {
        return this._dart_onData(handleData);
    }
    public onError(handleError?: IFunction | undefined): void {
        return this._dart_onError(handleError);
    }
    public onDone(handleDone?: () => void): void {
        return this._dart_onDone(handleDone);
    }
    public pause(resumeSignal?: IFuture<void> | undefined): void {
        return this._dart_pause(resumeSignal);
    }
    public resume(): void {
        return this._dart_resume();
    }
    public cancel(): IFuture<any> {
        return this._dart_cancel();
    }
    public asFuture<E>(futureValue?: E | undefined): IFuture<E> {
        return this._dart_asFuture(futureValue);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
