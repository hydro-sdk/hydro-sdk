import { IFunction } from "../core/function";
import { I_Future } from "./_future";
import { IAsyncError } from "./asyncError";
import { IFuture } from "./future";
import { IFutureOr } from "./futureOr";
declare const dart: {
    async: {
        _futureListenerThen: <T, S>(
            result: I_Future<T>,
            onValue: (__: S) => IFutureOr<T>,
            errorCallback?: IFunction | undefined
        ) => I_FutureListener<S, T>;
        _futureListenerThenAwait: <T, S>(
            result: I_Future<T>,
            onValue: (value: S) => IFutureOr<T>,
            errorCallback: IFunction
        ) => I_FutureListener<S, T>;
        _futureListenerCatchError: <T, S>(
            result: I_Future<T>,
            errorCallback?: IFunction | undefined,
            callback?: IFunction | undefined
        ) => I_FutureListener<S, T>;
        _futureListenerWhenComplete: <T, S>(
            result: I_Future<T>,
            callback?: IFunction | undefined
        ) => I_FutureListener<S, T>;
    };
};
export interface I_FutureListener<S, T> {
    result: I_Future<T>;
    state: number;
    callback: IFunction | undefined;
    errorCallback: IFunction | undefined;
    getHandlesValue: () => boolean;
    getHandlesError: () => boolean;
    getHasErrorTest: () => boolean;
    getHandlesComplete: () => boolean;
    getIsAwait: () => boolean;
    getHasErrorCallback: () => boolean;
    handleValue: (sourceResult: S) => IFutureOr<T>;
    matchesErrorTest: (asyncError: IAsyncError) => boolean;
    handleError: (asyncError: IAsyncError) => IFutureOr<T>;
    handleWhenComplete: () => any;
    shouldChain: (value: IFuture<any>) => boolean;
}
export class _FutureListener<S, T> {
    public static maskValue = 1;
    public static maskError = 2;
    public static maskTestError = 4;
    public static maskWhencomplete = 8;
    public static stateChain = 0;
    public static stateThen = int.maskValue;
    public static stateCatcherror = int.maskError;
    public static stateWhencomplete = int.maskWhencomplete;
    public static stateIsAwait = 16;
    public readonly result: I_Future<T> = undefined as any;
    public readonly state: number = undefined as any;
    public readonly callback: IFunction | undefined = undefined as any;
    public readonly errorCallback: IFunction | undefined = undefined as any;
    public static then<T, S>(
        result: I_Future<T>,
        onValue: (__: S) => IFutureOr<T>,
        errorCallback?: IFunction | undefined
    ): I_FutureListener<S, T> {
        return dart.async._futureListenerThen(result, onValue, errorCallback);
    }
    public static thenAwait<T, S>(
        result: I_Future<T>,
        onValue: (value: S) => IFutureOr<T>,
        errorCallback: IFunction
    ): I_FutureListener<S, T> {
        return dart.async._futureListenerThenAwait(
            result,
            onValue,
            errorCallback
        );
    }
    public static catchError<T, S>(
        result: I_Future<T>,
        errorCallback?: IFunction | undefined,
        callback?: IFunction | undefined
    ): I_FutureListener<S, T> {
        return dart.async._futureListenerCatchError(
            result,
            errorCallback,
            callback
        );
    }
    public static whenComplete<T, S>(
        result: I_Future<T>,
        callback?: IFunction | undefined
    ): I_FutureListener<S, T> {
        return dart.async._futureListenerWhenComplete(result, callback);
    }
    private readonly _dart_getHandlesValue: () => boolean = undefined as any;
    private readonly _dart_getHandlesError: () => boolean = undefined as any;
    private readonly _dart_getHasErrorTest: () => boolean = undefined as any;
    private readonly _dart_getHandlesComplete: () => boolean = undefined as any;
    private readonly _dart_getIsAwait: () => boolean = undefined as any;
    private readonly _dart_getHasErrorCallback: () => boolean =
        undefined as any;
    private readonly _dart_handleValue: (sourceResult: S) => IFutureOr<T> =
        undefined as any;
    private readonly _dart_matchesErrorTest: (
        asyncError: IAsyncError
    ) => boolean = undefined as any;
    private readonly _dart_handleError: (
        asyncError: IAsyncError
    ) => IFutureOr<T> = undefined as any;
    private readonly _dart_handleWhenComplete: () => any = undefined as any;
    private readonly _dart_shouldChain: (value: IFuture<any>) => boolean =
        undefined as any;
    public getHandlesValue(): boolean {
        return this._dart_getHandlesValue();
    }
    public getHandlesError(): boolean {
        return this._dart_getHandlesError();
    }
    public getHasErrorTest(): boolean {
        return this._dart_getHasErrorTest();
    }
    public getHandlesComplete(): boolean {
        return this._dart_getHandlesComplete();
    }
    public getIsAwait(): boolean {
        return this._dart_getIsAwait();
    }
    public getHasErrorCallback(): boolean {
        return this._dart_getHasErrorCallback();
    }
    public handleValue(sourceResult: S): IFutureOr<T> {
        return this._dart_handleValue(sourceResult);
    }
    public matchesErrorTest(asyncError: IAsyncError): boolean {
        return this._dart_matchesErrorTest(asyncError);
    }
    public handleError(asyncError: IAsyncError): IFutureOr<T> {
        return this._dart_handleError(asyncError);
    }
    public handleWhenComplete(): any {
        return this._dart_handleWhenComplete();
    }
    public shouldChain(value: IFuture<any>): boolean {
        return this._dart_shouldChain(value);
    }
}
