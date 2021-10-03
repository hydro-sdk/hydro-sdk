import { IDuration } from "../core/duration";
import { IFunction } from "../core/function";
import { IIterable } from "../core/iterable";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { IStackTrace } from "../core/stackTrace";
import { IEventSink } from "./eventSink";
import { IFuture } from "./future";
import { IFutureOr } from "./futureOr";
import { IMultiStreamController } from "./multiStreamController";
import { IStreamConsumer } from "./streamConsumer";
import { IStreamSubscription } from "./streamSubscription";
import { IStreamTransformer } from "./streamTransformer";
declare const dart: {
    async: {
        stream: <T>(this: void, stream: IStream<T>) => IStream<T>;
        streamEmpty: <T>() => IStream<T>;
        streamValue: <T>(value: T) => IStream<T>;
        streamError: <T>(
            error: Object,
            stackTrace?: IStackTrace | undefined
        ) => IStream<T>;
        streamFromFuture: <T>(future: IFuture<T>) => IStream<T>;
        streamFromFutures: <T>(futures: IIterable<IFuture<T>>) => IStream<T>;
        streamFromIterable: <T>(elements: IIterable<T>) => IStream<T>;
        streamMulti: <T>(
            onListen: (__: IMultiStreamController<T>) => void,
            props: { isBroadcast: boolean }
        ) => IStream<T>;
        streamPeriodic: <T>(
            period: IDuration,
            computation?: (computationCount: number) => T
        ) => IStream<T>;
        streamEventTransformed: <T>(
            source: IStream<any>,
            mapSink: (sink: IEventSink<T>) => IEventSink<any>
        ) => IStream<T>;
        streamCastFrom: <S, T>(source: IStream<S>) => IStream<T>;
    };
};
export interface IStream<T> {
    getIsBroadcast: () => boolean;
    asBroadcastStream: (props?: {
        onCancel?: (subscription: IStreamSubscription<T>) => void | undefined;
        onListen?: (subscription: IStreamSubscription<T>) => void | undefined;
    }) => IStream<T>;
    listen: (
        onData?: (event: T) => void,
        props?: {
            cancelOnError?: boolean | undefined;
            onDone?: () => void | undefined;
            onError?: IFunction | undefined;
        }
    ) => IStreamSubscription<T>;
    where: (test: (event: T) => boolean) => IStream<T>;
    map: <S>(convert: (event: T) => S) => IStream<S>;
    asyncMap: <E>(convert: (event: T) => IFutureOr<E>) => IStream<E>;
    asyncExpand: <E>(
        convert: (event: T) => IStream<E> | undefined
    ) => IStream<E>;
    handleError: (
        onError: IFunction,
        props?: { test?: (error: any) => boolean | undefined }
    ) => IStream<T>;
    expand: <S>(convert: (element: T) => IIterable<S>) => IStream<S>;
    pipe: (streamConsumer: IStreamConsumer<T>) => IFuture<any>;
    transform: <S>(streamTransformer: IStreamTransformer<T, S>) => IStream<S>;
    reduce: (combine: (previous: T, element: T) => T) => IFuture<T>;
    fold: <S>(
        initialValue: S,
        combine: (previous: S, element: T) => S
    ) => IFuture<S>;
    join: (separator: string) => IFuture<string>;
    contains: (needle?: Object | undefined) => IFuture<boolean>;
    forEach: (action: (element: T) => void) => IFuture<any>;
    every: (test: (element: T) => boolean) => IFuture<boolean>;
    any: (test: (element: T) => boolean) => IFuture<boolean>;
    getLength: () => IFuture<number>;
    getIsEmpty: () => IFuture<boolean>;
    cast: <R>() => IStream<R>;
    toList: () => IFuture<IList<T>>;
    toSet: () => IFuture<ISet<T>>;
    drain: <E>(futureValue?: E | undefined) => IFuture<E>;
    take: (count: number) => IStream<T>;
    takeWhile: (test: (element: T) => boolean) => IStream<T>;
    skip: (count: number) => IStream<T>;
    skipWhile: (test: (element: T) => boolean) => IStream<T>;
    distinct: (equals?: (previous: T, next: T) => boolean) => IStream<T>;
    getFirst: () => IFuture<T>;
    getLast: () => IFuture<T>;
    getSingle: () => IFuture<T>;
    firstWhere: (
        test: (element: T) => boolean,
        props?: { orElse?: () => T | undefined }
    ) => IFuture<T>;
    lastWhere: (
        test: (element: T) => boolean,
        props?: { orElse?: () => T | undefined }
    ) => IFuture<T>;
    singleWhere: (
        test: (element: T) => boolean,
        props?: { orElse?: () => T | undefined }
    ) => IFuture<T>;
    elementAt: (index: number) => IFuture<T>;
    timeout: (
        timeLimit: IDuration,
        props?: { onTimeout?: (sink: IEventSink<T>) => void | undefined }
    ) => IStream<T>;
}
export class Stream<T> {
    public constructor() {
        dart.async.stream(this);
    }
    public static empty<T>(): IStream<T> {
        return dart.async.streamEmpty();
    }
    public static value<T>(value: T): IStream<T> {
        return dart.async.streamValue(value);
    }
    public static error<T>(
        error: Object,
        stackTrace?: IStackTrace | undefined
    ): IStream<T> {
        return dart.async.streamError(error, stackTrace);
    }
    public static fromFuture<T>(future: IFuture<T>): IStream<T> {
        return dart.async.streamFromFuture(future);
    }
    public static fromFutures<T>(futures: IIterable<IFuture<T>>): IStream<T> {
        return dart.async.streamFromFutures(futures);
    }
    public static fromIterable<T>(elements: IIterable<T>): IStream<T> {
        return dart.async.streamFromIterable(elements);
    }
    public static multi<T>(
        onListen: (__: IMultiStreamController<T>) => void,
        props: { isBroadcast?: boolean }
    ): IStream<T> {
        return dart.async.streamMulti(onListen, {
            ...multiDefaultProps,
            ...props,
        });
    }
    public static periodic<T>(
        period: IDuration,
        computation?: (computationCount: number) => T
    ): IStream<T> {
        return dart.async.streamPeriodic(period, computation);
    }
    public static eventTransformed<T>(
        source: IStream<any>,
        mapSink: (sink: IEventSink<T>) => IEventSink<any>
    ): IStream<T> {
        return dart.async.streamEventTransformed(source, mapSink);
    }
    public static castFrom<S, T>(source: IStream<S>): IStream<T> {
        return dart.async.streamCastFrom(source);
    }
    private readonly _dart_getIsBroadcast: () => boolean = undefined as any;
    private readonly _dart_asBroadcastStream: (props?: {
        onCancel?: (subscription: IStreamSubscription<T>) => void | undefined;
        onListen?: (subscription: IStreamSubscription<T>) => void | undefined;
    }) => IStream<T> = undefined as any;
    private readonly _dart_listen: (
        onData?: (event: T) => void,
        props?: {
            cancelOnError?: boolean | undefined;
            onDone?: () => void | undefined;
            onError?: IFunction | undefined;
        }
    ) => IStreamSubscription<T> = undefined as any;
    private readonly _dart_where: (test: (event: T) => boolean) => IStream<T> =
        undefined as any;
    private readonly _dart_map: <S>(convert: (event: T) => S) => IStream<S> =
        undefined as any;
    private readonly _dart_asyncMap: <E>(
        convert: (event: T) => IFutureOr<E>
    ) => IStream<E> = undefined as any;
    private readonly _dart_asyncExpand: <E>(
        convert: (event: T) => IStream<E> | undefined
    ) => IStream<E> = undefined as any;
    private readonly _dart_handleError: (
        onError: IFunction,
        props?: { test?: (error: any) => boolean | undefined }
    ) => IStream<T> = undefined as any;
    private readonly _dart_expand: <S>(
        convert: (element: T) => IIterable<S>
    ) => IStream<S> = undefined as any;
    private readonly _dart_pipe: (
        streamConsumer: IStreamConsumer<T>
    ) => IFuture<any> = undefined as any;
    private readonly _dart_transform: <S>(
        streamTransformer: IStreamTransformer<T, S>
    ) => IStream<S> = undefined as any;
    private readonly _dart_reduce: (
        combine: (previous: T, element: T) => T
    ) => IFuture<T> = undefined as any;
    private readonly _dart_fold: <S>(
        initialValue: S,
        combine: (previous: S, element: T) => S
    ) => IFuture<S> = undefined as any;
    private readonly _dart_join: (separator: string) => IFuture<string> =
        undefined as any;
    private readonly _dart_contains: (
        needle?: Object | undefined
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_forEach: (
        action: (element: T) => void
    ) => IFuture<any> = undefined as any;
    private readonly _dart_every: (
        test: (element: T) => boolean
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_any: (
        test: (element: T) => boolean
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_getLength: () => IFuture<number> = undefined as any;
    private readonly _dart_getIsEmpty: () => IFuture<boolean> =
        undefined as any;
    private readonly _dart_cast: <R>() => IStream<R> = undefined as any;
    private readonly _dart_toList: () => IFuture<IList<T>> = undefined as any;
    private readonly _dart_toSet: () => IFuture<ISet<T>> = undefined as any;
    private readonly _dart_drain: <E>(
        futureValue?: E | undefined
    ) => IFuture<E> = undefined as any;
    private readonly _dart_take: (count: number) => IStream<T> =
        undefined as any;
    private readonly _dart_takeWhile: (
        test: (element: T) => boolean
    ) => IStream<T> = undefined as any;
    private readonly _dart_skip: (count: number) => IStream<T> =
        undefined as any;
    private readonly _dart_skipWhile: (
        test: (element: T) => boolean
    ) => IStream<T> = undefined as any;
    private readonly _dart_distinct: (
        equals?: (previous: T, next: T) => boolean
    ) => IStream<T> = undefined as any;
    private readonly _dart_getFirst: () => IFuture<T> = undefined as any;
    private readonly _dart_getLast: () => IFuture<T> = undefined as any;
    private readonly _dart_getSingle: () => IFuture<T> = undefined as any;
    private readonly _dart_firstWhere: (
        test: (element: T) => boolean,
        props?: { orElse?: () => T | undefined }
    ) => IFuture<T> = undefined as any;
    private readonly _dart_lastWhere: (
        test: (element: T) => boolean,
        props?: { orElse?: () => T | undefined }
    ) => IFuture<T> = undefined as any;
    private readonly _dart_singleWhere: (
        test: (element: T) => boolean,
        props?: { orElse?: () => T | undefined }
    ) => IFuture<T> = undefined as any;
    private readonly _dart_elementAt: (index: number) => IFuture<T> =
        undefined as any;
    private readonly _dart_timeout: (
        timeLimit: IDuration,
        props?: { onTimeout?: (sink: IEventSink<T>) => void | undefined }
    ) => IStream<T> = undefined as any;
    public getIsBroadcast(): boolean {
        return this._dart_getIsBroadcast();
    }
    public asBroadcastStream(props?: {
        onCancel?: (subscription: IStreamSubscription<T>) => void | undefined;
        onListen?: (subscription: IStreamSubscription<T>) => void | undefined;
    }): IStream<T> {
        return this._dart_asBroadcastStream(props);
    }
    public listen(
        onData?: (event: T) => void,
        props?: {
            cancelOnError?: boolean | undefined;
            onDone?: () => void | undefined;
            onError?: IFunction | undefined;
        }
    ): IStreamSubscription<T> {
        return this._dart_listen(onData, props);
    }
    public where(test: (event: T) => boolean): IStream<T> {
        return this._dart_where(test);
    }
    public map<S>(convert: (event: T) => S): IStream<S> {
        return this._dart_map(convert);
    }
    public asyncMap<E>(convert: (event: T) => IFutureOr<E>): IStream<E> {
        return this._dart_asyncMap(convert);
    }
    public asyncExpand<E>(
        convert: (event: T) => IStream<E> | undefined
    ): IStream<E> {
        return this._dart_asyncExpand(convert);
    }
    public handleError(
        onError: IFunction,
        props?: { test?: (error: any) => boolean | undefined }
    ): IStream<T> {
        return this._dart_handleError(onError, props);
    }
    public expand<S>(convert: (element: T) => IIterable<S>): IStream<S> {
        return this._dart_expand(convert);
    }
    public pipe(streamConsumer: IStreamConsumer<T>): IFuture<any> {
        return this._dart_pipe(streamConsumer);
    }
    public transform<S>(
        streamTransformer: IStreamTransformer<T, S>
    ): IStream<S> {
        return this._dart_transform(streamTransformer);
    }
    public reduce(combine: (previous: T, element: T) => T): IFuture<T> {
        return this._dart_reduce(combine);
    }
    public fold<S>(
        initialValue: S,
        combine: (previous: S, element: T) => S
    ): IFuture<S> {
        return this._dart_fold(initialValue, combine);
    }
    public join(separator: string = ""): IFuture<string> {
        return this._dart_join(separator);
    }
    public contains(needle?: Object | undefined): IFuture<boolean> {
        return this._dart_contains(needle);
    }
    public forEach(action: (element: T) => void): IFuture<any> {
        return this._dart_forEach(action);
    }
    public every(test: (element: T) => boolean): IFuture<boolean> {
        return this._dart_every(test);
    }
    public any(test: (element: T) => boolean): IFuture<boolean> {
        return this._dart_any(test);
    }
    public getLength(): IFuture<number> {
        return this._dart_getLength();
    }
    public getIsEmpty(): IFuture<boolean> {
        return this._dart_getIsEmpty();
    }
    public cast<R>(): IStream<R> {
        return this._dart_cast();
    }
    public toList(): IFuture<IList<T>> {
        return this._dart_toList();
    }
    public toSet(): IFuture<ISet<T>> {
        return this._dart_toSet();
    }
    public drain<E>(futureValue?: E | undefined): IFuture<E> {
        return this._dart_drain(futureValue);
    }
    public take(count: number): IStream<T> {
        return this._dart_take(count);
    }
    public takeWhile(test: (element: T) => boolean): IStream<T> {
        return this._dart_takeWhile(test);
    }
    public skip(count: number): IStream<T> {
        return this._dart_skip(count);
    }
    public skipWhile(test: (element: T) => boolean): IStream<T> {
        return this._dart_skipWhile(test);
    }
    public distinct(equals?: (previous: T, next: T) => boolean): IStream<T> {
        return this._dart_distinct(equals);
    }
    public getFirst(): IFuture<T> {
        return this._dart_getFirst();
    }
    public getLast(): IFuture<T> {
        return this._dart_getLast();
    }
    public getSingle(): IFuture<T> {
        return this._dart_getSingle();
    }
    public firstWhere(
        test: (element: T) => boolean,
        props?: { orElse?: () => T | undefined }
    ): IFuture<T> {
        return this._dart_firstWhere(test, props);
    }
    public lastWhere(
        test: (element: T) => boolean,
        props?: { orElse?: () => T | undefined }
    ): IFuture<T> {
        return this._dart_lastWhere(test, props);
    }
    public singleWhere(
        test: (element: T) => boolean,
        props?: { orElse?: () => T | undefined }
    ): IFuture<T> {
        return this._dart_singleWhere(test, props);
    }
    public elementAt(index: number): IFuture<T> {
        return this._dart_elementAt(index);
    }
    public timeout(
        timeLimit: IDuration,
        props?: { onTimeout?: (sink: IEventSink<T>) => void | undefined }
    ): IStream<T> {
        return this._dart_timeout(timeLimit, props);
    }
}
const multiDefaultProps = {
    isBroadcast: false,
};
