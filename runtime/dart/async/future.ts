import { IDuration } from "../core/duration";
import { IIterable } from "../core/iterable";
import { IList } from "../core/list";
import { IStackTrace } from "../core/stackTrace";
import { IFutureOr } from "./futureOr";
import { IStream } from "./stream";
declare const dart: {
    async: {
        future: <T>(
            this: void,
            future: IFuture<T>,
            computation: () => IFutureOr<T>
        ) => IFuture<T>;
        futureMicrotask: <T>(computation: () => IFutureOr<T>) => IFuture<T>;
        futureSync: <T>(computation: () => IFutureOr<T>) => IFuture<T>;
        futureValue: <T>(value?: IFutureOr<T> | undefined) => IFuture<T>;
        futureError: <T>(
            error: Object,
            stackTrace?: IStackTrace | undefined
        ) => IFuture<T>;
        futureDelayed: <T>(
            duration: IDuration,
            computation?: () => IFutureOr<T>
        ) => IFuture<T>;
        futureWait: <T>(
            futures: IIterable<IFuture<T>>,
            props: {
                cleanUp?: (successValue: T) => void | undefined;
                eagerError: boolean;
            }
        ) => IFuture<IList<T>>;
        futureAny: <T>(futures: IIterable<IFuture<T>>) => IFuture<T>;
        futureForEach: <T>(
            elements: IIterable<T>,
            action: (element: T) => IFutureOr<any>
        ) => IFuture<any>;
        futureDoWhile: (action: () => IFutureOr<boolean>) => IFuture<any>;
    };
};
export interface IFuture<T> {
    then: <R>(
        onValue: (__: T) => R | undefined,
        props?: { onError?: (__: IStackTrace) => R | undefined | undefined }
    ) => IFuture<R>;
    catchError: (
        onError: (__: IStackTrace) => T | undefined,
        props?: { test?: (__: Object) => boolean | undefined }
    ) => IFuture<T>;
    whenComplete: (action: () => IFutureOr<void>) => IFuture<T>;
    asStream: () => IStream<T>;
    timeout: (
        timeLimit: IDuration,
        props?: { onTimeout?: () => IFutureOr<T> | undefined }
    ) => IFuture<T>;
}
export class Future<T> {
    public constructor(computation: () => IFutureOr<T>) {
        dart.async.future(this, computation);
    }
    public static microtask<T>(computation: () => IFutureOr<T>): IFuture<T> {
        return dart.async.futureMicrotask(computation);
    }
    public static sync<T>(computation: () => IFutureOr<T>): IFuture<T> {
        return dart.async.futureSync(computation);
    }
    public static value<T>(value?: IFutureOr<T> | undefined): IFuture<T> {
        return dart.async.futureValue(value);
    }
    public static error<T>(
        error: Object,
        stackTrace?: IStackTrace | undefined
    ): IFuture<T> {
        return dart.async.futureError(error, stackTrace);
    }
    public static delayed<T>(
        duration: IDuration,
        computation?: () => IFutureOr<T>
    ): IFuture<T> {
        return dart.async.futureDelayed(duration, computation);
    }
    public static wait<T>(
        futures: IIterable<IFuture<T>>,
        props: {
            cleanUp?: (successValue: T) => void | undefined;
            eagerError?: boolean;
        }
    ): IFuture<IList<T>> {
        return dart.async.futureWait(futures, {
            ...waitDefaultProps,
            ...props,
        });
    }
    public static any<T>(futures: IIterable<IFuture<T>>): IFuture<T> {
        return dart.async.futureAny(futures);
    }
    public static forEach<T>(
        elements: IIterable<T>,
        action: (element: T) => IFutureOr<any>
    ): IFuture<any> {
        return dart.async.futureForEach(elements, action);
    }
    public static doWhile(action: () => IFutureOr<boolean>): IFuture<any> {
        return dart.async.futureDoWhile(action);
    }
    private readonly _dart_then: <R>(
        onValue: (__: T) => R | undefined,
        props?: { onError?: (__: IStackTrace) => R | undefined | undefined }
    ) => IFuture<R> = undefined as any;
    private readonly _dart_catchError: (
        onError: (__: IStackTrace) => T | undefined,
        props?: { test?: (__: Object) => boolean | undefined }
    ) => IFuture<T> = undefined as any;
    private readonly _dart_whenComplete: (
        action: () => IFutureOr<void>
    ) => IFuture<T> = undefined as any;
    private readonly _dart_asStream: () => IStream<T> = undefined as any;
    private readonly _dart_timeout: (
        timeLimit: IDuration,
        props?: { onTimeout?: () => IFutureOr<T> | undefined }
    ) => IFuture<T> = undefined as any;
    public then<R>(
        onValue: (__: T) => R | undefined,
        props?: { onError?: (__: IStackTrace) => R | undefined | undefined }
    ): IFuture<R> {
        return this._dart_then(onValue, props);
    }
    public catchError(
        onError: (__: IStackTrace) => T | undefined,
        props?: { test?: (__: Object) => boolean | undefined }
    ): IFuture<T> {
        return this._dart_catchError(onError, props);
    }
    public whenComplete(action: () => IFutureOr<void>): IFuture<T> {
        return this._dart_whenComplete(action);
    }
    public asStream(): IStream<T> {
        return this._dart_asStream();
    }
    public timeout(
        timeLimit: IDuration,
        props?: { onTimeout?: () => IFutureOr<T> | undefined }
    ): IFuture<T> {
        return this._dart_timeout(timeLimit, props);
    }
}
const waitDefaultProps = {
    eagerError: false,
};
