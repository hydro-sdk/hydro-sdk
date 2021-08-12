import { IStream } from "../async/stream";
import { IStreamTransformer } from "../async/streamTransformer";
import { IList } from "../core/list";
import { ISink } from "../core/sink";
import { IUint8List } from "../typed_data/uint8List";
import { IConverter } from "./converter";
import { IStringConversionSink } from "./stringConversionSink";
declare const dart: {
    convert: {
        utf8Encoder: (this: void, utf8Encoder: IUtf8Encoder) => IUtf8Encoder;
    };
};
export interface IUtf8Encoder {
    convert: (
        string: string,
        start: number,
        end?: number | undefined
    ) => IUint8List;
    startChunkedConversion: (
        sink: ISink<IList<number>>
    ) => IStringConversionSink;
    bind: (stream: IStream<string>) => IStream<IList<number>>;
    fuse: <TT>(other: IConverter<IList<number>, TT>) => IConverter<string, TT>;
    cast: <RS, RT>() => IConverter<RS, RT>;
    toString: () => string;
    getHashCode: () => number;
}
export class Utf8Encoder
    implements
        IConverter<string, IList<number>>,
        IStreamTransformer<string, IList<number>>
{
    public constructor() {
        dart.convert.utf8Encoder(this);
    }
    private readonly _dart_convert: (
        string: string,
        start: number,
        end?: number | undefined
    ) => IUint8List = undefined as any;
    private readonly _dart_startChunkedConversion: (
        sink: ISink<IList<number>>
    ) => IStringConversionSink = undefined as any;
    private readonly _dart_bind: (
        stream: IStream<string>
    ) => IStream<IList<number>> = undefined as any;
    private readonly _dart_fuse: <TT>(
        other: IConverter<IList<number>, TT>
    ) => IConverter<string, TT> = undefined as any;
    private readonly _dart_cast: <RS, RT>() => IConverter<RS, RT> =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public convert(
        string: string,
        start: number = 0,
        end?: number | undefined
    ): IUint8List {
        return this._dart_convert(string, start, end);
    }
    public startChunkedConversion(
        sink: ISink<IList<number>>
    ): IStringConversionSink {
        return this._dart_startChunkedConversion(sink);
    }
    public bind(stream: IStream<string>): IStream<IList<number>> {
        return this._dart_bind(stream);
    }
    public fuse<TT>(
        other: IConverter<IList<number>, TT>
    ): IConverter<string, TT> {
        return this._dart_fuse(other);
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
