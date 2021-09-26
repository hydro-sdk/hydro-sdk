import { IStackTrace } from "../core/stackTrace";
import { I_DelayedEvent } from "./_delayedEvent";
import { I_EventDispatch } from "./_eventDispatch";
declare const dart: {
    async: {
        _delayedError: (
            this: void,
            _delayedError: I_DelayedError,
            error: Object,
            stackTrace: IStackTrace
        ) => I_DelayedError;
    };
};
export interface I_DelayedError {
    error: Object;
    stackTrace: IStackTrace;
    perform: (dispatch: I_EventDispatch<any>) => void;
    getNext: () => I_DelayedEvent<any> | undefined;
    setNext: (_next?: I_DelayedEvent<any> | undefined) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _DelayedError implements Omit<I_DelayedEvent, "next" | "next="> {
    public readonly error: Object = undefined as any;
    public readonly stackTrace: IStackTrace = undefined as any;
    public constructor(error: Object, stackTrace: IStackTrace) {
        dart.async._delayedError(this, error, stackTrace);
    }
    private readonly _dart_perform: (dispatch: I_EventDispatch<any>) => void =
        undefined as any;
    private readonly _dart_getNext: () => I_DelayedEvent<any> | undefined =
        undefined as any;
    private readonly _dart_setNext: (
        _next?: I_DelayedEvent<any> | undefined
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public perform(dispatch: I_EventDispatch<any>): void {
        return this._dart_perform(dispatch);
    }
    public getNext(): I_DelayedEvent<any> | undefined {
        return this._dart_getNext();
    }
    public setNext(_next?: I_DelayedEvent<any> | undefined): void {
        return this._dart_setNext(_next);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
