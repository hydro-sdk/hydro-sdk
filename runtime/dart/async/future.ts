export type FutureOr<T> = Future<T> | T;

export class Future<T> {

    public constructor(computation: () => FutureOr<T>) {
        this.catchError = undefined as any;
        this.then = undefined as any;
        this.whenComplete = undefined as any;
        return dart.async.future(computation);
    }

    public static error<T>(error: any, stackTrace?: any | undefined): Future<T> {
        return dart.async.error(error, stackTrace);
    }

    public static value<T>(value?: FutureOr<T> | undefined): Future<T> {
        return dart.async.value(value);
    }

    public catchError: (
        onError: (error?: any | undefined) => void,
        props?: { test?: (error: any) => boolean | undefined } | undefined
    ) => Future<T>;

    public then: <R>(
        onValue: (value: T) => FutureOr<R>,
        props?: { onError?: (err: any) => void | undefined } | undefined
    ) => Future<R>;

    public whenComplete: (action: () => FutureOr<any>) => Future<T>;

    public static any<T>(futures: Array<Future<T>>): Future<T> {
        return dart.async.any(futures);
    }

    public static doWhile(action: () => FutureOr<boolean>): Future<any> {
        return dart.async.doWhile(action);
    }

    public static forEach<T>(
        element: Array<T>,
        action: (element: T) => FutureOr<any>
    ): Future<any> {
        return dart.async.forEach(element, action);
    }

    public static wait<T>(
        futures: Array<Future<T>>,
        { eagerError, cleanUp }: { eagerError: boolean, cleanUp: (successValue: T) => void }
    ): Future<Array<T>> {
        return dart.async.wait(futures, { eagerError, cleanUp });
    }
}

declare const dart: {
    async: {
        future: <T>(this: void, computation: () => FutureOr<T>) => Future<T>;
        error: <T>(this: void, error: any, stackTrace?: any | undefined) => Future<T>;
        value: <T>(this: void, value?: FutureOr<T> | undefined) => Future<T>;
        any: <T>(this: void, futures: Array<Future<T>>) => Future<T>;
        doWhile: <T>(this: void, action: () => FutureOr<boolean>) => Future<any>;
        forEach: <T>(
            this: void,
            element: Array<T>,
            action: (element: T) => FutureOr<any>
        ) => Future<any>;
        wait: <T>(
            this: void,
            futures: Array<Future<T>>,
            { eagerError, cleanUp }: { eagerError: boolean, cleanUp: (successValue: T) => void }
        ) => Future<Array<T>>
    }
}