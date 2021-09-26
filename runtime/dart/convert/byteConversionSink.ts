import { IList } from "../core/list";
import { ISink } from "../core/sink";
import { IChunkedConversionSink } from "./chunkedConversionSink";
declare const dart: {
    convert: {
        byteConversionSink: (
            this: void,
            byteConversionSink: IByteConversionSink
        ) => IByteConversionSink;
        byteConversionSinkWithCallback: (
            callback: (accumulated: IList<number>) => void
        ) => IByteConversionSink;
        byteConversionSinkFrom: (
            sink: ISink<IList<number>>
        ) => IByteConversionSink;
    };
};
export interface IByteConversionSink {
    addSlice: (
        chunk: IList<number>,
        start: number,
        end: number,
        isLast: boolean
    ) => void;
    add: (chunk: IList<number>) => void;
    close: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class ByteConversionSink
    implements IChunkedConversionSink<IList<number>>, ISink<IList<number>>
{
    public constructor() {
        dart.convert.byteConversionSink(this);
    }
    public static withCallback(
        callback: (accumulated: IList<number>) => void
    ): IByteConversionSink {
        return dart.convert.byteConversionSinkWithCallback(callback);
    }
    public static from(sink: ISink<IList<number>>): IByteConversionSink {
        return dart.convert.byteConversionSinkFrom(sink);
    }
    private readonly _dart_addSlice: (
        chunk: IList<number>,
        start: number,
        end: number,
        isLast: boolean
    ) => void = undefined as any;
    private readonly _dart_add: (chunk: IList<number>) => void =
        undefined as any;
    private readonly _dart_close: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public addSlice(
        chunk: IList<number>,
        start: number,
        end: number,
        isLast: boolean
    ): void {
        return this._dart_addSlice(chunk, start, end, isLast);
    }
    public add(chunk: IList<number>): void {
        return this._dart_add(chunk);
    }
    public close(): void {
        return this._dart_close();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
