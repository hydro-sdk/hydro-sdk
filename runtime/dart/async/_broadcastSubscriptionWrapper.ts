import { IFunction } from "../core/function";
import { I_AsBroadcastStream } from "./_asBroadcastStream";
import { IFuture } from "./future";
import { IStreamSubscription } from "./streamSubscription";
declare const dart: {
    async: {
        _broadcastSubscriptionWrapper: <T>(
            this: void,
            _broadcastSubscriptionWrapper: I_BroadcastSubscriptionWrapper<T>,
            _stream: I_AsBroadcastStream<any>
        ) => I_BroadcastSubscriptionWrapper<T>;
    };
};
export interface I_BroadcastSubscriptionWrapper<T> {
    onData: (handleData?: (data: T) => void) => void;
    onError: (handleError?: IFunction | undefined) => void;
    onDone: (handleDone?: () => void) => void;
    pause: (resumeSignal?: IFuture<void> | undefined) => void;
    resume: () => void;
    cancel: () => IFuture<any>;
    getIsPaused: () => boolean;
    asFuture: <E>(futureValue?: E | undefined) => IFuture<E>;
    toString: () => string;
    getHashCode: () => number;
}
export class _BroadcastSubscriptionWrapper<T>
    implements IStreamSubscription<T>
{
    public constructor(_stream: I_AsBroadcastStream<any>) {
        dart.async._broadcastSubscriptionWrapper(this, _stream);
    }
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
    private readonly _dart_getIsPaused: () => boolean = undefined as any;
    private readonly _dart_asFuture: <E>(
        futureValue?: E | undefined
    ) => IFuture<E> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
    public getIsPaused(): boolean {
        return this._dart_getIsPaused();
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
