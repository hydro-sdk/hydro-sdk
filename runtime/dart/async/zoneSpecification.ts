import { IDuration } from "../core/duration";
import { IMap } from "../core/map";
import { IStackTrace } from "../core/stackTrace";
import { IAsyncError } from "./asyncError";
import { ITimer } from "./timer";
import { IZone } from "./zone";
import { IZoneDelegate } from "./zoneDelegate";
declare const dart: {
    async: {
        zoneSpecification: (
            this: void,
            zoneSpecification: IZoneSpecification,
            props?: {
                createPeriodicTimer?: (
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    period: IDuration,
                    f: (timer: ITimer) => void
                ) => ITimer | undefined;
                createTimer?: (
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    duration: IDuration,
                    f: () => void
                ) => ITimer | undefined;
                errorCallback?: (
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    error: Object,
                    stackTrace?: IStackTrace | undefined
                ) => IAsyncError | undefined | undefined;
                fork?: (
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    specification?: IZoneSpecification | undefined,
                    zoneValues?:
                        | IMap<Object | undefined, Object | undefined>
                        | undefined
                ) => IZone | undefined;
                handleUncaughtError?: (
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    error: Object,
                    stackTrace: IStackTrace
                ) => void | undefined;
                print?: (
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    line: string
                ) => void | undefined;
                registerBinaryCallback?: <R, T1, T2>(
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    f: (arg1: T1, arg2: T2) => R
                ) => (arg1: T1, arg2: T2) => R | undefined;
                registerCallback?: <R>(
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    f: () => R
                ) => () => R | undefined;
                registerUnaryCallback?: <R, T>(
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    f: (arg: T) => R
                ) => (arg: T) => R | undefined;
                run?: <R>(
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    f: () => R
                ) => R | undefined;
                runBinary?: <R, T1, T2>(
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    f: (arg1: T1, arg2: T2) => R,
                    arg1: T1,
                    arg2: T2
                ) => R | undefined;
                runUnary?: <R, T>(
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    f: (arg: T) => R,
                    arg: T
                ) => R | undefined;
                scheduleMicrotask?: (
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    f: () => void
                ) => void | undefined;
            }
        ) => IZoneSpecification;
        zoneSpecificationFrom: (
            other: IZoneSpecification,
            props?: {
                createPeriodicTimer?: (
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    period: IDuration,
                    f: (timer: ITimer) => void
                ) => ITimer | undefined;
                createTimer?: (
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    duration: IDuration,
                    f: () => void
                ) => ITimer | undefined;
                errorCallback?: (
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    error: Object,
                    stackTrace?: IStackTrace | undefined
                ) => IAsyncError | undefined | undefined;
                fork?: (
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    specification?: IZoneSpecification | undefined,
                    zoneValues?:
                        | IMap<Object | undefined, Object | undefined>
                        | undefined
                ) => IZone | undefined;
                handleUncaughtError?: (
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    error: Object,
                    stackTrace: IStackTrace
                ) => void | undefined;
                print?: (
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    line: string
                ) => void | undefined;
                registerBinaryCallback?: <R, T1, T2>(
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    f: (arg1: T1, arg2: T2) => R
                ) => (arg1: T1, arg2: T2) => R | undefined;
                registerCallback?: <R>(
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    f: () => R
                ) => () => R | undefined;
                registerUnaryCallback?: <R, T>(
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    f: (arg: T) => R
                ) => (arg: T) => R | undefined;
                run?: <R>(
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    f: () => R
                ) => R | undefined;
                runBinary?: <R, T1, T2>(
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    f: (arg1: T1, arg2: T2) => R,
                    arg1: T1,
                    arg2: T2
                ) => R | undefined;
                runUnary?: <R, T>(
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    f: (arg: T) => R,
                    arg: T
                ) => R | undefined;
                scheduleMicrotask?: (
                    self: IZone,
                    parent: IZoneDelegate,
                    zone: IZone,
                    f: () => void
                ) => void | undefined;
            }
        ) => IZoneSpecification;
    };
};
export interface IZoneSpecification {
    getHandleUncaughtError: () => (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        error: Object,
        stackTrace: IStackTrace
    ) => void | undefined;
    getRun: () => <R>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: () => R
    ) => R | undefined;
    getRunUnary: () => <R, T>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: (arg: T) => R,
        arg: T
    ) => R | undefined;
    getRunBinary: () => <R, T1, T2>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: (arg1: T1, arg2: T2) => R,
        arg1: T1,
        arg2: T2
    ) => R | undefined;
    getRegisterCallback: () => <R>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: () => R
    ) => () => R | undefined;
    getRegisterUnaryCallback: () => <R, T>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: (arg: T) => R
    ) => (arg: T) => R | undefined;
    getRegisterBinaryCallback: () => <R, T1, T2>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: (arg1: T1, arg2: T2) => R
    ) => (arg1: T1, arg2: T2) => R | undefined;
    getErrorCallback: () => (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => IAsyncError | undefined | undefined;
    getScheduleMicrotask: () => (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: () => void
    ) => void | undefined;
    getCreateTimer: () => (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        duration: IDuration,
        f: () => void
    ) => ITimer | undefined;
    getCreatePeriodicTimer: () => (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        period: IDuration,
        f: (timer: ITimer) => void
    ) => ITimer | undefined;
    getPrint: () => (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        line: string
    ) => void | undefined;
    getFork: () => (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        specification?: IZoneSpecification | undefined,
        zoneValues?: IMap<Object | undefined, Object | undefined> | undefined
    ) => IZone | undefined;
}
export class ZoneSpecification {
    public constructor(props?: {
        createPeriodicTimer?: (
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            period: IDuration,
            f: (timer: ITimer) => void
        ) => ITimer | undefined;
        createTimer?: (
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            duration: IDuration,
            f: () => void
        ) => ITimer | undefined;
        errorCallback?: (
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            error: Object,
            stackTrace?: IStackTrace | undefined
        ) => IAsyncError | undefined | undefined;
        fork?: (
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            specification?: IZoneSpecification | undefined,
            zoneValues?:
                | IMap<Object | undefined, Object | undefined>
                | undefined
        ) => IZone | undefined;
        handleUncaughtError?: (
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            error: Object,
            stackTrace: IStackTrace
        ) => void | undefined;
        print?: (
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            line: string
        ) => void | undefined;
        registerBinaryCallback?: <R, T1, T2>(
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            f: (arg1: T1, arg2: T2) => R
        ) => (arg1: T1, arg2: T2) => R | undefined;
        registerCallback?: <R>(
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            f: () => R
        ) => () => R | undefined;
        registerUnaryCallback?: <R, T>(
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            f: (arg: T) => R
        ) => (arg: T) => R | undefined;
        run?: <R>(
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            f: () => R
        ) => R | undefined;
        runBinary?: <R, T1, T2>(
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            f: (arg1: T1, arg2: T2) => R,
            arg1: T1,
            arg2: T2
        ) => R | undefined;
        runUnary?: <R, T>(
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            f: (arg: T) => R,
            arg: T
        ) => R | undefined;
        scheduleMicrotask?: (
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            f: () => void
        ) => void | undefined;
    }) {
        dart.async.zoneSpecification(this, props);
    }
    public static from(
        other: IZoneSpecification,
        props?: {
            createPeriodicTimer?: (
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                period: IDuration,
                f: (timer: ITimer) => void
            ) => ITimer | undefined;
            createTimer?: (
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                duration: IDuration,
                f: () => void
            ) => ITimer | undefined;
            errorCallback?: (
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                error: Object,
                stackTrace?: IStackTrace | undefined
            ) => IAsyncError | undefined | undefined;
            fork?: (
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                specification?: IZoneSpecification | undefined,
                zoneValues?:
                    | IMap<Object | undefined, Object | undefined>
                    | undefined
            ) => IZone | undefined;
            handleUncaughtError?: (
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                error: Object,
                stackTrace: IStackTrace
            ) => void | undefined;
            print?: (
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                line: string
            ) => void | undefined;
            registerBinaryCallback?: <R, T1, T2>(
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                f: (arg1: T1, arg2: T2) => R
            ) => (arg1: T1, arg2: T2) => R | undefined;
            registerCallback?: <R>(
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                f: () => R
            ) => () => R | undefined;
            registerUnaryCallback?: <R, T>(
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                f: (arg: T) => R
            ) => (arg: T) => R | undefined;
            run?: <R>(
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                f: () => R
            ) => R | undefined;
            runBinary?: <R, T1, T2>(
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                f: (arg1: T1, arg2: T2) => R,
                arg1: T1,
                arg2: T2
            ) => R | undefined;
            runUnary?: <R, T>(
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                f: (arg: T) => R,
                arg: T
            ) => R | undefined;
            scheduleMicrotask?: (
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                f: () => void
            ) => void | undefined;
        }
    ): IZoneSpecification {
        return dart.async.zoneSpecificationFrom(other, props);
    }
    private readonly _dart_getHandleUncaughtError: () => (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        error: Object,
        stackTrace: IStackTrace
    ) => void | undefined = undefined as any;
    private readonly _dart_getRun: () => <R>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: () => R
    ) => R | undefined = undefined as any;
    private readonly _dart_getRunUnary: () => <R, T>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: (arg: T) => R,
        arg: T
    ) => R | undefined = undefined as any;
    private readonly _dart_getRunBinary: () => <R, T1, T2>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: (arg1: T1, arg2: T2) => R,
        arg1: T1,
        arg2: T2
    ) => R | undefined = undefined as any;
    private readonly _dart_getRegisterCallback: () => <R>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: () => R
    ) => () => R | undefined = undefined as any;
    private readonly _dart_getRegisterUnaryCallback: () => <R, T>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: (arg: T) => R
    ) => (arg: T) => R | undefined = undefined as any;
    private readonly _dart_getRegisterBinaryCallback: () => <R, T1, T2>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: (arg1: T1, arg2: T2) => R
    ) => (arg1: T1, arg2: T2) => R | undefined = undefined as any;
    private readonly _dart_getErrorCallback: () => (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => IAsyncError | undefined | undefined = undefined as any;
    private readonly _dart_getScheduleMicrotask: () => (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: () => void
    ) => void | undefined = undefined as any;
    private readonly _dart_getCreateTimer: () => (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        duration: IDuration,
        f: () => void
    ) => ITimer | undefined = undefined as any;
    private readonly _dart_getCreatePeriodicTimer: () => (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        period: IDuration,
        f: (timer: ITimer) => void
    ) => ITimer | undefined = undefined as any;
    private readonly _dart_getPrint: () => (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        line: string
    ) => void | undefined = undefined as any;
    private readonly _dart_getFork: () => (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        specification?: IZoneSpecification | undefined,
        zoneValues?: IMap<Object | undefined, Object | undefined> | undefined
    ) => IZone | undefined = undefined as any;
    public getHandleUncaughtError(): (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        error: Object,
        stackTrace: IStackTrace
    ) => void | undefined {
        return this._dart_getHandleUncaughtError();
    }
    public getRun(): <R>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: () => R
    ) => R | undefined {
        return this._dart_getRun();
    }
    public getRunUnary(): <R, T>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: (arg: T) => R,
        arg: T
    ) => R | undefined {
        return this._dart_getRunUnary();
    }
    public getRunBinary(): <R, T1, T2>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: (arg1: T1, arg2: T2) => R,
        arg1: T1,
        arg2: T2
    ) => R | undefined {
        return this._dart_getRunBinary();
    }
    public getRegisterCallback(): <R>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: () => R
    ) => () => R | undefined {
        return this._dart_getRegisterCallback();
    }
    public getRegisterUnaryCallback(): <R, T>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: (arg: T) => R
    ) => (arg: T) => R | undefined {
        return this._dart_getRegisterUnaryCallback();
    }
    public getRegisterBinaryCallback(): <R, T1, T2>(
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: (arg1: T1, arg2: T2) => R
    ) => (arg1: T1, arg2: T2) => R | undefined {
        return this._dart_getRegisterBinaryCallback();
    }
    public getErrorCallback(): (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => IAsyncError | undefined | undefined {
        return this._dart_getErrorCallback();
    }
    public getScheduleMicrotask(): (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        f: () => void
    ) => void | undefined {
        return this._dart_getScheduleMicrotask();
    }
    public getCreateTimer(): (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        duration: IDuration,
        f: () => void
    ) => ITimer | undefined {
        return this._dart_getCreateTimer();
    }
    public getCreatePeriodicTimer(): (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        period: IDuration,
        f: (timer: ITimer) => void
    ) => ITimer | undefined {
        return this._dart_getCreatePeriodicTimer();
    }
    public getPrint(): (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        line: string
    ) => void | undefined {
        return this._dart_getPrint();
    }
    public getFork(): (
        self: IZone,
        parent: IZoneDelegate,
        zone: IZone,
        specification?: IZoneSpecification | undefined,
        zoneValues?: IMap<Object | undefined, Object | undefined> | undefined
    ) => IZone | undefined {
        return this._dart_getFork();
    }
}
