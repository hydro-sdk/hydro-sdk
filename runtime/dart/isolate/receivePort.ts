import { IEventSink } from "../async/eventSink";
import { IFuture } from "../async/future";
import { IFutureOr } from "../async/futureOr";
import { IStream } from "../async/stream";
import { IStreamConsumer } from "../async/streamConsumer";
import { IStreamSubscription } from "../async/streamSubscription";
import { IStreamTransformer } from "../async/streamTransformer";
import { IDuration } from "../core/duration";
import { IFunction } from "../core/function";
import { IIterable } from "../core/iterable";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { IRawReceivePort } from "./rawReceivePort";
import { ISendPort } from "./sendPort";
declare const dart: {
    isolate: {
        receivePort: (
            this: void,
            receivePort: IReceivePort,
            debugName: string
        ) => IReceivePort;
        receivePortFromRawReceivePort: (
            rawPort: IRawReceivePort
        ) => IReceivePort;
    };
};
export interface IReceivePort {
    listen: (
        onData?: (message: any) => void,
        props: {
            cancelOnError?: boolean | undefined;
            onDone?: () => void | undefined;
            onError?: IFunction | undefined;
        }
    ) => IStreamSubscription<any>;
    close: () => void;
    getSendPort: () => ISendPort;
    asBroadcastStream: (props: {
        onCancel?: (subscription: IStreamSubscription<any>) => void | undefined;
        onListen?: (subscription: IStreamSubscription<any>) => void | undefined;
    }) => IStream<any>;
    where: (test: (event: any) => boolean) => IStream<any>;
    map: <S>(convert: (event: any) => S) => IStream<S>;
    asyncMap: <E>(convert: (event: any) => IFutureOr<E>) => IStream<E>;
    asyncExpand: <E>(
        convert: (event: any) => IStream<E> | undefined
    ) => IStream<E>;
    handleError: (
        onError: IFunction,
        props: { test?: (error: any) => boolean | undefined }
    ) => IStream<any>;
    expand: <S>(convert: (element: any) => IIterable<S>) => IStream<S>;
    pipe: (streamConsumer: IStreamConsumer<any>) => IFuture<any>;
    transform: <S>(streamTransformer: IStreamTransformer<any, S>) => IStream<S>;
    reduce: (combine: (previous: any, element: any) => any) => IFuture<any>;
    fold: <S>(
        initialValue: S,
        combine: (previous: S, element: any) => S
    ) => IFuture<S>;
    join: (separator: string) => IFuture<string>;
    contains: (needle?: Object | undefined) => IFuture<boolean>;
    forEach: (action: (element: any) => void) => IFuture<any>;
    every: (test: (element: any) => boolean) => IFuture<boolean>;
    any: (test: (element: any) => boolean) => IFuture<boolean>;
    cast: <R>() => IStream<R>;
    toList: () => IFuture<IList<any>>;
    toSet: () => IFuture<ISet<any>>;
    drain: <E>(futureValue?: E | undefined) => IFuture<E>;
    take: (count: number) => IStream<any>;
    takeWhile: (test: (element: any) => boolean) => IStream<any>;
    skip: (count: number) => IStream<any>;
    skipWhile: (test: (element: any) => boolean) => IStream<any>;
    distinct: (equals?: (previous: any, next: any) => boolean) => IStream<any>;
    firstWhere: (
        test: (element: any) => boolean,
        props: { orElse?: () => any | undefined }
    ) => IFuture<any>;
    lastWhere: (
        test: (element: any) => boolean,
        props: { orElse?: () => any | undefined }
    ) => IFuture<any>;
    singleWhere: (
        test: (element: any) => boolean,
        props: { orElse?: () => any | undefined }
    ) => IFuture<any>;
    elementAt: (index: number) => IFuture<any>;
    timeout: (
        timeLimit: IDuration,
        props: { onTimeout?: (sink: IEventSink<any>) => void | undefined }
    ) => IStream<any>;
    getIsBroadcast: () => boolean;
    getLength: () => IFuture<number>;
    getIsEmpty: () => IFuture<boolean>;
    getFirst: () => IFuture<any>;
    getLast: () => IFuture<any>;
    getSingle: () => IFuture<any>;
    toString: () => string;
    getHashCode: () => number;
}
export class ReceivePort implements IStream {
    public constructor(debugName: string = "") {
        dart.isolate.receivePort(this, debugName);
    }
    public static fromRawReceivePort(rawPort: IRawReceivePort): IReceivePort {
        return dart.isolate.receivePortFromRawReceivePort(rawPort);
    }
    private readonly _dart_listen: (
        onData?: (message: any) => void,
        props: {
            cancelOnError?: boolean | undefined;
            onDone?: () => void | undefined;
            onError?: IFunction | undefined;
        }
    ) => IStreamSubscription<any> = undefined as any;
    private readonly _dart_close: () => void = undefined as any;
    private readonly _dart_getSendPort: () => ISendPort = undefined as any;
    private readonly _dart_asBroadcastStream: (props: {
        onCancel?: (subscription: IStreamSubscription<any>) => void | undefined;
        onListen?: (subscription: IStreamSubscription<any>) => void | undefined;
    }) => IStream<any> = undefined as any;
    private readonly _dart_where: (
        test: (event: any) => boolean
    ) => IStream<any> = undefined as any;
    private readonly _dart_map: <S>(convert: (event: any) => S) => IStream<S> =
        undefined as any;
    private readonly _dart_asyncMap: <E>(
        convert: (event: any) => IFutureOr<E>
    ) => IStream<E> = undefined as any;
    private readonly _dart_asyncExpand: <E>(
        convert: (event: any) => IStream<E> | undefined
    ) => IStream<E> = undefined as any;
    private readonly _dart_handleError: (
        onError: IFunction,
        props: { test?: (error: any) => boolean | undefined }
    ) => IStream<any> = undefined as any;
    private readonly _dart_expand: <S>(
        convert: (element: any) => IIterable<S>
    ) => IStream<S> = undefined as any;
    private readonly _dart_pipe: (
        streamConsumer: IStreamConsumer<any>
    ) => IFuture<any> = undefined as any;
    private readonly _dart_transform: <S>(
        streamTransformer: IStreamTransformer<any, S>
    ) => IStream<S> = undefined as any;
    private readonly _dart_reduce: (
        combine: (previous: any, element: any) => any
    ) => IFuture<any> = undefined as any;
    private readonly _dart_fold: <S>(
        initialValue: S,
        combine: (previous: S, element: any) => S
    ) => IFuture<S> = undefined as any;
    private readonly _dart_join: (separator: string) => IFuture<string> =
        undefined as any;
    private readonly _dart_contains: (
        needle?: Object | undefined
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_forEach: (
        action: (element: any) => void
    ) => IFuture<any> = undefined as any;
    private readonly _dart_every: (
        test: (element: any) => boolean
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_any: (
        test: (element: any) => boolean
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_cast: <R>() => IStream<R> = undefined as any;
    private readonly _dart_toList: () => IFuture<IList<any>> = undefined as any;
    private readonly _dart_toSet: () => IFuture<ISet<any>> = undefined as any;
    private readonly _dart_drain: <E>(
        futureValue?: E | undefined
    ) => IFuture<E> = undefined as any;
    private readonly _dart_take: (count: number) => IStream<any> =
        undefined as any;
    private readonly _dart_takeWhile: (
        test: (element: any) => boolean
    ) => IStream<any> = undefined as any;
    private readonly _dart_skip: (count: number) => IStream<any> =
        undefined as any;
    private readonly _dart_skipWhile: (
        test: (element: any) => boolean
    ) => IStream<any> = undefined as any;
    private readonly _dart_distinct: (
        equals?: (previous: any, next: any) => boolean
    ) => IStream<any> = undefined as any;
    private readonly _dart_firstWhere: (
        test: (element: any) => boolean,
        props: { orElse?: () => any | undefined }
    ) => IFuture<any> = undefined as any;
    private readonly _dart_lastWhere: (
        test: (element: any) => boolean,
        props: { orElse?: () => any | undefined }
    ) => IFuture<any> = undefined as any;
    private readonly _dart_singleWhere: (
        test: (element: any) => boolean,
        props: { orElse?: () => any | undefined }
    ) => IFuture<any> = undefined as any;
    private readonly _dart_elementAt: (index: number) => IFuture<any> =
        undefined as any;
    private readonly _dart_timeout: (
        timeLimit: IDuration,
        props: { onTimeout?: (sink: IEventSink<any>) => void | undefined }
    ) => IStream<any> = undefined as any;
    private readonly _dart_getIsBroadcast: () => boolean = undefined as any;
    private readonly _dart_getLength: () => IFuture<number> = undefined as any;
    private readonly _dart_getIsEmpty: () => IFuture<boolean> =
        undefined as any;
    private readonly _dart_getFirst: () => IFuture<any> = undefined as any;
    private readonly _dart_getLast: () => IFuture<any> = undefined as any;
    private readonly _dart_getSingle: () => IFuture<any> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public listen(
        onData?: (message: any) => void,
        props: {
            cancelOnError?: boolean | undefined;
            onDone?: () => void | undefined;
            onError?: IFunction | undefined;
        }
    ): IStreamSubscription<any> {
        return this._dart_listen(onData, props);
    }
    public close(): void {
        return this._dart_close();
    }
    public getSendPort(): ISendPort {
        return this._dart_getSendPort();
    }
    public asBroadcastStream(props: {
        onCancel?: (subscription: IStreamSubscription<any>) => void | undefined;
        onListen?: (subscription: IStreamSubscription<any>) => void | undefined;
    }): IStream<any> {
        return this._dart_asBroadcastStream(props);
    }
    public where(test: (event: any) => boolean): IStream<any> {
        return this._dart_where(test);
    }
    public map<S>(convert: (event: any) => S): IStream<S> {
        return this._dart_map(convert);
    }
    public asyncMap<E>(convert: (event: any) => IFutureOr<E>): IStream<E> {
        return this._dart_asyncMap(convert);
    }
    public asyncExpand<E>(
        convert: (event: any) => IStream<E> | undefined
    ): IStream<E> {
        return this._dart_asyncExpand(convert);
    }
    public handleError(
        onError: IFunction,
        props: { test?: (error: any) => boolean | undefined }
    ): IStream<any> {
        return this._dart_handleError(onError, props);
    }
    public expand<S>(convert: (element: any) => IIterable<S>): IStream<S> {
        return this._dart_expand(convert);
    }
    public pipe(streamConsumer: IStreamConsumer<any>): IFuture<any> {
        return this._dart_pipe(streamConsumer);
    }
    public transform<S>(
        streamTransformer: IStreamTransformer<any, S>
    ): IStream<S> {
        return this._dart_transform(streamTransformer);
    }
    public reduce(combine: (previous: any, element: any) => any): IFuture<any> {
        return this._dart_reduce(combine);
    }
    public fold<S>(
        initialValue: S,
        combine: (previous: S, element: any) => S
    ): IFuture<S> {
        return this._dart_fold(initialValue, combine);
    }
    public join(separator: string = ""): IFuture<string> {
        return this._dart_join(separator);
    }
    public contains(needle?: Object | undefined): IFuture<boolean> {
        return this._dart_contains(needle);
    }
    public forEach(action: (element: any) => void): IFuture<any> {
        return this._dart_forEach(action);
    }
    public every(test: (element: any) => boolean): IFuture<boolean> {
        return this._dart_every(test);
    }
    public any(test: (element: any) => boolean): IFuture<boolean> {
        return this._dart_any(test);
    }
    public cast<R>(): IStream<R> {
        return this._dart_cast();
    }
    public toList(): IFuture<IList<any>> {
        return this._dart_toList();
    }
    public toSet(): IFuture<ISet<any>> {
        return this._dart_toSet();
    }
    public drain<E>(futureValue?: E | undefined): IFuture<E> {
        return this._dart_drain(futureValue);
    }
    public take(count: number): IStream<any> {
        return this._dart_take(count);
    }
    public takeWhile(test: (element: any) => boolean): IStream<any> {
        return this._dart_takeWhile(test);
    }
    public skip(count: number): IStream<any> {
        return this._dart_skip(count);
    }
    public skipWhile(test: (element: any) => boolean): IStream<any> {
        return this._dart_skipWhile(test);
    }
    public distinct(
        equals?: (previous: any, next: any) => boolean
    ): IStream<any> {
        return this._dart_distinct(equals);
    }
    public firstWhere(
        test: (element: any) => boolean,
        props: { orElse?: () => any | undefined }
    ): IFuture<any> {
        return this._dart_firstWhere(test, props);
    }
    public lastWhere(
        test: (element: any) => boolean,
        props: { orElse?: () => any | undefined }
    ): IFuture<any> {
        return this._dart_lastWhere(test, props);
    }
    public singleWhere(
        test: (element: any) => boolean,
        props: { orElse?: () => any | undefined }
    ): IFuture<any> {
        return this._dart_singleWhere(test, props);
    }
    public elementAt(index: number): IFuture<any> {
        return this._dart_elementAt(index);
    }
    public timeout(
        timeLimit: IDuration,
        props: { onTimeout?: (sink: IEventSink<any>) => void | undefined }
    ): IStream<any> {
        return this._dart_timeout(timeLimit, props);
    }
    public getIsBroadcast(): boolean {
        return this._dart_getIsBroadcast();
    }
    public getLength(): IFuture<number> {
        return this._dart_getLength();
    }
    public getIsEmpty(): IFuture<boolean> {
        return this._dart_getIsEmpty();
    }
    public getFirst(): IFuture<any> {
        return this._dart_getFirst();
    }
    public getLast(): IFuture<any> {
        return this._dart_getLast();
    }
    public getSingle(): IFuture<any> {
        return this._dart_getSingle();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
