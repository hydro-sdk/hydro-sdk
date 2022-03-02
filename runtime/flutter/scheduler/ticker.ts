import { IDuration } from "../../dart/core/duration";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { ITickerFuture } from "./tickerFuture";
declare const flutter: {
    scheduler: {
        ticker: (
            this: void,
            ticker: ITicker,
            _onTick: (elapsed: IDuration) => void,
            props?: { debugLabel?: string | undefined }
        ) => ITicker;
    };
};
export interface ITicker {
    debugLabel: string | undefined;
    getMuted: () => boolean;
    setMuted: (value: boolean) => void;
    getIsTicking: () => boolean;
    getIsActive: () => boolean;
    start: () => ITickerFuture;
    describeForError: (name: string) => IDiagnosticsNode;
    stop: (props: { canceled: boolean }) => void;
    getScheduled: () => boolean;
    getShouldScheduleTick: () => boolean;
    scheduleTick: (props: { rescheduling: boolean }) => void;
    unscheduleTick: () => void;
    absorbTicker: (originalTicker: ITicker) => void;
    dispose: () => void;
    toString: (props: { debugIncludeStack: boolean }) => string;
}
export class Ticker {
    public readonly debugLabel: string | undefined = undefined as any;
    public constructor(
        _onTick: (elapsed: IDuration) => void,
        props?: { debugLabel?: string | undefined }
    ) {
        flutter.scheduler.ticker(this, _onTick, props);
    }
    private readonly _dart_getMuted: () => boolean = undefined as any;
    private readonly _dart_setMuted: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getIsTicking: () => boolean = undefined as any;
    private readonly _dart_getIsActive: () => boolean = undefined as any;
    private readonly _dart_start: () => ITickerFuture = undefined as any;
    private readonly _dart_describeForError: (
        name: string
    ) => IDiagnosticsNode = undefined as any;
    private readonly _dart_stop: (props: { canceled: boolean }) => void =
        undefined as any;
    private readonly _dart_getScheduled: () => boolean = undefined as any;
    private readonly _dart_getShouldScheduleTick: () => boolean =
        undefined as any;
    private readonly _dart_scheduleTick: (props: {
        rescheduling: boolean;
    }) => void = undefined as any;
    private readonly _dart_unscheduleTick: () => void = undefined as any;
    private readonly _dart_absorbTicker: (originalTicker: ITicker) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: (props: {
        debugIncludeStack: boolean;
    }) => string = undefined as any;
    public getMuted(): boolean {
        return this._dart_getMuted();
    }
    public setMuted(value: boolean): void {
        return this._dart_setMuted(value);
    }
    public getIsTicking(): boolean {
        return this._dart_getIsTicking();
    }
    public getIsActive(): boolean {
        return this._dart_getIsActive();
    }
    public start(): ITickerFuture {
        return this._dart_start();
    }
    public describeForError(name: string): IDiagnosticsNode {
        return this._dart_describeForError(name);
    }
    public stop(props: { canceled?: boolean }): void {
        return this._dart_stop({
            ...stopDefaultProps,
            ...props,
        });
    }
    public getScheduled(): boolean {
        return this._dart_getScheduled();
    }
    public getShouldScheduleTick(): boolean {
        return this._dart_getShouldScheduleTick();
    }
    public scheduleTick(props: { rescheduling?: boolean }): void {
        return this._dart_scheduleTick({
            ...scheduleTickDefaultProps,
            ...props,
        });
    }
    public unscheduleTick(): void {
        return this._dart_unscheduleTick();
    }
    public absorbTicker(originalTicker: ITicker): void {
        return this._dart_absorbTicker(originalTicker);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public toString(props: { debugIncludeStack?: boolean }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
}
const stopDefaultProps = {
    canceled: false,
};
const scheduleTickDefaultProps = {
    rescheduling: false,
};
const toStringDefaultProps = {
    debugIncludeStack: false,
};
