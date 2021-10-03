import { IEventSink } from "./eventSink";
import { IStream } from "./stream";
import { IStreamTransformer } from "./streamTransformer";
import { IStreamTransformerBase } from "./streamTransformerBase";
declare const dart: {
    async: {
        _streamSinkTransformer: <S, T>(
            this: void,
            _streamSinkTransformer: I_StreamSinkTransformer<S, T>,
            _sinkMapper: (output: IEventSink<T>) => IEventSink<S>
        ) => I_StreamSinkTransformer<S, T>;
    };
};
export interface I_StreamSinkTransformer<S, T> {
    bind: (stream: IStream<S>) => IStream<T>;
    cast: <RS, RT>() => IStreamTransformer<RS, RT>;
    toString: () => string;
    getHashCode: () => number;
}
export class _StreamSinkTransformer<S, T>
    implements IStreamTransformerBase<S, T>, IStreamTransformer<S, T>
{
    public constructor(_sinkMapper: (output: IEventSink<T>) => IEventSink<S>) {
        dart.async._streamSinkTransformer(this, _sinkMapper);
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
