import { ISink } from "../core/sink";
import { IStackTrace } from "../core/stackTrace";
import { IEventSink } from "./eventSink";
declare const dart: {
    async: {
        _controllerEventSinkWrapper: <T>(
            this: void,
            _controllerEventSinkWrapper: I_ControllerEventSinkWrapper<T>,
            _sink?: IEventSink<any> | undefined
        ) => I_ControllerEventSinkWrapper<T>;
    };
};
export interface I_ControllerEventSinkWrapper<T> {
    add: (data: T) => void;
    addError: (error: Object, stackTrace?: IStackTrace | undefined) => void;
    close: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _ControllerEventSinkWrapper<T> implements IEventSink<T>, ISink<T> {
    public constructor(_sink?: IEventSink<any> | undefined) {
        dart.async._controllerEventSinkWrapper(this, _sink);
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
