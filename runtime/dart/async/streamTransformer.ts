import { IStackTrace } from "../core/stackTrace";
import { IEventSink } from "./eventSink";
import { IStream } from "./stream";
import { IStreamSubscription } from "./streamSubscription";
declare const dart: {
    async: {
        streamTransformer: <S, T>(
            this: void,
            streamTransformer: IStreamTransformer<S, T>,
            onListen: (
                stream: IStream<S>,
                cancelOnError: boolean
            ) => IStreamSubscription<T>
        ) => IStreamTransformer<S, T>;
        streamTransformerFromHandlers: <S, T>(props?: {
            handleData?: (data: S, sink: IEventSink<T>) => void | undefined;
            handleDone?: (sink: IEventSink<T>) => void | undefined;
            handleError?: (
                error: Object,
                stackTrace: IStackTrace,
                sink: IEventSink<T>
            ) => void | undefined;
        }) => IStreamTransformer<S, T>;
        streamTransformerFromBind: <S, T>(
            bind: (__: IStream<S>) => IStream<T>
        ) => IStreamTransformer<S, T>;
        streamTransformerCastFrom: <SS, ST, TS, TT>(
            source: IStreamTransformer<SS, ST>
        ) => IStreamTransformer<TS, TT>;
    };
};
export interface IStreamTransformer<S, T> {
    bind: (stream: IStream<S>) => IStream<T>;
    cast: <RS, RT>() => IStreamTransformer<RS, RT>;
}
export class StreamTransformer<S, T> {
    public constructor(
        onListen: (
            stream: IStream<S>,
            cancelOnError: boolean
        ) => IStreamSubscription<T>
    ) {
        dart.async.streamTransformer(this, onListen);
    }
    public static fromHandlers<S, T>(props?: {
        handleData?: (data: S, sink: IEventSink<T>) => void | undefined;
        handleDone?: (sink: IEventSink<T>) => void | undefined;
        handleError?: (
            error: Object,
            stackTrace: IStackTrace,
            sink: IEventSink<T>
        ) => void | undefined;
    }): IStreamTransformer<S, T> {
        return dart.async.streamTransformerFromHandlers(props);
    }
    public static fromBind<S, T>(
        bind: (__: IStream<S>) => IStream<T>
    ): IStreamTransformer<S, T> {
        return dart.async.streamTransformerFromBind(bind);
    }
    public static castFrom<SS, ST, TS, TT>(
        source: IStreamTransformer<SS, ST>
    ): IStreamTransformer<TS, TT> {
        return dart.async.streamTransformerCastFrom(source);
    }
    private readonly _dart_bind: (stream: IStream<S>) => IStream<T> =
        undefined as any;
    private readonly _dart_cast: <RS, RT>() => IStreamTransformer<RS, RT> =
        undefined as any;
    public bind(stream: IStream<S>): IStream<T> {
        return this._dart_bind(stream);
    }
    public cast<RS, RT>(): IStreamTransformer<RS, RT> {
        return this._dart_cast();
    }
}
