import { IFuture } from "../../dart/async/future";
import { IFutureOr } from "../../dart/async/futureOr";
import { IStream } from "../../dart/async/stream";
import { IDuration } from "../../dart/core/duration";
import { IFunction } from "../../dart/core/function";
export interface ITickerFuture extends IFuture {
    whenCompleteOrCancel: (callback: () => void) => void;
    getOrCancel: () => IFuture<void>;
    asStream: () => IStream<void>;
    catchError: (
        onError: IFunction,
        props?: { test?: (__: Object) => boolean | undefined }
    ) => IFuture<void>;
    then: <R>(
        onValue: (value: void) => IFutureOr<R>,
        props?: { onError?: IFunction | undefined }
    ) => IFuture<R>;
    timeout: (
        timeLimit: IDuration,
        props?: { onTimeout?: () => IFutureOr<void> | undefined }
    ) => IFuture<void>;
    whenComplete: (action: () => any) => IFuture<void>;
    toString: () => string;
}
