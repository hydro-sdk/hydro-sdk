import { ISink } from "../core/sink";
import { IStackTrace } from "../core/stackTrace";
import { IEventSink } from "./eventSink";
import { IFuture } from "./future";
import { IFutureOr } from "./futureOr";
import { IStream } from "./stream";
import { IStreamConsumer } from "./streamConsumer";
import { IStreamSink } from "./streamSink";
declare const dart: {
    async: {
        streamController: <T>(
            this: void,
            streamController: IStreamController<T>,
            props: {
                onCancel?: () => IFutureOr<void> | undefined;
                onListen?: () => void | undefined;
                onPause?: () => void | undefined;
                onResume?: () => void | undefined;
                sync: boolean;
            }
        ) => IStreamController<T>;
        streamControllerBroadcast: <T>(props: {
            onCancel?: () => void | undefined;
            onListen?: () => void | undefined;
            sync: boolean;
        }) => IStreamController<T>;
    };
};
export interface IStreamController<T> {
    getStream: () => IStream<T>;
    getSink: () => IStreamSink<T>;
    getIsClosed: () => boolean;
    getIsPaused: () => boolean;
    getHasListener: () => boolean;
    add: (event: T) => void;
    addError: (error: Object, stackTrace?: IStackTrace | undefined) => void;
    close: () => IFuture<any>;
    getDone: () => IFuture<any>;
    addStream: (
        source: IStream<T>,
        props?: { cancelOnError?: boolean | undefined }
    ) => IFuture<any>;
    toString: () => string;
    getHashCode: () => number;
}
export class StreamController<T>
    implements IStreamSink<T>, IEventSink<T>, IStreamConsumer<T>, ISink<T>
{
    public constructor(props: {
        onCancel?: () => IFutureOr<void> | undefined;
        onListen?: () => void | undefined;
        onPause?: () => void | undefined;
        onResume?: () => void | undefined;
        sync?: boolean;
    }) {
        dart.async.streamController(this, {
            ...streamControllerDefaultProps,
            ...props,
        });
    }
    public static broadcast<T>(props: {
        onCancel?: () => void | undefined;
        onListen?: () => void | undefined;
        sync?: boolean;
    }): IStreamController<T> {
        return dart.async.streamControllerBroadcast({
            ...broadcastDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getStream: () => IStream<T> = undefined as any;
    private readonly _dart_getSink: () => IStreamSink<T> = undefined as any;
    private readonly _dart_getIsClosed: () => boolean = undefined as any;
    private readonly _dart_getIsPaused: () => boolean = undefined as any;
    private readonly _dart_getHasListener: () => boolean = undefined as any;
    private readonly _dart_add: (event: T) => void = undefined as any;
    private readonly _dart_addError: (
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => void = undefined as any;
    private readonly _dart_close: () => IFuture<any> = undefined as any;
    private readonly _dart_getDone: () => IFuture<any> = undefined as any;
    private readonly _dart_addStream: (
        source: IStream<T>,
        props?: { cancelOnError?: boolean | undefined }
    ) => IFuture<any> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
    public add(event: T): void {
        return this._dart_add(event);
    }
    public addError(error: Object, stackTrace?: IStackTrace | undefined): void {
        return this._dart_addError(error, stackTrace);
    }
    public close(): IFuture<any> {
        return this._dart_close();
    }
    public getDone(): IFuture<any> {
        return this._dart_getDone();
    }
    public addStream(
        source: IStream<T>,
        props?: { cancelOnError?: boolean | undefined }
    ): IFuture<any> {
        return this._dart_addStream(source, props);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const streamControllerDefaultProps = {
    sync: false,
};
const broadcastDefaultProps = {
    sync: false,
};
