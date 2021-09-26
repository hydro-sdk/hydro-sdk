import { I_DelayedEvent } from "./_delayedEvent";
import { I_EventDispatch } from "./_eventDispatch";
declare const dart: {
    async: {
        _delayedDone: (
            this: void,
            _delayedDone: I_DelayedDone
        ) => I_DelayedDone;
    };
};
export interface I_DelayedDone {
    perform: (dispatch: I_EventDispatch<any>) => void;
    getNext: () => I_DelayedEvent<any> | undefined;
    setNext: (_?: I_DelayedEvent<any> | undefined) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _DelayedDone implements Omit<I_DelayedEvent, "next" | "next="> {
    public constructor() {
        dart.async._delayedDone(this);
    }
    private readonly _dart_perform: (dispatch: I_EventDispatch<any>) => void =
        undefined as any;
    private readonly _dart_getNext: () => I_DelayedEvent<any> | undefined =
        undefined as any;
    private readonly _dart_setNext: (
        _?: I_DelayedEvent<any> | undefined
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public perform(dispatch: I_EventDispatch<any>): void {
        return this._dart_perform(dispatch);
    }
    public getNext(): I_DelayedEvent<any> | undefined {
        return this._dart_getNext();
    }
    public setNext(_?: I_DelayedEvent<any> | undefined): void {
        return this._dart_setNext(_);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
