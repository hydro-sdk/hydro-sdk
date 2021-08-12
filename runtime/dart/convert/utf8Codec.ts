import { IFuture } from "../async/future";
import { IStream } from "../async/stream";
import { IList } from "../core/list";
import { ICodec } from "./codec";
import { IEncoding } from "./encoding";
import { IUtf8Decoder } from "./utf8Decoder";
import { IUtf8Encoder } from "./utf8Encoder";
declare const dart: {
    convert: {
        utf8Codec: (
            this: void,
            utf8Codec: IUtf8Codec,
            props: { allowMalformed: boolean }
        ) => IUtf8Codec;
    };
};
export interface IUtf8Codec {
    getName: () => string;
    decode: (
        codeUnits: IList<number>,
        props: { allowMalformed?: boolean | undefined }
    ) => string;
    getEncoder: () => IUtf8Encoder;
    getDecoder: () => IUtf8Decoder;
    decodeStream: (byteStream: IStream<IList<number>>) => IFuture<string>;
    encode: (input: string) => IList<number>;
    fuse: <R>(other: ICodec<IList<number>, R>) => ICodec<string, R>;
    getInverted: () => ICodec<IList<number>, string>;
    toString: () => string;
    getHashCode: () => number;
}
export class Utf8Codec implements IEncoding {
    public constructor(props: { allowMalformed?: boolean }) {
        dart.convert.utf8Codec(this, {
            ...utf8CodecDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getName: () => string = undefined as any;
    private readonly _dart_decode: (
        codeUnits: IList<number>,
        props: { allowMalformed?: boolean | undefined }
    ) => string = undefined as any;
    private readonly _dart_getEncoder: () => IUtf8Encoder = undefined as any;
    private readonly _dart_getDecoder: () => IUtf8Decoder = undefined as any;
    private readonly _dart_decodeStream: (
        byteStream: IStream<IList<number>>
    ) => IFuture<string> = undefined as any;
    private readonly _dart_encode: (input: string) => IList<number> =
        undefined as any;
    private readonly _dart_fuse: <R>(
        other: ICodec<IList<number>, R>
    ) => ICodec<string, R> = undefined as any;
    private readonly _dart_getInverted: () => ICodec<IList<number>, string> =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getName(): string {
        return this._dart_getName();
    }
    public decode(
        codeUnits: IList<number>,
        props: { allowMalformed?: boolean | undefined }
    ): string {
        return this._dart_decode(codeUnits, props);
    }
    public getEncoder(): IUtf8Encoder {
        return this._dart_getEncoder();
    }
    public getDecoder(): IUtf8Decoder {
        return this._dart_getDecoder();
    }
    public decodeStream(byteStream: IStream<IList<number>>): IFuture<string> {
        return this._dart_decodeStream(byteStream);
    }
    public encode(input: string): IList<number> {
        return this._dart_encode(input);
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
const utf8CodecDefaultProps = {
    allowMalformed: false,
};
