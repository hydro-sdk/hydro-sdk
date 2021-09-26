import { I_DelayedEvent } from "./_delayedEvent";
import { I_EventDispatch } from "./_eventDispatch";
declare const dart: {
    async: {
        _delayedData: <T>(
            this: void,
            _delayedData: I_DelayedData<T>,
            value: T
        ) => I_DelayedData<T>;
    };
};
export interface I_DelayedData<T> {
    perform: (dispatch: I_EventDispatch<T>) => void;
    getNext: () => I_DelayedEvent<any> | undefined;
    setNext: (_next?: I_DelayedEvent<any> | undefined) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _DelayedData<T>
    implements Omit<I_DelayedEvent<T>, "next" | "next=">
{
    public constructor(value: T) {
        dart.async._delayedData(this, value);
    }
    private readonly _dart_perform: (dispatch: I_EventDispatch<T>) => void =
        undefined as any;
    private readonly _dart_getNext: () => I_DelayedEvent<any> | undefined =
        undefined as any;
    private readonly _dart_setNext: (
        _next?: I_DelayedEvent<any> | undefined
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public perform(dispatch: I_EventDispatch<T>): void {
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
