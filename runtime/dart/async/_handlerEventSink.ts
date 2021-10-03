import { ISink } from "../core/sink";
import { IStackTrace } from "../core/stackTrace";
import { IEventSink } from "./eventSink";
declare const dart: {
    async: {
        _handlerEventSink: <S, T>(
            this: void,
            _handlerEventSink: I_HandlerEventSink<S, T>,
            _handleData: (data: S, sink: IEventSink<T>) => void,
            _handleError: (
                error: Object,
                stackTrace: IStackTrace,
                sink: IEventSink<T>
            ) => void,
            _handleDone: (sink: IEventSink<T>) => void,
            _sink: IEventSink<T>
        ) => I_HandlerEventSink<S, T>;
    };
};
export interface I_HandlerEventSink<S, T> {
    add: (data: S) => void;
    addError: (error: Object, stackTrace?: IStackTrace | undefined) => void;
    close: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _HandlerEventSink<S, T> implements IEventSink<S>, ISink<S> {
    public constructor(
        _handleData: (data: S, sink: IEventSink<T>) => void,
        _handleError: (
            error: Object,
            stackTrace: IStackTrace,
            sink: IEventSink<T>
        ) => void,
        _handleDone: (sink: IEventSink<T>) => void,
        _sink: IEventSink<T>
    ) {
        dart.async._handlerEventSink(
            this,
            _handleData,
            _handleError,
            _handleDone,
            _sink
        );
    }
    private readonly _dart_add: (data: S) => void = undefined as any;
    private readonly _dart_addError: (
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => void = undefined as any;
    private readonly _dart_close: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public add(data: S): void {
        return this._dart_add(data);
    }
    public addError(error: Object, stackTrace?: IStackTrace | undefined): void {
        return this._dart_addError(error, stackTrace);
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
