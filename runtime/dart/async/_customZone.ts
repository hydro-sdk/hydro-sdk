import { IDuration } from "../core/duration";
import { IMap } from "../core/map";
import { IStackTrace } from "../core/stackTrace";
import { I_Zone } from "./_zone";
import { IAsyncError } from "./asyncError";
import { ITimer } from "./timer";
import { IZone } from "./zone";
import { IZoneSpecification } from "./zoneSpecification";
declare const dart: {
    async: {
        _customZone: (
            this: void,
            _customZone: I_CustomZone,
            parent: I_Zone,
            specification: IZoneSpecification,
            _map: IMap<Object | undefined, Object | undefined>
        ) => I_CustomZone;
    };
};
export interface I_CustomZone {
    parent: I_Zone;
    getErrorZone: () => IZone;
    runGuarded: (f: () => void) => void;
    runUnaryGuarded: <T>(f: (arg: T) => void, arg: T) => void;
    runBinaryGuarded: <T1, T2>(
        f: (arg1: T1, arg2: T2) => void,
        arg1: T1,
        arg2: T2
    ) => void;
    bindCallback: <R>(f: () => R) => () => R;
    bindUnaryCallback: <R, T>(f: (arg: T) => R) => (arg: T) => R;
    bindBinaryCallback: <R, T1, T2>(
        f: (arg1: T1, arg2: T2) => R
    ) => (arg1: T1, arg2: T2) => R;
    bindCallbackGuarded: (f: () => void) => () => void;
    bindUnaryCallbackGuarded: <T>(f: (arg: T) => void) => (__: T) => void;
    bindBinaryCallbackGuarded: <T1, T2>(
        f: (arg1: T1, arg2: T2) => void
    ) => (__: T2) => void;
    handleUncaughtError: (error: Object, stackTrace: IStackTrace) => void;
    fork: (props?: {
        specification?: IZoneSpecification | undefined;
        zoneValues?: IMap<Object | undefined, Object | undefined> | undefined;
    }) => IZone;
    run: <R>(f: () => R) => R;
    runUnary: <R, T>(f: (arg: T) => R, arg: T) => R;
    runBinary: <R, T1, T2>(
        f: (arg1: T1, arg2: T2) => R,
        arg1: T1,
        arg2: T2
    ) => R;
    registerCallback: <R>(callback: () => R) => () => R;
    registerUnaryCallback: <R, T>(callback: (arg: T) => R) => (arg: T) => R;
    registerBinaryCallback: <R, T1, T2>(
        callback: (arg1: T1, arg2: T2) => R
    ) => (arg1: T1, arg2: T2) => R;
    errorCallback: (
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => IAsyncError | undefined;
    scheduleMicrotask: (f: () => void) => void;
    createTimer: (duration: IDuration, f: () => void) => ITimer;
    createPeriodicTimer: (
        duration: IDuration,
        f: (timer: ITimer) => void
    ) => ITimer;
    print: (line: string) => void;
    inSameErrorZone: (otherZone: IZone) => boolean;
    getParent: () => I_Zone | undefined;
    toString: () => string;
    getHashCode: () => number;
}
export class _CustomZone implements I_Zone, IZone {
    public readonly parent: I_Zone = undefined as any;
    public constructor(
        parent: I_Zone,
        specification: IZoneSpecification,
        _map: IMap<Object | undefined, Object | undefined>
    ) {
        dart.async._customZone(this, parent, specification, _map);
    }
    private readonly _dart_getErrorZone: () => IZone = undefined as any;
    private readonly _dart_runGuarded: (f: () => void) => void =
        undefined as any;
    private readonly _dart_runUnaryGuarded: <T>(
        f: (arg: T) => void,
        arg: T
    ) => void = undefined as any;
    private readonly _dart_runBinaryGuarded: <T1, T2>(
        f: (arg1: T1, arg2: T2) => void,
        arg1: T1,
        arg2: T2
    ) => void = undefined as any;
    private readonly _dart_bindCallback: <R>(f: () => R) => () => R =
        undefined as any;
    private readonly _dart_bindUnaryCallback: <R, T>(
        f: (arg: T) => R
    ) => (arg: T) => R = undefined as any;
    private readonly _dart_bindBinaryCallback: <R, T1, T2>(
        f: (arg1: T1, arg2: T2) => R
    ) => (arg1: T1, arg2: T2) => R = undefined as any;
    private readonly _dart_bindCallbackGuarded: (f: () => void) => () => void =
        undefined as any;
    private readonly _dart_bindUnaryCallbackGuarded: <T>(
        f: (arg: T) => void
    ) => (__: T) => void = undefined as any;
    private readonly _dart_bindBinaryCallbackGuarded: <T1, T2>(
        f: (arg1: T1, arg2: T2) => void
    ) => (__: T2) => void = undefined as any;
    private readonly _dart_handleUncaughtError: (
        error: Object,
        stackTrace: IStackTrace
    ) => void = undefined as any;
    private readonly _dart_fork: (props?: {
        specification?: IZoneSpecification | undefined;
        zoneValues?: IMap<Object | undefined, Object | undefined> | undefined;
    }) => IZone = undefined as any;
    private readonly _dart_run: <R>(f: () => R) => R = undefined as any;
    private readonly _dart_runUnary: <R, T>(f: (arg: T) => R, arg: T) => R =
        undefined as any;
    private readonly _dart_runBinary: <R, T1, T2>(
        f: (arg1: T1, arg2: T2) => R,
        arg1: T1,
        arg2: T2
    ) => R = undefined as any;
    private readonly _dart_registerCallback: <R>(callback: () => R) => () => R =
        undefined as any;
    private readonly _dart_registerUnaryCallback: <R, T>(
        callback: (arg: T) => R
    ) => (arg: T) => R = undefined as any;
    private readonly _dart_registerBinaryCallback: <R, T1, T2>(
        callback: (arg1: T1, arg2: T2) => R
    ) => (arg1: T1, arg2: T2) => R = undefined as any;
    private readonly _dart_errorCallback: (
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => IAsyncError | undefined = undefined as any;
    private readonly _dart_scheduleMicrotask: (f: () => void) => void =
        undefined as any;
    private readonly _dart_createTimer: (
        duration: IDuration,
        f: () => void
    ) => ITimer = undefined as any;
    private readonly _dart_createPeriodicTimer: (
        duration: IDuration,
        f: (timer: ITimer) => void
    ) => ITimer = undefined as any;
    private readonly _dart_print: (line: string) => void = undefined as any;
    private readonly _dart_inSameErrorZone: (otherZone: IZone) => boolean =
        undefined as any;
    private readonly _dart_getParent: () => I_Zone | undefined =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getErrorZone(): IZone {
        return this._dart_getErrorZone();
    }
    public runGuarded(f: () => void): void {
        return this._dart_runGuarded(f);
    }
    public runUnaryGuarded<T>(f: (arg: T) => void, arg: T): void {
        return this._dart_runUnaryGuarded(f, arg);
    }
    public runBinaryGuarded<T1, T2>(
        f: (arg1: T1, arg2: T2) => void,
        arg1: T1,
        arg2: T2
    ): void {
        return this._dart_runBinaryGuarded(f, arg1, arg2);
    }
    public bindCallback<R>(f: () => R): () => R {
        return this._dart_bindCallback(f);
    }
    public bindUnaryCallback<R, T>(f: (arg: T) => R): (arg: T) => R {
        return this._dart_bindUnaryCallback(f);
    }
    public bindBinaryCallback<R, T1, T2>(
        f: (arg1: T1, arg2: T2) => R
    ): (arg1: T1, arg2: T2) => R {
        return this._dart_bindBinaryCallback(f);
    }
    public bindCallbackGuarded(f: () => void): () => void {
        return this._dart_bindCallbackGuarded(f);
    }
    public bindUnaryCallbackGuarded<T>(f: (arg: T) => void): (__: T) => void {
        return this._dart_bindUnaryCallbackGuarded(f);
    }
    public bindBinaryCallbackGuarded<T1, T2>(
        f: (arg1: T1, arg2: T2) => void
    ): (__: T2) => void {
        return this._dart_bindBinaryCallbackGuarded(f);
    }
    public handleUncaughtError(error: Object, stackTrace: IStackTrace): void {
        return this._dart_handleUncaughtError(error, stackTrace);
    }
    public fork(props?: {
        specification?: IZoneSpecification | undefined;
        zoneValues?: IMap<Object | undefined, Object | undefined> | undefined;
    }): IZone {
        return this._dart_fork(props);
    }
    public run<R>(f: () => R): R {
        return this._dart_run(f);
    }
    public runUnary<R, T>(f: (arg: T) => R, arg: T): R {
        return this._dart_runUnary(f, arg);
    }
    public runBinary<R, T1, T2>(
        f: (arg1: T1, arg2: T2) => R,
        arg1: T1,
        arg2: T2
    ): R {
        return this._dart_runBinary(f, arg1, arg2);
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
    public errorCallback(
        error: Object,
        stackTrace?: IStackTrace | undefined
    ): IAsyncError | undefined {
        return this._dart_errorCallback(error, stackTrace);
    }
    public scheduleMicrotask(f: () => void): void {
        return this._dart_scheduleMicrotask(f);
    }
    public createTimer(duration: IDuration, f: () => void): ITimer {
        return this._dart_createTimer(duration, f);
    }
    public createPeriodicTimer(
        duration: IDuration,
        f: (timer: ITimer) => void
    ): ITimer {
        return this._dart_createPeriodicTimer(duration, f);
    }
    public print(line: string): void {
        return this._dart_print(line);
    }
    public inSameErrorZone(otherZone: IZone): boolean {
        return this._dart_inSameErrorZone(otherZone);
    }
    public getParent(): I_Zone | undefined {
        return this._dart_getParent();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
