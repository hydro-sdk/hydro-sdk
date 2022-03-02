import { IDuration } from "../../dart/core/duration";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { ITicker } from "../scheduler/ticker";
import { ITickerFuture } from "../scheduler/tickerFuture";
import { IStatefulWidget } from "./statefulWidget";
import { ITickerProviderStateMixin } from "./tickerProviderStateMixin";
declare const flutter: {
    widgets: {
        _widgetTicker: (
            this: void,
            _widgetTicker: I_WidgetTicker,
            onTick: (elapsed: IDuration) => void,
            _creator: ITickerProviderStateMixin<IStatefulWidget>,
            props?: { debugLabel?: string | undefined }
        ) => I_WidgetTicker;
    };
};
export interface I_WidgetTicker {
    debugLabel: string | undefined;
    dispose: () => void;
    start: () => ITickerFuture;
    describeForError: (name: string) => IDiagnosticsNode;
    stop: (props: { canceled: boolean }) => void;
    scheduleTick: (props: { rescheduling: boolean }) => void;
    unscheduleTick: () => void;
    absorbTicker: (originalTicker: ITicker) => void;
    toString: (props: { debugIncludeStack: boolean }) => string;
    getMuted: () => boolean;
    setMuted: (value: boolean) => void;
    getIsTicking: () => boolean;
    getIsActive: () => boolean;
    getScheduled: () => boolean;
    getShouldScheduleTick: () => boolean;
    getHashCode: () => number;
}
export class _WidgetTicker implements ITicker {
    public readonly debugLabel: string | undefined = undefined as any;
    public constructor(
        onTick: (elapsed: IDuration) => void,
        _creator: ITickerProviderStateMixin<IStatefulWidget>,
        props?: { debugLabel?: string | undefined }
    ) {
        flutter.widgets._widgetTicker(this, onTick, _creator, props);
    }
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_start: () => ITickerFuture = undefined as any;
    private readonly _dart_describeForError: (
        name: string
    ) => IDiagnosticsNode = undefined as any;
    private readonly _dart_stop: (props: { canceled: boolean }) => void =
        undefined as any;
    private readonly _dart_scheduleTick: (props: {
        rescheduling: boolean;
    }) => void = undefined as any;
    private readonly _dart_unscheduleTick: () => void = undefined as any;
    private readonly _dart_absorbTicker: (originalTicker: ITicker) => void =
        undefined as any;
    private readonly _dart_toString: (props: {
        debugIncludeStack: boolean;
    }) => string = undefined as any;
    private readonly _dart_getMuted: () => boolean = undefined as any;
    private readonly _dart_setMuted: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getIsTicking: () => boolean = undefined as any;
    private readonly _dart_getIsActive: () => boolean = undefined as any;
    private readonly _dart_getScheduled: () => boolean = undefined as any;
    private readonly _dart_getShouldScheduleTick: () => boolean =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public dispose(): void {
        return this._dart_dispose();
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
    public toString(props: { debugIncludeStack?: boolean }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
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
    public getScheduled(): boolean {
        return this._dart_getScheduled();
    }
    public getShouldScheduleTick(): boolean {
        return this._dart_getShouldScheduleTick();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
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
