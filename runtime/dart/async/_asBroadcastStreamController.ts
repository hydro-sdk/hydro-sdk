import { ISink } from "../core/sink";
import { IStackTrace } from "../core/stackTrace";
import { I_EventDispatch } from "./_eventDispatch";
import { I_EventSink } from "./_eventSink";
import { I_StreamControllerBase } from "./_streamControllerBase";
import { I_StreamControllerLifecycle } from "./_streamControllerLifecycle";
import { I_SyncBroadcastStreamController } from "./_syncBroadcastStreamController";
import { IEventSink } from "./eventSink";
import { IFuture } from "./future";
import { IFutureOr } from "./futureOr";
import { IStream } from "./stream";
import { IStreamConsumer } from "./streamConsumer";
import { IStreamController } from "./streamController";
import { IStreamSink } from "./streamSink";
import { ISynchronousStreamController } from "./synchronousStreamController";
declare const dart: {
    async: {
        _asBroadcastStreamController: <T>(
            this: void,
            _asBroadcastStreamController: I_AsBroadcastStreamController<T>,
            onListen?: () => void,
            onCancel?: () => void
        ) => I_AsBroadcastStreamController<T>;
    };
};
export interface I_AsBroadcastStreamController<T> {
    add: (data: T) => void;
    addError: (error: Object, stackTrace?: IStackTrace | undefined) => void;
    close: () => IFuture<any>;
    toString: () => string;
    getHashCode: () => number;
    addStream: (
        source: IStream<T>,
        props?: { cancelOnError?: boolean | undefined }
    ) => IFuture<any>;
    getOnListen: () => () => void | undefined;
    setOnListen: (_onListen?: () => void) => void;
    getOnPause: () => () => void | undefined;
    setOnPause: (_onPause?: () => void) => void;
    getOnResume: () => () => void | undefined;
    setOnResume: (_onResume?: () => void) => void;
    getOnCancel: () => () => IFutureOr<void> | undefined;
    setOnCancel: (_onCancel?: () => IFutureOr<void>) => void;
    getStream: () => IStream<T>;
    getSink: () => IStreamSink<T>;
    getIsClosed: () => boolean;
    getIsPaused: () => boolean;
    getHasListener: () => boolean;
    getDone: () => IFuture<any>;
}
export class _AsBroadcastStreamController<T>
    implements
        I_SyncBroadcastStreamController<T>,
        I_EventDispatch<T>,
        ISynchronousStreamController<T>,
        Omit<
            IStreamController<T>,
            | "onListen"
            | "onListen="
            | "onPause"
            | "onPause="
            | "onResume"
            | "onResume="
            | "onCancel"
            | "onCancel="
        >,
        IStreamSink<T>,
        IEventSink<T>,
        IStreamConsumer<T>,
        ISink<T>,
        I_StreamControllerBase<T>,
        I_StreamControllerLifecycle<T>,
        I_EventSink<T>
{
    public constructor(onListen?: () => void, onCancel?: () => void) {
        dart.async._asBroadcastStreamController(this, onListen, onCancel);
    }
    private readonly _dart_add: (data: T) => void = undefined as any;
    private readonly _dart_addError: (
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => void = undefined as any;
    private readonly _dart_close: () => IFuture<any> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_addStream: (
        source: IStream<T>,
        props?: { cancelOnError?: boolean | undefined }
    ) => IFuture<any> = undefined as any;
    private readonly _dart_getOnListen: () => () => void | undefined =
        undefined as any;
    private readonly _dart_setOnListen: (_onListen?: () => void) => void =
        undefined as any;
    private readonly _dart_getOnPause: () => () => void | undefined =
        undefined as any;
    private readonly _dart_setOnPause: (_onPause?: () => void) => void =
        undefined as any;
    private readonly _dart_getOnResume: () => () => void | undefined =
        undefined as any;
    private readonly _dart_setOnResume: (_onResume?: () => void) => void =
        undefined as any;
    private readonly _dart_getOnCancel: () => () =>
        | IFutureOr<void>
        | undefined = undefined as any;
    private readonly _dart_setOnCancel: (
        _onCancel?: () => IFutureOr<void>
    ) => void = undefined as any;
    private readonly _dart_getStream: () => IStream<T> = undefined as any;
    private readonly _dart_getSink: () => IStreamSink<T> = undefined as any;
    private readonly _dart_getIsClosed: () => boolean = undefined as any;
    private readonly _dart_getIsPaused: () => boolean = undefined as any;
    private readonly _dart_getHasListener: () => boolean = undefined as any;
    private readonly _dart_getDone: () => IFuture<any> = undefined as any;
    public add(data: T): void {
        return this._dart_add(data);
    }
    public addError(error: Object, stackTrace?: IStackTrace | undefined): void {
        return this._dart_addError(error, stackTrace);
    }
    public close(): IFuture<any> {
        return this._dart_close();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public addStream(
        source: IStream<T>,
        props?: { cancelOnError?: boolean | undefined }
    ): IFuture<any> {
        return this._dart_addStream(source, props);
    }
    public getOnListen(): () => void | undefined {
        return this._dart_getOnListen();
    }
    public setOnListen(_onListen?: () => void): void {
        return this._dart_setOnListen(_onListen);
    }
    public getOnPause(): () => void | undefined {
        return this._dart_getOnPause();
    }
    public setOnPause(_onPause?: () => void): void {
        return this._dart_setOnPause(_onPause);
    }
    public getOnResume(): () => void | undefined {
        return this._dart_getOnResume();
    }
    public setOnResume(_onResume?: () => void): void {
        return this._dart_setOnResume(_onResume);
    }
    public getOnCancel(): () => IFutureOr<void> | undefined {
        return this._dart_getOnCancel();
    }
    public setOnCancel(_onCancel?: () => IFutureOr<void>): void {
        return this._dart_setOnCancel(_onCancel);
    }
    public getStream(): IStream<T> {
        return this._dart_getStream();
    }
    public getSink(): IStreamSink<T> {
        return this._dart_getSink();
    }
    public getIsClosed(): boolean {
        return this._dart_getIsClosed();
    }
    public getIsPaused(): boolean {
        return this._dart_getIsPaused();
    }
    public getHasListener(): boolean {
        return this._dart_getHasListener();
    }
    public getDone(): IFuture<any> {
        return this._dart_getDone();
    }
}
