import { IEfficientLengthIterable } from "../_internal/efficientLengthIterable";
import { IListIterable } from "../_internal/listIterable";
import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { IQueue } from "./queue";
declare const dart: {
    collection: {
        listQueue: <E>(
            this: void,
            listQueue: IListQueue<E>,
            initialCapacity?: number | undefined
        ) => IListQueue<E>;
        listQueueFrom: <E>(elements: IIterable<any>) => IListQueue<E>;
        listQueueOf: <E>(elements: IIterable<E>) => IListQueue<E>;
    };
};
export interface IListQueue<E> {
    cast: <R>() => IQueue<R>;
    getIterator: () => IIterator<E>;
    forEach: (f: (element: E) => void) => void;
    getIsEmpty: () => boolean;
    getLength: () => number;
    getFirst: () => E;
    getLast: () => E;
    getSingle: () => E;
    elementAt: (index: number) => E;
    toList: (props: { growable: boolean }) => IList<E>;
    add: (value: E) => void;
    addAll: (elements: IIterable<E>) => void;
    remove: (value?: Object | undefined) => boolean;
    removeWhere: (test: (element: E) => boolean) => void;
    retainWhere: (test: (element: E) => boolean) => void;
    clear: () => void;
    toString: () => string;
    addLast: (value: E) => void;
    addFirst: (value: E) => void;
    removeFirst: () => E;
    removeLast: () => E;
    followedBy: (other: IIterable<E>) => IIterable<E>;
    map: <T>(f: (e: E) => T) => IIterable<T>;
    where: (test: (element: E) => boolean) => IIterable<E>;
    whereType: <T>() => IIterable<T>;
    expand: <T>(f: (element: E) => IIterable<T>) => IIterable<T>;
    contains: (element?: Object | undefined) => boolean;
    reduce: (combine: (value: E, element: E) => E) => E;
    fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: E) => T
    ) => T;
    every: (test: (element: E) => boolean) => boolean;
    join: (separator: string) => string;
    any: (test: (element: E) => boolean) => boolean;
    toSet: () => ISet<E>;
    take: (count: number) => IIterable<E>;
    takeWhile: (test: (value: E) => boolean) => IIterable<E>;
    skip: (count: number) => IIterable<E>;
    skipWhile: (test: (value: E) => boolean) => IIterable<E>;
    firstWhere: (
        test: (element: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    lastWhere: (
        test: (element: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    singleWhere: (
        test: (element: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    getIsNotEmpty: () => boolean;
    getHashCode: () => number;
}
export class ListQueue<E>
    implements IListIterable<E>, IQueue<E>, IEfficientLengthIterable<E>
{
    public static _INITIAL_CAPACITY = 8;
    public constructor(initialCapacity?: number | undefined) {
        dart.collection.listQueue(this, initialCapacity);
    }
    public static from<E>(elements: IIterable<any>): IListQueue<E> {
        return dart.collection.listQueueFrom(elements);
    }
    public static of<E>(elements: IIterable<E>): IListQueue<E> {
        return dart.collection.listQueueOf(elements);
    }
    private readonly _dart_cast: <R>() => IQueue<R> = undefined as any;
    private readonly _dart_getIterator: () => IIterator<E> = undefined as any;
    private readonly _dart_forEach: (f: (element: E) => void) => void =
        undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_getFirst: () => E = undefined as any;
    private readonly _dart_getLast: () => E = undefined as any;
    private readonly _dart_getSingle: () => E = undefined as any;
    private readonly _dart_elementAt: (index: number) => E = undefined as any;
    private readonly _dart_toList: (props: { growable: boolean }) => IList<E> =
        undefined as any;
    private readonly _dart_add: (value: E) => void = undefined as any;
    private readonly _dart_addAll: (elements: IIterable<E>) => void =
        undefined as any;
    private readonly _dart_remove: (value?: Object | undefined) => boolean =
        undefined as any;
    private readonly _dart_removeWhere: (
        test: (element: E) => boolean
    ) => void = undefined as any;
    private readonly _dart_retainWhere: (
        test: (element: E) => boolean
    ) => void = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_addLast: (value: E) => void = undefined as any;
    private readonly _dart_addFirst: (value: E) => void = undefined as any;
    private readonly _dart_removeFirst: () => E = undefined as any;
    private readonly _dart_removeLast: () => E = undefined as any;
    private readonly _dart_followedBy: (other: IIterable<E>) => IIterable<E> =
        undefined as any;
    private readonly _dart_map: <T>(f: (e: E) => T) => IIterable<T> =
        undefined as any;
    private readonly _dart_where: (
        test: (element: E) => boolean
    ) => IIterable<E> = undefined as any;
    private readonly _dart_whereType: <T>() => IIterable<T> = undefined as any;
    private readonly _dart_expand: <T>(
        f: (element: E) => IIterable<T>
    ) => IIterable<T> = undefined as any;
    private readonly _dart_contains: (element?: Object | undefined) => boolean =
        undefined as any;
    private readonly _dart_reduce: (combine: (value: E, element: E) => E) => E =
        undefined as any;
    private readonly _dart_fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: E) => T
    ) => T = undefined as any;
    private readonly _dart_every: (test: (element: E) => boolean) => boolean =
        undefined as any;
    private readonly _dart_join: (separator: string) => string =
        undefined as any;
    private readonly _dart_any: (test: (element: E) => boolean) => boolean =
        undefined as any;
    private readonly _dart_toSet: () => ISet<E> = undefined as any;
    private readonly _dart_take: (count: number) => IIterable<E> =
        undefined as any;
    private readonly _dart_takeWhile: (
        test: (value: E) => boolean
    ) => IIterable<E> = undefined as any;
    private readonly _dart_skip: (count: number) => IIterable<E> =
        undefined as any;
    private readonly _dart_skipWhile: (
        test: (value: E) => boolean
    ) => IIterable<E> = undefined as any;
    private readonly _dart_firstWhere: (
        test: (element: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E = undefined as any;
    private readonly _dart_lastWhere: (
        test: (element: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E = undefined as any;
    private readonly _dart_singleWhere: (
        test: (element: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public cast<R>(): IQueue<R> {
        return this._dart_cast();
    }
    public getIterator(): IIterator<E> {
        return this._dart_getIterator();
    }
    public forEach(f: (element: E) => void): void {
        return this._dart_forEach(f);
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getLength(): number {
        return this._dart_getLength();
    }
    public getFirst(): E {
        return this._dart_getFirst();
    }
    public getLast(): E {
        return this._dart_getLast();
    }
    public getSingle(): E {
        return this._dart_getSingle();
    }
    public elementAt(index: number): E {
        return this._dart_elementAt(index);
    }
    public toList(props: { growable?: boolean }): IList<E> {
        return this._dart_toList({
            ...toListDefaultProps,
            ...props,
        });
    }
    public add(value: E): void {
        return this._dart_add(value);
    }
    public addAll(elements: IIterable<E>): void {
        return this._dart_addAll(elements);
    }
    public remove(value?: Object | undefined): boolean {
        return this._dart_remove(value);
    }
    public removeWhere(test: (element: E) => boolean): void {
        return this._dart_removeWhere(test);
    }
    public retainWhere(test: (element: E) => boolean): void {
        return this._dart_retainWhere(test);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public addLast(value: E): void {
        return this._dart_addLast(value);
    }
    public addFirst(value: E): void {
        return this._dart_addFirst(value);
    }
    public removeFirst(): E {
        return this._dart_removeFirst();
    }
    public removeLast(): E {
        return this._dart_removeLast();
    }
    public followedBy(other: IIterable<E>): IIterable<E> {
        return this._dart_followedBy(other);
    }
    public map<T>(f: (e: E) => T): IIterable<T> {
        return this._dart_map(f);
    }
    public where(test: (element: E) => boolean): IIterable<E> {
        return this._dart_where(test);
    }
    public whereType<T>(): IIterable<T> {
        return this._dart_whereType();
    }
    public expand<T>(f: (element: E) => IIterable<T>): IIterable<T> {
        return this._dart_expand(f);
    }
    public contains(element?: Object | undefined): boolean {
        return this._dart_contains(element);
    }
    public reduce(combine: (value: E, element: E) => E): E {
        return this._dart_reduce(combine);
    }
    public fold<T>(
        initialValue: T,
        combine: (previousValue: T, element: E) => T
    ): T {
        return this._dart_fold(initialValue, combine);
    }
    public every(test: (element: E) => boolean): boolean {
        return this._dart_every(test);
    }
    public join(separator: string = ""): string {
        return this._dart_join(separator);
    }
    public any(test: (element: E) => boolean): boolean {
        return this._dart_any(test);
    }
    public toSet(): ISet<E> {
        return this._dart_toSet();
    }
    public take(count: number): IIterable<E> {
        return this._dart_take(count);
    }
    public takeWhile(test: (value: E) => boolean): IIterable<E> {
        return this._dart_takeWhile(test);
    }
    public skip(count: number): IIterable<E> {
        return this._dart_skip(count);
    }
    public skipWhile(test: (value: E) => boolean): IIterable<E> {
        return this._dart_skipWhile(test);
    }
    public firstWhere(
        test: (element: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ): E {
        return this._dart_firstWhere(test, props);
    }
    public lastWhere(
        test: (element: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ): E {
        return this._dart_lastWhere(test, props);
    }
    public singleWhere(
        test: (element: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ): E {
        return this._dart_singleWhere(test, props);
    }
    public getIsNotEmpty(): boolean {
        return this._dart_getIsNotEmpty();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toListDefaultProps = {
    growable: true,
};
