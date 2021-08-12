import { IConverter } from "./converter";
declare const dart: {
    convert: {
        codec: <S, T>(this: void, codec: ICodec<S, T>) => ICodec<S, T>;
    };
};
export interface ICodec<S, T> {
    encode: (input: S) => T;
    decode: (encoded: T) => S;
    getEncoder: () => IConverter<S, T>;
    getDecoder: () => IConverter<T, S>;
    fuse: <R>(other: ICodec<T, R>) => ICodec<S, R>;
    getInverted: () => ICodec<T, S>;
}
export class Codec<S, T> {
    public constructor() {
        dart.convert.codec(this);
    }
    private readonly _dart_encode: (input: S) => T = undefined as any;
    private readonly _dart_decode: (encoded: T) => S = undefined as any;
    private readonly _dart_getEncoder: () => IConverter<S, T> =
        undefined as any;
    private readonly _dart_getDecoder: () => IConverter<T, S> =
        undefined as any;
    private readonly _dart_fuse: <R>(other: ICodec<T, R>) => ICodec<S, R> =
        undefined as any;
    private readonly _dart_getInverted: () => ICodec<T, S> = undefined as any;
    public encode(input: S): T {
        return this._dart_encode(input);
    }
    public decode(encoded: T): S {
        return this._dart_decode(encoded);
    }
    public getEncoder(): IConverter<S, T> {
        return this._dart_getEncoder();
    }
    public getDecoder(): IConverter<T, S> {
        return this._dart_getDecoder();
    }
    public fuse<R>(other: ICodec<T, R>): ICodec<S, R> {
        return this._dart_fuse(other);
    }
    public getInverted(): ICodec<T, S> {
        return this._dart_getInverted();
    }
}
