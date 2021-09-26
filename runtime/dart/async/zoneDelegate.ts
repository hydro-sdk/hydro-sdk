import { IDuration } from "../core/duration";
import { IMap } from "../core/map";
import { IStackTrace } from "../core/stackTrace";
import { IAsyncError } from "./asyncError";
import { ITimer } from "./timer";
import { IZone } from "./zone";
import { IZoneSpecification } from "./zoneSpecification";
export interface IZoneDelegate {
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
    scheduleMicrotask: (zone: IZone, f: () => void) => void;
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
        zoneValues?: IMap<any, any> | undefined
    ) => IZone;
}
