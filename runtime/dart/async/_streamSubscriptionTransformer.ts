import { IStream } from "./stream";
import { IStreamSubscription } from "./streamSubscription";
import { IStreamTransformer } from "./streamTransformer";
import { IStreamTransformerBase } from "./streamTransformerBase";
declare const dart: {
    async: {
        _streamSubscriptionTransformer: <S, T>(
            this: void,
            _streamSubscriptionTransformer: I_StreamSubscriptionTransformer<
                S,
                T
            >,
            _onListen: (
                stream: IStream<S>,
                cancelOnError: boolean
            ) => IStreamSubscription<T>
        ) => I_StreamSubscriptionTransformer<S, T>;
    };
};
export interface I_StreamSubscriptionTransformer<S, T> {
    bind: (stream: IStream<S>) => IStream<T>;
    cast: <RS, RT>() => IStreamTransformer<RS, RT>;
    toString: () => string;
    getHashCode: () => number;
}
export class _StreamSubscriptionTransformer<S, T>
    implements IStreamTransformerBase<S, T>, IStreamTransformer<S, T>
{
    public constructor(
        _onListen: (
            stream: IStream<S>,
            cancelOnError: boolean
        ) => IStreamSubscription<T>
    ) {
        dart.async._streamSubscriptionTransformer(this, _onListen);
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
