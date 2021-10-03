import { IEfficientLengthIterable } from "../_internal/efficientLengthIterable";
import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { I_DoubleLinkedQueueIterator } from "./_doubleLinkedQueueIterator";
import { IDoubleLinkedQueueEntry } from "./doubleLinkedQueueEntry";
import { IQueue } from "./queue";
declare const dart: {
    collection: {
        doubleLinkedQueue: <E>(
            this: void,
            doubleLinkedQueue: IDoubleLinkedQueue<E>
        ) => IDoubleLinkedQueue<E>;
        doubleLinkedQueueFrom: <E>(
            elements: IIterable<any>
        ) => IDoubleLinkedQueue<E>;
        doubleLinkedQueueOf: <E>(
            elements: IIterable<E>
        ) => IDoubleLinkedQueue<E>;
    };
};
export interface IDoubleLinkedQueue<E> {
    cast: <R>() => IQueue<R>;
    getLength: () => number;
    addLast: (value: E) => void;
    addFirst: (value: E) => void;
    add: (value: E) => void;
    addAll: (iterable: IIterable<E>) => void;
    removeLast: () => E;
    removeFirst: () => E;
    remove: (o?: Object | undefined) => boolean;
    removeWhere: (test: (element: E) => boolean) => void;
    retainWhere: (test: (element: E) => boolean) => void;
    getFirst: () => E;
    getLast: () => E;
    getSingle: () => E;
    firstEntry: () => IDoubleLinkedQueueEntry<E> | undefined;
    lastEntry: () => IDoubleLinkedQueueEntry<E> | undefined;
    getIsEmpty: () => boolean;
    clear: () => void;
    forEachEntry: (
        action: (element: IDoubleLinkedQueueEntry<E>) => void
    ) => void;
    getIterator: () => I_DoubleLinkedQueueIterator<E>;
    toString: () => string;
    followedBy: (other: IIterable<E>) => IIterable<E>;
    map: <T>(f: (e: E) => T) => IIterable<T>;
    where: (test: (element: E) => boolean) => IIterable<E>;
    whereType: <T>() => IIterable<T>;
    expand: <T>(f: (element: E) => IIterable<T>) => IIterable<T>;
    contains: (element?: Object | undefined) => boolean;
    forEach: (f: (element: E) => void) => void;
    reduce: (combine: (value: E, element: E) => E) => E;
    fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: E) => T
    ) => T;
    every: (test: (element: E) => boolean) => boolean;
    join: (separator: string) => string;
    any: (test: (element: E) => boolean) => boolean;
    toList: (props: { growable: boolean }) => IList<E>;
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
    elementAt: (index: number) => E;
    getIsNotEmpty: () => boolean;
    getHashCode: () => number;
}
export class DoubleLinkedQueue<E>
    implements IIterable<E>, IQueue<E>, IEfficientLengthIterable<E>
{
    public constructor() {
        dart.collection.doubleLinkedQueue(this);
    }
    public static from<E>(elements: IIterable<any>): IDoubleLinkedQueue<E> {
        return dart.collection.doubleLinkedQueueFrom(elements);
    }
    public static of<E>(elements: IIterable<E>): IDoubleLinkedQueue<E> {
        return dart.collection.doubleLinkedQueueOf(elements);
    }
    private readonly _dart_cast: <R>() => IQueue<R> = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_addLast: (value: E) => void = undefined as any;
    private readonly _dart_addFirst: (value: E) => void = undefined as any;
    private readonly _dart_add: (value: E) => void = undefined as any;
    private readonly _dart_addAll: (iterable: IIterable<E>) => void =
        undefined as any;
    private readonly _dart_removeLast: () => E = undefined as any;
    private readonly _dart_removeFirst: () => E = undefined as any;
    private readonly _dart_remove: (o?: Object | undefined) => boolean =
        undefined as any;
    private readonly _dart_removeWhere: (
        test: (element: E) => boolean
    ) => void = undefined as any;
    private readonly _dart_retainWhere: (
        test: (element: E) => boolean
    ) => void = undefined as any;
    private readonly _dart_getFirst: () => E = undefined as any;
    private readonly _dart_getLast: () => E = undefined as any;
    private readonly _dart_getSingle: () => E = undefined as any;
    private readonly _dart_firstEntry: () =>
        | IDoubleLinkedQueueEntry<E>
        | undefined = undefined as any;
    private readonly _dart_lastEntry: () =>
        | IDoubleLinkedQueueEntry<E>
        | undefined = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_forEachEntry: (
        action: (element: IDoubleLinkedQueueEntry<E>) => void
    ) => void = undefined as any;
    private readonly _dart_getIterator: () => I_DoubleLinkedQueueIterator<E> =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
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
    private readonly _dart_forEach: (f: (element: E) => void) => void =
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
    private readonly _dart_toList: (props: { growable: boolean }) => IList<E> =
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
    private readonly _dart_elementAt: (index: number) => E = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public cast<R>(): IQueue<R> {
        return this._dart_cast();
    }
    public getLength(): number {
        return this._dart_getLength();
    }
    public addLast(value: E): void {
        return this._dart_addLast(value);
    }
    public addFirst(value: E): void {
        return this._dart_addFirst(value);
    }
    public add(value: E): void {
        return this._dart_add(value);
    }
    public addAll(iterable: IIterable<E>): void {
        return this._dart_addAll(iterable);
    }
    public removeLast(): E {
        return this._dart_removeLast();
    }
    public removeFirst(): E {
        return this._dart_removeFirst();
    }
    public remove(o?: Object | undefined): boolean {
        return this._dart_remove(o);
    }
    public removeWhere(test: (element: E) => boolean): void {
        return this._dart_removeWhere(test);
    }
    public retainWhere(test: (element: E) => boolean): void {
        return this._dart_retainWhere(test);
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
    public firstEntry(): IDoubleLinkedQueueEntry<E> | undefined {
        return this._dart_firstEntry();
    }
    public lastEntry(): IDoubleLinkedQueueEntry<E> | undefined {
        return this._dart_lastEntry();
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public clear(): void {
        return this._dart_clear();
    }
    public forEachEntry(
        action: (element: IDoubleLinkedQueueEntry<E>) => void
    ): void {
        return this._dart_forEachEntry(action);
    }
    public getIterator(): I_DoubleLinkedQueueIterator<E> {
        return this._dart_getIterator();
    }
    public toString(): string {
        return this._dart_toString();
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
    public forEach(f: (element: E) => void): void {
        return this._dart_forEach(f);
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
    public toList(props: { growable?: boolean }): IList<E> {
        return this._dart_toList({
            ...toListDefaultProps,
            ...props,
        });
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
    public elementAt(index: number): E {
        return this._dart_elementAt(index);
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
