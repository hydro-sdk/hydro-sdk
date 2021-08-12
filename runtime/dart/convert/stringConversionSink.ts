import { ISink } from "../core/sink";
import { IStringSink } from "../core/stringSink";
import { IByteConversionSink } from "./byteConversionSink";
import { IChunkedConversionSink } from "./chunkedConversionSink";
import { IClosableStringSink } from "./closableStringSink";
declare const dart: {
    convert: {
        stringConversionSink: (
            this: void,
            stringConversionSink: IStringConversionSink
        ) => IStringConversionSink;
        stringConversionSinkWithCallback: (
            callback: (accumulated: string) => void
        ) => IStringConversionSink;
        stringConversionSinkFrom: (
            sink: ISink<string>
        ) => IStringConversionSink;
        stringConversionSinkFromStringSink: (
            sink: IStringSink
        ) => IStringConversionSink;
    };
};
export interface IStringConversionSink {
    addSlice: (
        chunk: string,
        start: number,
        end: number,
        isLast: boolean
    ) => void;
    asUtf8Sink: (allowMalformed: boolean) => IByteConversionSink;
    asStringSink: () => IClosableStringSink;
    add: (chunk: string) => void;
    close: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class StringConversionSink
    implements IChunkedConversionSink<string>, ISink<string>
{
    public constructor() {
        dart.convert.stringConversionSink(this);
    }
    public static withCallback(
        callback: (accumulated: string) => void
    ): IStringConversionSink {
        return dart.convert.stringConversionSinkWithCallback(callback);
    }
    public static from(sink: ISink<string>): IStringConversionSink {
        return dart.convert.stringConversionSinkFrom(sink);
    }
    public static fromStringSink(sink: IStringSink): IStringConversionSink {
        return dart.convert.stringConversionSinkFromStringSink(sink);
    }
    private readonly _dart_addSlice: (
        chunk: string,
        start: number,
        end: number,
        isLast: boolean
    ) => void = undefined as any;
    private readonly _dart_asUtf8Sink: (
        allowMalformed: boolean
    ) => IByteConversionSink = undefined as any;
    private readonly _dart_asStringSink: () => IClosableStringSink =
        undefined as any;
    private readonly _dart_add: (chunk: string) => void = undefined as any;
    private readonly _dart_close: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public addSlice(
        chunk: string,
        start: number,
        end: number,
        isLast: boolean
    ): void {
        return this._dart_addSlice(chunk, start, end, isLast);
    }
    public asUtf8Sink(allowMalformed: boolean): IByteConversionSink {
        return this._dart_asUtf8Sink(allowMalformed);
    }
    public asStringSink(): IClosableStringSink {
        return this._dart_asStringSink();
    }
    public add(chunk: string): void {
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
