import { ISink } from "../core/sink";
import { IStackTrace } from "../core/stackTrace";
import { I_EventDispatch } from "./_eventDispatch";
import { I_EventSink } from "./_eventSink";
import { I_StreamControllerBase } from "./_streamControllerBase";
import { I_StreamControllerLifecycle } from "./_streamControllerLifecycle";
import { IEventSink } from "./eventSink";
import { IFuture } from "./future";
import { IFutureOr } from "./futureOr";
import { IStream } from "./stream";
import { IStreamConsumer } from "./streamConsumer";
import { IStreamController } from "./streamController";
import { IStreamSink } from "./streamSink";
declare const dart: {
    async: {
        _streamController: <T>(
            this: void,
            _streamController: I_StreamController<T>,
            onListen?: () => void,
            onPause?: () => void,
            onResume?: () => void,
            onCancel?: () => IFutureOr<void>
        ) => I_StreamController<T>;
    };
};
export interface I_StreamController<T> {
    getStream: () => IStream<T>;
    getSink: () => IStreamSink<T>;
    getHasListener: () => boolean;
    getIsClosed: () => boolean;
    getIsPaused: () => boolean;
    addStream: (
        source: IStream<T>,
        props?: { cancelOnError?: boolean | undefined }
    ) => IFuture<any>;
    getDone: () => IFuture<void>;
    add: (value: T) => void;
    addError: (error: Object, stackTrace?: IStackTrace | undefined) => void;
    close: () => IFuture<any>;
    getOnListen: () => () => void | undefined;
    setOnListen: (_onListen?: () => void) => void;
    getOnPause: () => () => void | undefined;
    setOnPause: (_onPause?: () => void) => void;
    getOnResume: () => () => void | undefined;
    setOnResume: (_onResume?: () => void) => void;
    getOnCancel: () => () => IFutureOr<void> | undefined;
    setOnCancel: (_onCancel?: () => IFutureOr<void>) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _StreamController<T>
    implements
        I_StreamControllerBase<T>,
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
        I_StreamControllerLifecycle<T>,
        I_EventSink<T>,
        I_EventDispatch<T>,
        IStreamSink<T>,
        IEventSink<T>,
        IStreamConsumer<T>,
        ISink<T>
{
    public static _STATE_INITIAL = 0;
    public static _STATE_SUBSCRIBED = 1;
    public static _STATE_CANCELED = 2;
    public static _STATE_SUBSCRIPTION_MASK = 3;
    public static _STATE_CLOSED = 4;
    public static _STATE_ADDSTREAM = 8;
    public constructor(
        onListen?: () => void,
        onPause?: () => void,
        onResume?: () => void,
        onCancel?: () => IFutureOr<void>
    ) {
        dart.async._streamController(
            this,
            onListen,
            onPause,
            onResume,
            onCancel
        );
    }
    private readonly _dart_getStream: () => IStream<T> = undefined as any;
    private readonly _dart_getSink: () => IStreamSink<T> = undefined as any;
    private readonly _dart_getHasListener: () => boolean = undefined as any;
    private readonly _dart_getIsClosed: () => boolean = undefined as any;
    private readonly _dart_getIsPaused: () => boolean = undefined as any;
    private readonly _dart_addStream: (
        source: IStream<T>,
        props?: { cancelOnError?: boolean | undefined }
    ) => IFuture<any> = undefined as any;
    private readonly _dart_getDone: () => IFuture<void> = undefined as any;
    private readonly _dart_add: (value: T) => void = undefined as any;
    private readonly _dart_addError: (
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => void = undefined as any;
    private readonly _dart_close: () => IFuture<any> = undefined as any;
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
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getStream(): IStream<T> {
        return this._dart_getStream();
    }
    public getSink(): IStreamSink<T> {
        return this._dart_getSink();
    }
    public getHasListener(): boolean {
        return this._dart_getHasListener();
    }
    public getIsClosed(): boolean {
        return this._dart_getIsClosed();
    }
    public getIsPaused(): boolean {
        return this._dart_getIsPaused();
    }
    public addStream(
        source: IStream<T>,
        props?: { cancelOnError?: boolean | undefined }
    ): IFuture<any> {
        return this._dart_addStream(source, props);
    }
    public getDone(): IFuture<void> {
        return this._dart_getDone();
    }
    public add(value: T): void {
        return this._dart_add(value);
    }
    public addError(error: Object, stackTrace?: IStackTrace | undefined): void {
        return this._dart_addError(error, stackTrace);
    }
    public close(): IFuture<any> {
        return this._dart_close();
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
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
