import { ISink } from "../core/sink";
import { IStackTrace } from "../core/stackTrace";
import { I_BroadcastStreamController } from "./_broadcastStreamController";
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
        _asyncBroadcastStreamController: <T>(
            this: void,
            _asyncBroadcastStreamController: I_AsyncBroadcastStreamController<T>,
            onListen?: () => void,
            onCancel?: () => void
        ) => I_AsyncBroadcastStreamController<T>;
    };
};
export interface I_AsyncBroadcastStreamController<T> {
    add: (data: T) => void;
    addError: (error: Object, stackTrace?: IStackTrace | undefined) => void;
    close: () => IFuture<any>;
    addStream: (
        stream: IStream<T>,
        props?: { cancelOnError?: boolean | undefined }
    ) => IFuture<any>;
    getOnListen: () => () => void | undefined;
    setOnListen: (_onListen?: () => void) => void;
    getOnCancel: () => () => IFutureOr<void> | undefined;
    setOnCancel: (_onCancel?: () => IFutureOr<void>) => void;
    getOnPause: () => () => void;
    setOnPause: (onPauseHandler?: () => void) => void;
    getOnResume: () => () => void;
    setOnResume: (onResumeHandler?: () => void) => void;
    getStream: () => IStream<T>;
    getSink: () => IStreamSink<T>;
    getIsClosed: () => boolean;
    getIsPaused: () => boolean;
    getHasListener: () => boolean;
    getDone: () => IFuture<void>;
    toString: () => string;
    getHashCode: () => number;
}
export class _AsyncBroadcastStreamController<T>
    implements
        Omit<
            I_BroadcastStreamController<T>,
            "onListen" | "onListen=" | "onCancel" | "onCancel="
        >,
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
    public constructor(onListen?: () => void, onCancel?: () => void) {
        dart.async._asyncBroadcastStreamController(this, onListen, onCancel);
    }
    private readonly _dart_add: (data: T) => void = undefined as any;
    private readonly _dart_addError: (
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => void = undefined as any;
    private readonly _dart_close: () => IFuture<any> = undefined as any;
    private readonly _dart_addStream: (
        stream: IStream<T>,
        props?: { cancelOnError?: boolean | undefined }
    ) => IFuture<any> = undefined as any;
    private readonly _dart_getOnListen: () => () => void | undefined =
        undefined as any;
    private readonly _dart_setOnListen: (_onListen?: () => void) => void =
        undefined as any;
    private readonly _dart_getOnCancel: () => () =>
        | IFutureOr<void>
        | undefined = undefined as any;
    private readonly _dart_setOnCancel: (
        _onCancel?: () => IFutureOr<void>
    ) => void = undefined as any;
    private readonly _dart_getOnPause: () => () => void = undefined as any;
    private readonly _dart_setOnPause: (onPauseHandler?: () => void) => void =
        undefined as any;
    private readonly _dart_getOnResume: () => () => void = undefined as any;
    private readonly _dart_setOnResume: (onResumeHandler?: () => void) => void =
        undefined as any;
    private readonly _dart_getStream: () => IStream<T> = undefined as any;
    private readonly _dart_getSink: () => IStreamSink<T> = undefined as any;
    private readonly _dart_getIsClosed: () => boolean = undefined as any;
    private readonly _dart_getIsPaused: () => boolean = undefined as any;
    private readonly _dart_getHasListener: () => boolean = undefined as any;
    private readonly _dart_getDone: () => IFuture<void> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public add(data: T): void {
        return this._dart_add(data);
    }
    public addError(error: Object, stackTrace?: IStackTrace | undefined): void {
        return this._dart_addError(error, stackTrace);
    }
    public close(): IFuture<any> {
        return this._dart_close();
    }
    public addStream(
        stream: IStream<T>,
        props?: { cancelOnError?: boolean | undefined }
    ): IFuture<any> {
        return this._dart_addStream(stream, props);
    }
    public getOnListen(): () => void | undefined {
        return this._dart_getOnListen();
    }
    public setOnListen(_onListen?: () => void): void {
        return this._dart_setOnListen(_onListen);
    }
    public getOnCancel(): () => IFutureOr<void> | undefined {
        return this._dart_getOnCancel();
    }
    public setOnCancel(_onCancel?: () => IFutureOr<void>): void {
        return this._dart_setOnCancel(_onCancel);
    }
    public getOnPause(): () => void {
        return this._dart_getOnPause();
    }
    public setOnPause(onPauseHandler?: () => void): void {
        return this._dart_setOnPause(onPauseHandler);
    }
    public getOnResume(): () => void {
        return this._dart_getOnResume();
    }
    public setOnResume(onResumeHandler?: () => void): void {
        return this._dart_setOnResume(onResumeHandler);
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
    public getDone(): IFuture<void> {
        return this._dart_getDone();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
