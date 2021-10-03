import { IStackTrace } from "../core/stackTrace";
import { I_StreamSinkTransformer } from "./_streamSinkTransformer";
import { IEventSink } from "./eventSink";
import { IStream } from "./stream";
import { IStreamTransformer } from "./streamTransformer";
declare const dart: {
    async: {
        _streamHandlerTransformer: <S, T>(
            this: void,
            _streamHandlerTransformer: I_StreamHandlerTransformer<S, T>,
            props?: {
                handleData?: (data: S, sink: IEventSink<T>) => void | undefined;
                handleDone?: (sink: IEventSink<T>) => void | undefined;
                handleError?: (
                    error: Object,
                    stackTrace: IStackTrace,
                    sink: IEventSink<T>
                ) => void | undefined;
            }
        ) => I_StreamHandlerTransformer<S, T>;
    };
};
export interface I_StreamHandlerTransformer<S, T> {
    bind: (stream: IStream<S>) => IStream<T>;
    cast: <RS, RT>() => IStreamTransformer<RS, RT>;
    toString: () => string;
    getHashCode: () => number;
}
export class _StreamHandlerTransformer<S, T>
    implements I_StreamSinkTransformer<S, T>, IStreamTransformer<S, T>
{
    public constructor(props?: {
        handleData?: (data: S, sink: IEventSink<T>) => void | undefined;
        handleDone?: (sink: IEventSink<T>) => void | undefined;
        handleError?: (
            error: Object,
            stackTrace: IStackTrace,
            sink: IEventSink<T>
        ) => void | undefined;
    }) {
        dart.async._streamHandlerTransformer(this, props);
    }
    private readonly _dart_bind: (stream: IStream<S>) => IStream<T> =
        undefined as any;
    private readonly _dart_cast: <RS, RT>() => IStreamTransformer<RS, RT> =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public bind(stream: IStream<S>): IStream<T> {
        return this._dart_bind(stream);
    }
    public cast<RS, RT>(): IStreamTransformer<RS, RT> {
        return this._dart_cast();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
