import { IStream } from "../async/stream";
import { IStreamTransformer } from "../async/streamTransformer";
import { IList } from "../core/list";
import { ISink } from "../core/sink";
import { IByteConversionSink } from "./byteConversionSink";
import { IConverter } from "./converter";
declare const dart: {
    convert: {
        utf8Decoder: (
            this: void,
            utf8Decoder: IUtf8Decoder,
            props: { allowMalformed: boolean }
        ) => IUtf8Decoder;
    };
};
export interface IUtf8Decoder {
    convert: (
        codeUnits: IList<number>,
        start: number,
        end?: number | undefined
    ) => string;
    startChunkedConversion: (sink: ISink<string>) => IByteConversionSink;
    bind: (stream: IStream<IList<number>>) => IStream<string>;
    fuse: <T>(next: IConverter<string, T>) => IConverter<IList<number>, T>;
    cast: <RS, RT>() => IConverter<RS, RT>;
    toString: () => string;
    getHashCode: () => number;
}
export class Utf8Decoder
    implements
        IConverter<IList<number>, string>,
        IStreamTransformer<IList<number>, string>
{
    public constructor(props: { allowMalformed?: boolean }) {
        dart.convert.utf8Decoder(this, {
            ...utf8DecoderDefaultProps,
            ...props,
        });
    }
    private readonly _dart_convert: (
        codeUnits: IList<number>,
        start: number,
        end?: number | undefined
    ) => string = undefined as any;
    private readonly _dart_startChunkedConversion: (
        sink: ISink<string>
    ) => IByteConversionSink = undefined as any;
    private readonly _dart_bind: (
        stream: IStream<IList<number>>
    ) => IStream<string> = undefined as any;
    private readonly _dart_fuse: <T>(
        next: IConverter<string, T>
    ) => IConverter<IList<number>, T> = undefined as any;
    private readonly _dart_cast: <RS, RT>() => IConverter<RS, RT> =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public convert(
        codeUnits: IList<number>,
        start: number = 0,
        end?: number | undefined
    ): string {
        return this._dart_convert(codeUnits, start, end);
    }
    public startChunkedConversion(sink: ISink<string>): IByteConversionSink {
        return this._dart_startChunkedConversion(sink);
    }
    public bind(stream: IStream<IList<number>>): IStream<string> {
        return this._dart_bind(stream);
    }
    public fuse<T>(next: IConverter<string, T>): IConverter<IList<number>, T> {
        return this._dart_fuse(next);
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
const utf8DecoderDefaultProps = {
    allowMalformed: false,
};
