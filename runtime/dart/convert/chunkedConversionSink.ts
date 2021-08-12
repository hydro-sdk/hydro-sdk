import { IList } from "../core/list";
import { ISink } from "../core/sink";
declare const dart: {
    convert: {
        chunkedConversionSink: <T>(
            this: void,
            chunkedConversionSink: IChunkedConversionSink<T>
        ) => IChunkedConversionSink<T>;
        chunkedConversionSinkWithCallback: <T>(
            callback: (accumulated: IList<T>) => void
        ) => IChunkedConversionSink<T>;
    };
};
export interface IChunkedConversionSink<T> {
    add: (chunk: T) => void;
    close: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class ChunkedConversionSink<T> implements ISink<T> {
    public constructor() {
        dart.convert.chunkedConversionSink(this);
    }
    public static withCallback<T>(
        callback: (accumulated: IList<T>) => void
    ): IChunkedConversionSink<T> {
        return dart.convert.chunkedConversionSinkWithCallback(callback);
    }
    private readonly _dart_add: (chunk: T) => void = undefined as any;
    private readonly _dart_close: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public add(chunk: T): void {
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
