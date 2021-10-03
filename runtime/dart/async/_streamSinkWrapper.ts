import { ISink } from "../core/sink";
import { IStackTrace } from "../core/stackTrace";
import { IEventSink } from "./eventSink";
import { IFuture } from "./future";
import { IStream } from "./stream";
import { IStreamConsumer } from "./streamConsumer";
import { IStreamController } from "./streamController";
import { IStreamSink } from "./streamSink";
declare const dart: {
    async: {
        _streamSinkWrapper: <T>(
            this: void,
            _streamSinkWrapper: I_StreamSinkWrapper<T>,
            _target: IStreamController<any>
        ) => I_StreamSinkWrapper<T>;
    };
};
export interface I_StreamSinkWrapper<T> {
    add: (data: T) => void;
    addError: (error: Object, stackTrace?: IStackTrace | undefined) => void;
    close: () => IFuture<any>;
    addStream: (source: IStream<T>) => IFuture<any>;
    getDone: () => IFuture<any>;
    toString: () => string;
    getHashCode: () => number;
}
export class _StreamSinkWrapper<T>
    implements IStreamSink<T>, IEventSink<T>, IStreamConsumer<T>, ISink<T>
{
    public constructor(_target: IStreamController<any>) {
        dart.async._streamSinkWrapper(this, _target);
    }
    private readonly _dart_add: (data: T) => void = undefined as any;
    private readonly _dart_addError: (
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => void = undefined as any;
    private readonly _dart_close: () => IFuture<any> = undefined as any;
    private readonly _dart_addStream: (source: IStream<T>) => IFuture<any> =
        undefined as any;
    private readonly _dart_getDone: () => IFuture<any> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public add(data: T): void {
        return this._dart_add(data);
    }
    public addError(error: Object, stackTrace?: IStackTrace | undefined): void {
        return this._dart_addError(error, stackTrace);
    }
    public close(): IFuture<any> {
        return this._dart_close();
    }
    public addStream(source: IStream<T>): IFuture<any> {
        return this._dart_addStream(source);
    }
    public getDone(): IFuture<any> {
        return this._dart_getDone();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
