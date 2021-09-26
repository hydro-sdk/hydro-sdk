import { IFunction } from "../core/function";
import { IFuture } from "./future";
export interface IStreamSubscription<T> {
    cancel: () => IFuture<void>;
    onData: (handleData?: (data: T) => void) => void;
    onError: (handleError?: IFunction | undefined) => void;
    onDone: (handleDone?: () => void) => void;
    pause: (resumeSignal?: IFuture<void> | undefined) => void;
    resume: () => void;
    getIsPaused: () => boolean;
    asFuture: <E>(futureValue?: E | undefined) => IFuture<E>;
}
