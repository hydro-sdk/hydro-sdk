import { IFuture } from "./future";
import { IStream } from "./stream";
export interface IStreamIterator<T> {
    moveNext: () => IFuture<boolean>;
    getCurrent: () => T;
    cancel: () => IFuture<any>;
}
