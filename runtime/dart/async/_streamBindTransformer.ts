import { IStream } from "./stream";
import { IStreamTransformer } from "./streamTransformer";
import { IStreamTransformerBase } from "./streamTransformerBase";
declare const dart: {
    async: {
        _streamBindTransformer: <S, T>(
            this: void,
            _streamBindTransformer: I_StreamBindTransformer<S, T>,
            _bind: (__: IStream<S>) => IStream<T>
        ) => I_StreamBindTransformer<S, T>;
    };
};
export interface I_StreamBindTransformer<S, T> {
    bind: (stream: IStream<S>) => IStream<T>;
    cast: <RS, RT>() => IStreamTransformer<RS, RT>;
    toString: () => string;
    getHashCode: () => number;
}
export class _StreamBindTransformer<S, T>
    implements IStreamTransformerBase<S, T>, IStreamTransformer<S, T>
{
    public constructor(_bind: (__: IStream<S>) => IStream<T>) {
        dart.async._streamBindTransformer(this, _bind);
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
