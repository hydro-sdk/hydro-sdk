import { IFunction } from "../core/function";
import { I_EventDispatch } from "./_eventDispatch";
import { I_EventSink } from "./_eventSink";
import { I_ForwardingStream } from "./_forwardingStream";
import { I_ForwardingStreamSubscription } from "./_forwardingStreamSubscription";
import { IFuture } from "./future";
import { IStreamSubscription } from "./streamSubscription";
declare const dart: {
    async: {
        _stateStreamSubscription: <S, T>(
            this: void,
            _stateStreamSubscription: I_StateStreamSubscription<S, T>,
            stream: I_ForwardingStream<T, T>,
            onData: (data: T) => void,
            onError: IFunction | undefined,
            onDone: () => void,
            cancelOnError: boolean,
            _subState: S
        ) => I_StateStreamSubscription<S, T>;
    };
};
export interface I_StateStreamSubscription<S, T> {
    onData: (handleData?: (event: T) => void) => void;
    onError: (handleError?: IFunction | undefined) => void;
    onDone: (handleDone?: () => void) => void;
    pause: (resumeSignal?: IFuture<void> | undefined) => void;
    resume: () => void;
    cancel: () => IFuture<any>;
    asFuture: <E>(futureValue?: E | undefined) => IFuture<E>;
    getIsPaused: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _StateStreamSubscription<S, T>
    implements
        I_ForwardingStreamSubscription<T, T>,
        IStreamSubscription<T>,
        I_EventSink<T>,
        I_EventDispatch<T>
{
    public constructor(
        stream: I_ForwardingStream<T, T>,
        onData: (data: T) => void,
        onError: IFunction | undefined,
        onDone: () => void,
        cancelOnError: boolean,
        _subState: S
    ) {
        dart.async._stateStreamSubscription(
            this,
            stream,
            onData,
            onError,
            onDone,
            cancelOnError,
            _subState
        );
    }
    private readonly _dart_onData: (handleData?: (event: T) => void) => void =
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
    private readonly _dart_getIsPaused: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public onData(handleData?: (event: T) => void): void {
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
    public getIsPaused(): boolean {
        return this._dart_getIsPaused();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
