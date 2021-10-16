import { IDuration } from "../core/duration";
import { IStackTrace } from "../core/stackTrace";
import { I_Zone } from "./_zone";
import { IFuture } from "./future";
import { IFutureOr } from "./futureOr";
import { IStream } from "./stream";
declare const dart: {
    async: {
        _future: <T>(this: void, _future: I_Future<T>) => I_Future<T>;
        _futureImmediate: <T>(result: IFutureOr<T>) => I_Future<T>;
        _futureZoneValue: <T>(value: T, _zone: I_Zone) => I_Future<T>;
        _futureImmediateError: <T>(
            error: any,
            stackTrace: IStackTrace
        ) => I_Future<T>;
        _futureValue: <T>(value: T) => I_Future<T>;
    };
};
export interface I_Future<T> {
    then: <R>(
        onValue: (__: T) => R | undefined,
        props?: { onError?: (__: IStackTrace) => R | undefined | undefined }
    ) => IFuture<R>;
    catchError: (
        onError: (__: IStackTrace) => T | undefined,
        props?: { test?: (__: Object) => boolean | undefined }
    ) => IFuture<T>;
    whenComplete: (action: () => any) => IFuture<T>;
    asStream: () => IStream<T>;
    timeout: (
        timeLimit: IDuration,
        props?: { onTimeout?: () => IFutureOr<T> | undefined }
    ) => IFuture<T>;
    toString: () => string;
    getHashCode: () => number;
}
export class _Future<T> implements IFuture<T> {
    public static _stateIncomplete = 0;
    public static _statePendingComplete = 1;
    public static _stateChained = 2;
    public static _stateValue = 4;
    public static _stateError = 8;
    public constructor() {
        dart.async._future(this);
    }
    public static immediate<T>(result: IFutureOr<T>): I_Future<T> {
        return dart.async._futureImmediate(result);
    }
    public static zoneValue<T>(value: T, _zone: I_Zone): I_Future<T> {
        return dart.async._futureZoneValue(value, _zone);
    }
    public static immediateError<T>(
        error: any,
        stackTrace: IStackTrace
    ): I_Future<T> {
        return dart.async._futureImmediateError(error, stackTrace);
    }
    public static value<T>(value: T): I_Future<T> {
        return dart.async._futureValue(value);
    }
    private readonly _dart_then: <R>(
        onValue: (__: T) => R | undefined,
        props?: { onError?: (__: IStackTrace) => R | undefined | undefined }
    ) => IFuture<R> = undefined as any;
    private readonly _dart_catchError: (
        onError: (__: IStackTrace) => T | undefined,
        props?: { test?: (__: Object) => boolean | undefined }
    ) => IFuture<T> = undefined as any;
    private readonly _dart_whenComplete: (action: () => any) => IFuture<T> =
        undefined as any;
    private readonly _dart_asStream: () => IStream<T> = undefined as any;
    private readonly _dart_timeout: (
        timeLimit: IDuration,
        props?: { onTimeout?: () => IFutureOr<T> | undefined }
    ) => IFuture<T> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public then<R>(
        onValue: (__: T) => R | undefined,
        props?: { onError?: (__: IStackTrace) => R | undefined | undefined }
    ): IFuture<R> {
        return this._dart_then(onValue, props);
    }
    public catchError(
        onError: (__: IStackTrace) => T | undefined,
        props?: { test?: (__: Object) => boolean | undefined }
    ): IFuture<T> {
        return this._dart_catchError(onError, props);
    }
    public whenComplete(action: () => any): IFuture<T> {
        return this._dart_whenComplete(action);
    }
    public asStream(): IStream<T> {
        return this._dart_asStream();
    }
    public timeout(
        timeLimit: IDuration,
        props?: { onTimeout?: () => IFutureOr<T> | undefined }
    ): IFuture<T> {
        return this._dart_timeout(timeLimit, props);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
