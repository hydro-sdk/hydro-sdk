import { IDuration } from "../core/duration";
import { IMap } from "../core/map";
import { IStackTrace } from "../core/stackTrace";
import { I_Zone } from "./_zone";
import { IAsyncError } from "./asyncError";
import { ITimer } from "./timer";
import { IZone } from "./zone";
import { IZoneDelegate } from "./zoneDelegate";
import { IZoneSpecification } from "./zoneSpecification";
declare const dart: {
    async: {
        _zoneDelegate: (
            this: void,
            _zoneDelegate: I_ZoneDelegate,
            _delegationTarget: I_Zone
        ) => I_ZoneDelegate;
    };
};
export interface I_ZoneDelegate {
    handleUncaughtError: (
        zone: IZone,
        error: Object,
        stackTrace: IStackTrace
    ) => void;
    run: <R>(zone: IZone, f: () => R) => R;
    runUnary: <R, T>(zone: IZone, f: (arg: T) => R, arg: T) => R;
    runBinary: <R, T1, T2>(
        zone: IZone,
        f: (arg1: T1, arg2: T2) => R,
        arg1: T1,
        arg2: T2
    ) => R;
    registerCallback: <R>(zone: IZone, f: () => R) => () => R;
    registerUnaryCallback: <R, T>(
        zone: IZone,
        f: (arg: T) => R
    ) => (arg: T) => R;
    registerBinaryCallback: <R, T1, T2>(
        zone: IZone,
        f: (arg1: T1, arg2: T2) => R
    ) => (arg1: T1, arg2: T2) => R;
    errorCallback: (
        zone: IZone,
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => IAsyncError | undefined;
    scheduleMicrotask: (zone: IZone, f: () => any) => void;
    createTimer: (zone: IZone, duration: IDuration, f: () => void) => ITimer;
    createPeriodicTimer: (
        zone: IZone,
        period: IDuration,
        f: (timer: ITimer) => void
    ) => ITimer;
    print: (zone: IZone, line: string) => void;
    fork: (
        zone: IZone,
        specification?: IZoneSpecification | undefined,
        zoneValues?: IMap<Object | undefined, Object | undefined> | undefined
    ) => IZone;
    toString: () => string;
    getHashCode: () => number;
}
export class _ZoneDelegate implements IZoneDelegate {
    public constructor(_delegationTarget: I_Zone) {
        dart.async._zoneDelegate(this, _delegationTarget);
    }
    private readonly _dart_handleUncaughtError: (
        zone: IZone,
        error: Object,
        stackTrace: IStackTrace
    ) => void = undefined as any;
    private readonly _dart_run: <R>(zone: IZone, f: () => R) => R =
        undefined as any;
    private readonly _dart_runUnary: <R, T>(
        zone: IZone,
        f: (arg: T) => R,
        arg: T
    ) => R = undefined as any;
    private readonly _dart_runBinary: <R, T1, T2>(
        zone: IZone,
        f: (arg1: T1, arg2: T2) => R,
        arg1: T1,
        arg2: T2
    ) => R = undefined as any;
    private readonly _dart_registerCallback: <R>(
        zone: IZone,
        f: () => R
    ) => () => R = undefined as any;
    private readonly _dart_registerUnaryCallback: <R, T>(
        zone: IZone,
        f: (arg: T) => R
    ) => (arg: T) => R = undefined as any;
    private readonly _dart_registerBinaryCallback: <R, T1, T2>(
        zone: IZone,
        f: (arg1: T1, arg2: T2) => R
    ) => (arg1: T1, arg2: T2) => R = undefined as any;
    private readonly _dart_errorCallback: (
        zone: IZone,
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => IAsyncError | undefined = undefined as any;
    private readonly _dart_scheduleMicrotask: (
        zone: IZone,
        f: () => any
    ) => void = undefined as any;
    private readonly _dart_createTimer: (
        zone: IZone,
        duration: IDuration,
        f: () => void
    ) => ITimer = undefined as any;
    private readonly _dart_createPeriodicTimer: (
        zone: IZone,
        period: IDuration,
        f: (timer: ITimer) => void
    ) => ITimer = undefined as any;
    private readonly _dart_print: (zone: IZone, line: string) => void =
        undefined as any;
    private readonly _dart_fork: (
        zone: IZone,
        specification?: IZoneSpecification | undefined,
        zoneValues?: IMap<Object | undefined, Object | undefined> | undefined
    ) => IZone = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public handleUncaughtError(
        zone: IZone,
        error: Object,
        stackTrace: IStackTrace
    ): void {
        return this._dart_handleUncaughtError(zone, error, stackTrace);
    }
    public run<R>(zone: IZone, f: () => R): R {
        return this._dart_run(zone, f);
    }
    public runUnary<R, T>(zone: IZone, f: (arg: T) => R, arg: T): R {
        return this._dart_runUnary(zone, f, arg);
    }
    public runBinary<R, T1, T2>(
        zone: IZone,
        f: (arg1: T1, arg2: T2) => R,
        arg1: T1,
        arg2: T2
    ): R {
        return this._dart_runBinary(zone, f, arg1, arg2);
    }
    public registerCallback<R>(zone: IZone, f: () => R): () => R {
        return this._dart_registerCallback(zone, f);
    }
    public registerUnaryCallback<R, T>(
        zone: IZone,
        f: (arg: T) => R
    ): (arg: T) => R {
        return this._dart_registerUnaryCallback(zone, f);
    }
    public registerBinaryCallback<R, T1, T2>(
        zone: IZone,
        f: (arg1: T1, arg2: T2) => R
    ): (arg1: T1, arg2: T2) => R {
        return this._dart_registerBinaryCallback(zone, f);
    }
    public errorCallback(
        zone: IZone,
        error: Object,
        stackTrace?: IStackTrace | undefined
    ): IAsyncError | undefined {
        return this._dart_errorCallback(zone, error, stackTrace);
    }
    public scheduleMicrotask(zone: IZone, f: () => any): void {
        return this._dart_scheduleMicrotask(zone, f);
    }
    public createTimer(
        zone: IZone,
        duration: IDuration,
        f: () => void
    ): ITimer {
        return this._dart_createTimer(zone, duration, f);
    }
    public createPeriodicTimer(
        zone: IZone,
        period: IDuration,
        f: (timer: ITimer) => void
    ): ITimer {
        return this._dart_createPeriodicTimer(zone, period, f);
    }
    public print(zone: IZone, line: string): void {
        return this._dart_print(zone, line);
    }
    public fork(
        zone: IZone,
        specification?: IZoneSpecification | undefined,
        zoneValues?: IMap<Object | undefined, Object | undefined> | undefined
    ): IZone {
        return this._dart_fork(zone, specification, zoneValues);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
