import { IDuration } from "../core/duration";
import { IMap } from "../core/map";
import { IStackTrace } from "../core/stackTrace";
import { IAsyncError } from "./asyncError";
import { ITimer } from "./timer";
import { IZoneSpecification } from "./zoneSpecification";
declare const dart: {
    async: {
        zoneCurrent: () => IZone;
    };
};
export interface IZone {
    handleUncaughtError: (error: Object, stackTrace: IStackTrace) => void;
    getParent: () => IZone | undefined;
    getErrorZone: () => IZone;
    inSameErrorZone: (otherZone: IZone) => boolean;
    fork: (props?: {
        specification?: IZoneSpecification | undefined;
        zoneValues?: IMap<Object | undefined, Object | undefined> | undefined;
    }) => IZone;
    run: <R>(action: () => R) => R;
    runUnary: <R, T>(action: (argument: T) => R, argument: T) => R;
    runBinary: <R, T1, T2>(
        action: (argument1: T1, argument2: T2) => R,
        argument1: T1,
        argument2: T2
    ) => R;
    runGuarded: (action: () => void) => void;
    runUnaryGuarded: <T>(action: (argument: T) => void, argument: T) => void;
    runBinaryGuarded: <T1, T2>(
        action: (argument1: T1, argument2: T2) => void,
        argument1: T1,
        argument2: T2
    ) => void;
    registerCallback: <R>(callback: () => R) => () => R;
    registerUnaryCallback: <R, T>(callback: (arg: T) => R) => (arg: T) => R;
    registerBinaryCallback: <R, T1, T2>(
        callback: (arg1: T1, arg2: T2) => R
    ) => (arg1: T1, arg2: T2) => R;
    bindCallback: <R>(callback: () => R) => () => R;
    bindUnaryCallback: <R, T>(callback: (argument: T) => R) => (arg: T) => R;
    bindBinaryCallback: <R, T1, T2>(
        callback: (argument1: T1, argument2: T2) => R
    ) => (arg1: T1, arg2: T2) => R;
    bindCallbackGuarded: (callback: () => void) => () => void;
    bindUnaryCallbackGuarded: <T>(
        callback: (argument: T) => void
    ) => (__: T) => void;
    bindBinaryCallbackGuarded: <T1, T2>(
        callback: (argument1: T1, argument2: T2) => void
    ) => (__: T2) => void;
    errorCallback: (
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => IAsyncError | undefined;
    scheduleMicrotask: (callback: () => void) => void;
    createTimer: (duration: IDuration, callback: () => void) => ITimer;
    createPeriodicTimer: (
        period: IDuration,
        callback: (timer: ITimer) => void
    ) => ITimer;
    print: (line: string) => void;
}
export class Zone {
    public static current(): IZone {
        return dart.async.zoneCurrent();
    }
    private readonly _dart_handleUncaughtError: (
        error: Object,
        stackTrace: IStackTrace
    ) => void = undefined as any;
    private readonly _dart_getParent: () => IZone | undefined =
        undefined as any;
    private readonly _dart_getErrorZone: () => IZone = undefined as any;
    private readonly _dart_inSameErrorZone: (otherZone: IZone) => boolean =
        undefined as any;
    private readonly _dart_fork: (props?: {
        specification?: IZoneSpecification | undefined;
        zoneValues?: IMap<Object | undefined, Object | undefined> | undefined;
    }) => IZone = undefined as any;
    private readonly _dart_run: <R>(action: () => R) => R = undefined as any;
    private readonly _dart_runUnary: <R, T>(
        action: (argument: T) => R,
        argument: T
    ) => R = undefined as any;
    private readonly _dart_runBinary: <R, T1, T2>(
        action: (argument1: T1, argument2: T2) => R,
        argument1: T1,
        argument2: T2
    ) => R = undefined as any;
    private readonly _dart_runGuarded: (action: () => void) => void =
        undefined as any;
    private readonly _dart_runUnaryGuarded: <T>(
        action: (argument: T) => void,
        argument: T
    ) => void = undefined as any;
    private readonly _dart_runBinaryGuarded: <T1, T2>(
        action: (argument1: T1, argument2: T2) => void,
        argument1: T1,
        argument2: T2
    ) => void = undefined as any;
    private readonly _dart_registerCallback: <R>(callback: () => R) => () => R =
        undefined as any;
    private readonly _dart_registerUnaryCallback: <R, T>(
        callback: (arg: T) => R
    ) => (arg: T) => R = undefined as any;
    private readonly _dart_registerBinaryCallback: <R, T1, T2>(
        callback: (arg1: T1, arg2: T2) => R
    ) => (arg1: T1, arg2: T2) => R = undefined as any;
    private readonly _dart_bindCallback: <R>(callback: () => R) => () => R =
        undefined as any;
    private readonly _dart_bindUnaryCallback: <R, T>(
        callback: (argument: T) => R
    ) => (arg: T) => R = undefined as any;
    private readonly _dart_bindBinaryCallback: <R, T1, T2>(
        callback: (argument1: T1, argument2: T2) => R
    ) => (arg1: T1, arg2: T2) => R = undefined as any;
    private readonly _dart_bindCallbackGuarded: (
        callback: () => void
    ) => () => void = undefined as any;
    private readonly _dart_bindUnaryCallbackGuarded: <T>(
        callback: (argument: T) => void
    ) => (__: T) => void = undefined as any;
    private readonly _dart_bindBinaryCallbackGuarded: <T1, T2>(
        callback: (argument1: T1, argument2: T2) => void
    ) => (__: T2) => void = undefined as any;
    private readonly _dart_errorCallback: (
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => IAsyncError | undefined = undefined as any;
    private readonly _dart_scheduleMicrotask: (callback: () => void) => void =
        undefined as any;
    private readonly _dart_createTimer: (
        duration: IDuration,
        callback: () => void
    ) => ITimer = undefined as any;
    private readonly _dart_createPeriodicTimer: (
        period: IDuration,
        callback: (timer: ITimer) => void
    ) => ITimer = undefined as any;
    private readonly _dart_print: (line: string) => void = undefined as any;
    public handleUncaughtError(error: Object, stackTrace: IStackTrace): void {
        return this._dart_handleUncaughtError(error, stackTrace);
    }
    public getParent(): IZone | undefined {
        return this._dart_getParent();
    }
    public getErrorZone(): IZone {
        return this._dart_getErrorZone();
    }
    public inSameErrorZone(otherZone: IZone): boolean {
        return this._dart_inSameErrorZone(otherZone);
    }
    public fork(props?: {
        specification?: IZoneSpecification | undefined;
        zoneValues?: IMap<Object | undefined, Object | undefined> | undefined;
    }): IZone {
        return this._dart_fork(props);
    }
    public run<R>(action: () => R): R {
        return this._dart_run(action);
    }
    public runUnary<R, T>(action: (argument: T) => R, argument: T): R {
        return this._dart_runUnary(action, argument);
    }
    public runBinary<R, T1, T2>(
        action: (argument1: T1, argument2: T2) => R,
        argument1: T1,
        argument2: T2
    ): R {
        return this._dart_runBinary(action, argument1, argument2);
    }
    public runGuarded(action: () => void): void {
        return this._dart_runGuarded(action);
    }
    public runUnaryGuarded<T>(
        action: (argument: T) => void,
        argument: T
    ): void {
        return this._dart_runUnaryGuarded(action, argument);
    }
    public runBinaryGuarded<T1, T2>(
        action: (argument1: T1, argument2: T2) => void,
        argument1: T1,
        argument2: T2
    ): void {
        return this._dart_runBinaryGuarded(action, argument1, argument2);
    }
    public registerCallback<R>(callback: () => R): () => R {
        return this._dart_registerCallback(callback);
    }
    public registerUnaryCallback<R, T>(callback: (arg: T) => R): (arg: T) => R {
        return this._dart_registerUnaryCallback(callback);
    }
    public registerBinaryCallback<R, T1, T2>(
        callback: (arg1: T1, arg2: T2) => R
    ): (arg1: T1, arg2: T2) => R {
        return this._dart_registerBinaryCallback(callback);
    }
    public bindCallback<R>(callback: () => R): () => R {
        return this._dart_bindCallback(callback);
    }
    public bindUnaryCallback<R, T>(
        callback: (argument: T) => R
    ): (arg: T) => R {
        return this._dart_bindUnaryCallback(callback);
    }
    public bindBinaryCallback<R, T1, T2>(
        callback: (argument1: T1, argument2: T2) => R
    ): (arg1: T1, arg2: T2) => R {
        return this._dart_bindBinaryCallback(callback);
    }
    public bindCallbackGuarded(callback: () => void): () => void {
        return this._dart_bindCallbackGuarded(callback);
    }
    public bindUnaryCallbackGuarded<T>(
        callback: (argument: T) => void
    ): (__: T) => void {
        return this._dart_bindUnaryCallbackGuarded(callback);
    }
    public bindBinaryCallbackGuarded<T1, T2>(
        callback: (argument1: T1, argument2: T2) => void
    ): (__: T2) => void {
        return this._dart_bindBinaryCallbackGuarded(callback);
    }
    public errorCallback(
        error: Object,
        stackTrace?: IStackTrace | undefined
    ): IAsyncError | undefined {
        return this._dart_errorCallback(error, stackTrace);
    }
    public scheduleMicrotask(callback: () => void): void {
        return this._dart_scheduleMicrotask(callback);
    }
    public createTimer(duration: IDuration, callback: () => void): ITimer {
        return this._dart_createTimer(duration, callback);
    }
    public createPeriodicTimer(
        period: IDuration,
        callback: (timer: ITimer) => void
    ): ITimer {
        return this._dart_createPeriodicTimer(period, callback);
    }
    public print(line: string): void {
        return this._dart_print(line);
    }
}
