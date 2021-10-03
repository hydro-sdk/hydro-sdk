import { IStream } from "./stream";
import { IStreamTransformer } from "./streamTransformer";
declare const dart: {
    async: {
        streamTransformerBase: <S, T>(
            this: void,
            streamTransformerBase: IStreamTransformerBase<S, T>
        ) => IStreamTransformerBase<S, T>;
    };
};
export interface IStreamTransformerBase<S, T> {
    cast: <RS, RT>() => IStreamTransformer<RS, RT>;
    bind: (stream: IStream<S>) => IStream<T>;
    toString: () => string;
    getHashCode: () => number;
}
export class StreamTransformerBase<S, T> implements IStreamTransformer<S, T> {
    public constructor() {
        dart.async.streamTransformerBase(this);
    }
    private readonly _dart_cast: <RS, RT>() => IStreamTransformer<RS, RT> =
        undefined as any;
    private readonly _dart_bind: (stream: IStream<S>) => IStream<T> =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public cast<RS, RT>(): IStreamTransformer<RS, RT> {
        return this._dart_cast();
    }
    public bind(stream: IStream<S>): IStream<T> {
        return this._dart_bind(stream);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
