import { I_EventDispatch } from "./_eventDispatch";
export interface I_DelayedEvent<T> {
    next: I_DelayedEvent<any> | undefined;
    perform: (dispatch: I_EventDispatch<T>) => void;
}
