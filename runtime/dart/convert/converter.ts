import { IStream } from "../async/stream";
import { IStreamTransformer } from "../async/streamTransformer";
import { IStreamTransformerBase } from "../async/streamTransformerBase";
import { ISink } from "../core/sink";
declare const dart: {
    convert: {
        converter: <S, T>(
            this: void,
            converter: IConverter<S, T>
        ) => IConverter<S, T>;
        converterCastFrom: <SS, ST, TS, TT>(
            source: IConverter<SS, ST>
        ) => IConverter<TS, TT>;
    };
};
export interface IConverter<S, T> {
    convert: (input: S) => T;
    fuse: <TT>(other: IConverter<T, TT>) => IConverter<S, TT>;
    startChunkedConversion: (sink: ISink<T>) => ISink<S>;
    bind: (stream: IStream<S>) => IStream<T>;
    cast: <RS, RT>() => IConverter<RS, RT>;
    toString: () => string;
    getHashCode: () => number;
}
export class Converter<S, T>
    implements IStreamTransformerBase<S, T>, IStreamTransformer<S, T>
{
    public constructor() {
        dart.convert.converter(this);
    }
    public static castFrom<SS, ST, TS, TT>(
        source: IConverter<SS, ST>
    ): IConverter<TS, TT> {
        return dart.convert.converterCastFrom(source);
    }
    private readonly _dart_convert: (input: S) => T = undefined as any;
    private readonly _dart_fuse: <TT>(
        other: IConverter<T, TT>
    ) => IConverter<S, TT> = undefined as any;
    private readonly _dart_startChunkedConversion: (
        sink: ISink<T>
    ) => ISink<S> = undefined as any;
    private readonly _dart_bind: (stream: IStream<S>) => IStream<T> =
        undefined as any;
    private readonly _dart_cast: <RS, RT>() => IConverter<RS, RT> =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public convert(input: S): T {
        return this._dart_convert(input);
    }
    public fuse<TT>(other: IConverter<T, TT>): IConverter<S, TT> {
        return this._dart_fuse(other);
    }
    public startChunkedConversion(sink: ISink<T>): ISink<S> {
        return this._dart_startChunkedConversion(sink);
    }
    public bind(stream: IStream<S>): IStream<T> {
        return this._dart_bind(stream);
    }
    public cast<RS, RT>(): IConverter<RS, RT> {
        return this._dart_cast();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
