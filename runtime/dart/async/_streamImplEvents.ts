import { I_DelayedEvent } from "./_delayedEvent";
import { I_EventDispatch } from "./_eventDispatch";
import { I_PendingEvents } from "./_pendingEvents";
export interface I_StreamImplEvents<T> extends I_PendingEvents<T> {
    firstPendingEvent: I_DelayedEvent<any> | undefined;
    lastPendingEvent: I_DelayedEvent<any> | undefined;
    getIsEmpty: () => boolean;
    add: (event: I_DelayedEvent<any>) => void;
    handleNext: (dispatch: I_EventDispatch<T>) => void;
    clear: () => void;
}
