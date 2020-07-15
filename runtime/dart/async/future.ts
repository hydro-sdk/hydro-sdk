export type FutureOr<T> = Future<T> | T;

declare const dart: {
    async: {
        future: <T>(this: void, computation: () => FutureOr<T>) => Future<T>;
        futureError: <T>(this: void, error: any, stackTrace?: any | undefined) => Future<T>;
        futureSync: <T>(this: void, computation: () => FutureOr<T>) => Future<T>;
        futureValue: <T>(this: void, value?: FutureOr<T> | undefined) => Future<T>;
        futureAny: <T>(this: void, futures: Array<Future<T>>) => Future<T>;
        futureDoWhile: <T>(this: void, action: () => FutureOr<boolean>) => Future<any>;
        futureForEach: <T>(
            this: void,
            element: Array<T>,
            action: (element: T) => FutureOr<any>
        ) => Future<any>;
        futureWait: <T>(
            this: void,
            futures: Array<Future<T>>,
            {eagerError, cleanUp}: { eagerError: boolean; cleanUp: (successValue: T) => void }
        ) => Future<Array<T>>;
    };
};

export class Future<T>
{
    //TSTL won't let us cheat and return the result of a function from a constructor.
    //This needs to be private to force consumers to use the static methods to make new Futures
    private constructor() 
    {
        this.catchError = undefined as any;
        this.then = undefined as any;
        this.whenComplete = undefined as any;
        // (self as any) = dart.async.future(computation);
    }

    public static create<T>(computation: () => FutureOr<T>): Future<T>
    {
        return dart.async.future(computation);
    }

    public static error<T>(error: T, stackTrace?: any | undefined): Future<T> 
    {
        return dart.async.futureError(error, stackTrace);
    }

    public static sync<T>(computation: () => FutureOr<T>): Future<T> 
    {
        return dart.async.futureSync(computation);
    }

    public static value<T>(value?: FutureOr<T> | undefined): Future<T> 
    {
        return dart.async.futureValue(value);
    }

    public catchError: (
        onError: (error?: T | undefined) => void,
        props?: { test?: (error: T) => boolean | undefined } | undefined
    ) => Future<T>;

    public then: <R>(
        onValue: (this: void,value: T ) => R ,
        props?: { onError?: (err: any) => void | undefined } | undefined
    ) => Future<R>

    public whenComplete: (action: () => FutureOr<any>) => Future<T>;

    public static any<T>(futures: Array<Future<T>>): Future<T> 
    {
        return dart.async.futureAny(futures);
    }

    public static doWhile(action: () => FutureOr<boolean>): Future<any> 
    {
        return dart.async.futureDoWhile(action);
    }

    public static forEach<T>(
        element: Array<T>,
        action: (element: T) => FutureOr<any>
    ): Future<any> 
    {
        return dart.async.futureForEach(element, action);
    }

    public static wait<T>(
        futures: Array<Future<T>>,
        {eagerError, cleanUp}: { eagerError: boolean; cleanUp: (successValue: T) => void }
    ): Future<Array<T>> 
    {
        return dart.async.futureWait(futures, {eagerError, cleanUp});
    }
}