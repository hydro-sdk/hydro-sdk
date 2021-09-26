import { ISink } from "../core/sink";
import { IStackTrace } from "../core/stackTrace";
export interface IEventSink<T> extends ISink<T> {
    add: (event: T) => void;
    addError: (error: Object, stackTrace?: IStackTrace | undefined) => void;
    close: () => void;
}
