import { IFuture } from "../async/future";
import { IStream } from "../async/stream";
import { IList } from "../core/list";
import { ICodec } from "./codec";
import { IConverter } from "./converter";
declare const dart: {
    convert: {
        encoding: (this: void, encoding: IEncoding) => IEncoding;
        encodingGetByName: (name?: string | undefined) => IEncoding | undefined;
    };
};
export interface IEncoding {
    getEncoder: () => IConverter<string, IList<number>>;
    getDecoder: () => IConverter<IList<number>, string>;
    decodeStream: (byteStream: IStream<IList<number>>) => IFuture<string>;
    getName: () => string;
    encode: (input: string) => IList<number>;
    decode: (encoded: IList<number>) => string;
    fuse: <R>(other: ICodec<IList<number>, R>) => ICodec<string, R>;
    getInverted: () => ICodec<IList<number>, string>;
    toString: () => string;
    getHashCode: () => number;
}
export class Encoding implements ICodec<string, IList<number>> {
    public constructor() {
        dart.convert.encoding(this);
    }
    public static getByName(name?: string | undefined): IEncoding | undefined {
        return dart.convert.encodingGetByName(name);
    }
    private readonly _dart_getEncoder: () => IConverter<string, IList<number>> =
        undefined as any;
    private readonly _dart_getDecoder: () => IConverter<IList<number>, string> =
        undefined as any;
    private readonly _dart_decodeStream: (
        byteStream: IStream<IList<number>>
    ) => IFuture<string> = undefined as any;
    private readonly _dart_getName: () => string = undefined as any;
    private readonly _dart_encode: (input: string) => IList<number> =
        undefined as any;
    private readonly _dart_decode: (encoded: IList<number>) => string =
        undefined as any;
    private readonly _dart_fuse: <R>(
        other: ICodec<IList<number>, R>
    ) => ICodec<string, R> = undefined as any;
    private readonly _dart_getInverted: () => ICodec<IList<number>, string> =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getEncoder(): IConverter<string, IList<number>> {
        return this._dart_getEncoder();
    }
    public getDecoder(): IConverter<IList<number>, string> {
        return this._dart_getDecoder();
    }
    public decodeStream(byteStream: IStream<IList<number>>): IFuture<string> {
        return this._dart_decodeStream(byteStream);
    }
    public getName(): string {
        return this._dart_getName();
    }
    public encode(input: string): IList<number> {
        return this._dart_encode(input);
    }
    public decode(encoded: IList<number>): string {
        return this._dart_decode(encoded);
    }
    public fuse<R>(other: ICodec<IList<number>, R>): ICodec<string, R> {
        return this._dart_fuse(other);
    }
    public getInverted(): ICodec<IList<number>, string> {
        return this._dart_getInverted();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
