import { IFuture } from "./future";
import { IStream } from "./stream";
import { IStreamIterator } from "./streamIterator";
declare const dart: {
    async: {
        _streamIterator: <T>(
            this: void,
            _streamIterator: I_StreamIterator<T>,
            stream: IStream<T>
        ) => I_StreamIterator<T>;
    };
};
export interface I_StreamIterator<T> {
    getCurrent: () => T;
    moveNext: () => IFuture<boolean>;
    cancel: () => IFuture<any>;
    toString: () => string;
    getHashCode: () => number;
}
export class _StreamIterator<T> implements IStreamIterator<T> {
    public constructor(stream: IStream<T>) {
        dart.async._streamIterator(this, stream);
    }
    private readonly _dart_getCurrent: () => T = undefined as any;
    private readonly _dart_moveNext: () => IFuture<boolean> = undefined as any;
    private readonly _dart_cancel: () => IFuture<any> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getCurrent(): T {
        return this._dart_getCurrent();
    }
    public moveNext(): IFuture<boolean> {
        return this._dart_moveNext();
    }
    public cancel(): IFuture<any> {
        return this._dart_cancel();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
