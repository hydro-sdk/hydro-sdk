import { ISink } from "../core/sink";
import { IStackTrace } from "../core/stackTrace";
import { I_EventSink } from "./_eventSink";
import { IEventSink } from "./eventSink";
declare const dart: {
    async: {
        _eventSinkWrapper: <T>(
            this: void,
            _eventSinkWrapper: I_EventSinkWrapper<T>,
            _sink: I_EventSink<T>
        ) => I_EventSinkWrapper<T>;
    };
};
export interface I_EventSinkWrapper<T> {
    add: (data: T) => void;
    addError: (error: Object, stackTrace?: IStackTrace | undefined) => void;
    close: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _EventSinkWrapper<T> implements IEventSink<T>, ISink<T> {
    public constructor(_sink: I_EventSink<T>) {
        dart.async._eventSinkWrapper(this, _sink);
    }
    private readonly _dart_add: (data: T) => void = undefined as any;
    private readonly _dart_addError: (
        error: Object,
        stackTrace?: IStackTrace | undefined
    ) => void = undefined as any;
    private readonly _dart_close: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public add(data: T): void {
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
