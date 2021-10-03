import { IEfficientLengthIterable } from "../_internal/efficientLengthIterable";
import { IUnmodifiableListBase } from "../_internal/unmodifiableListBase";
import { IUnmodifiableListMixin } from "../_internal/unmodifiableListMixin";
import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { IRandom } from "../math/random";
import { IListMixin } from "./listMixin";
declare const dart: {
    collection: {
        unmodifiableListView: <E>(
            this: void,
            unmodifiableListView: IUnmodifiableListView<E>,
            source: IIterable<E>
        ) => IUnmodifiableListView<E>;
    };
};
export interface IUnmodifiableListView<E> {
    lastIndexOf: (
        element?: Object | undefined,
        start?: number | undefined
    ) => number;
    indexOf: (element: Object | undefined, start: number) => number;
    cast: <R>() => IList<R>;
    getLength: () => number;
    setAll: (at: number, iterable: IIterable<E>) => void;
    add: (value: E) => void;
    insert: (index: number, element: E) => void;
    insertAll: (at: number, iterable: IIterable<E>) => void;
    addAll: (iterable: IIterable<E>) => void;
    remove: (element?: Object | undefined) => boolean;
    removeWhere: (test: (element: E) => boolean) => void;
    retainWhere: (test: (element: E) => boolean) => void;
    sort: (compare?: (a: E, b: E) => number) => void;
    shuffle: (random?: IRandom | undefined) => void;
    clear: () => void;
    removeAt: (index: number) => E;
    removeLast: () => E;
    setRange: (
        start: number,
        end: number,
        iterable: IIterable<E>,
        skipCount: number
    ) => void;
    removeRange: (start: number, end: number) => void;
    replaceRange: (start: number, end: number, iterable: IIterable<E>) => void;
    fillRange: (start: number, end: number, fillValue?: E | undefined) => void;
    setLength: (newLength: number) => void;
    setFirst: (element: E) => void;
    setLast: (element: E) => void;
    indexWhere: (test: (element: E) => boolean, start: number) => number;
    lastIndexWhere: (
        test: (element: E) => boolean,
        start?: number | undefined
    ) => number;
    sublist: (start: number, end?: number | undefined) => IList<E>;
    getRange: (start: number, end: number) => IIterable<E>;
    asMap: () => { [index: number]: E };
    getReversed: () => IIterable<E>;
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
    toString: () => string;
    getIterator: () => IIterator<E>;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getFirst: () => E;
    getLast: () => E;
    getSingle: () => E;
    getHashCode: () => number;
}
export class UnmodifiableListView<E>
    implements
        Omit<
            IUnmodifiableListBase<E>,
            | "setAll"
            | "add"
            | "insertAll"
            | "remove"
            | "sort"
            | "shuffle"
            | "clear"
            | "setRange"
            | "removeRange"
            | "replaceRange"
            | "fillRange"
            | "length="
            | "first="
            | "last="
            | "cast"
            | "indexOf"
            | "indexWhere"
            | "lastIndexWhere"
            | "lastIndexOf"
            | "sublist"
            | "getRange"
            | "asMap"
            | "reversed"
            | "map"
            | "whereType"
            | "contains"
            | "forEach"
            | "reduce"
            | "join"
            | "toList"
            | "takeWhile"
            | "skipWhile"
            | "toString"
            | "iterator"
            | "isEmpty"
            | "isNotEmpty"
        >,
        IUnmodifiableListMixin<E>,
        IListMixin<E>,
        IList<E>,
        IEfficientLengthIterable<E>
{
    public constructor(source: IIterable<E>) {
        dart.collection.unmodifiableListView(this, source);
    }
    private readonly _dart_lastIndexOf: (
        element?: Object | undefined,
        start?: number | undefined
    ) => number = undefined as any;
    private readonly _dart_indexOf: (
        element: Object | undefined,
        start: number
    ) => number = undefined as any;
    private readonly _dart_cast: <R>() => IList<R> = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_setAll: (
        at: number,
        iterable: IIterable<E>
    ) => void = undefined as any;
    private readonly _dart_add: (value: E) => void = undefined as any;
    private readonly _dart_insert: (index: number, element: E) => void =
        undefined as any;
    private readonly _dart_insertAll: (
        at: number,
        iterable: IIterable<E>
    ) => void = undefined as any;
    private readonly _dart_addAll: (iterable: IIterable<E>) => void =
        undefined as any;
    private readonly _dart_remove: (element?: Object | undefined) => boolean =
        undefined as any;
    private readonly _dart_removeWhere: (
        test: (element: E) => boolean
    ) => void = undefined as any;
    private readonly _dart_retainWhere: (
        test: (element: E) => boolean
    ) => void = undefined as any;
    private readonly _dart_sort: (compare?: (a: E, b: E) => number) => void =
        undefined as any;
    private readonly _dart_shuffle: (random?: IRandom | undefined) => void =
        undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_removeAt: (index: number) => E = undefined as any;
    private readonly _dart_removeLast: () => E = undefined as any;
    private readonly _dart_setRange: (
        start: number,
        end: number,
        iterable: IIterable<E>,
        skipCount: number
    ) => void = undefined as any;
    private readonly _dart_removeRange: (start: number, end: number) => void =
        undefined as any;
    private readonly _dart_replaceRange: (
        start: number,
        end: number,
        iterable: IIterable<E>
    ) => void = undefined as any;
    private readonly _dart_fillRange: (
        start: number,
        end: number,
        fillValue?: E | undefined
    ) => void = undefined as any;
    private readonly _dart_setLength: (newLength: number) => void =
        undefined as any;
    private readonly _dart_setFirst: (element: E) => void = undefined as any;
    private readonly _dart_setLast: (element: E) => void = undefined as any;
    private readonly _dart_indexWhere: (
        test: (element: E) => boolean,
        start: number
    ) => number = undefined as any;
    private readonly _dart_lastIndexWhere: (
        test: (element: E) => boolean,
        start?: number | undefined
    ) => number = undefined as any;
    private readonly _dart_sublist: (
        start: number,
        end?: number | undefined
    ) => IList<E> = undefined as any;
    private readonly _dart_getRange: (
        start: number,
        end: number
    ) => IIterable<E> = undefined as any;
    private readonly _dart_asMap: () => { [index: number]: E } =
        undefined as any;
    private readonly _dart_getReversed: () => IIterable<E> = undefined as any;
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
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getIterator: () => IIterator<E> = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getFirst: () => E = undefined as any;
    private readonly _dart_getLast: () => E = undefined as any;
    private readonly _dart_getSingle: () => E = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public lastIndexOf(
        element?: Object | undefined,
        start?: number | undefined
    ): number {
        return this._dart_lastIndexOf(element, start);
    }
    public indexOf(element: Object | undefined, start: number = 0): number {
        return this._dart_indexOf(element, start);
    }
    public cast<R>(): IList<R> {
        return this._dart_cast();
    }
    public getLength(): number {
        return this._dart_getLength();
    }
    public setAll(at: number, iterable: IIterable<E>): void {
        return this._dart_setAll(at, iterable);
    }
    public add(value: E): void {
        return this._dart_add(value);
    }
    public insert(index: number, element: E): void {
        return this._dart_insert(index, element);
    }
    public insertAll(at: number, iterable: IIterable<E>): void {
        return this._dart_insertAll(at, iterable);
    }
    public addAll(iterable: IIterable<E>): void {
        return this._dart_addAll(iterable);
    }
    public remove(element?: Object | undefined): boolean {
        return this._dart_remove(element);
    }
    public removeWhere(test: (element: E) => boolean): void {
        return this._dart_removeWhere(test);
    }
    public retainWhere(test: (element: E) => boolean): void {
        return this._dart_retainWhere(test);
    }
    public sort(compare?: (a: E, b: E) => number): void {
        return this._dart_sort(compare);
    }
    public shuffle(random?: IRandom | undefined): void {
        return this._dart_shuffle(random);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public removeAt(index: number): E {
        return this._dart_removeAt(index);
    }
    public removeLast(): E {
        return this._dart_removeLast();
    }
    public setRange(
        start: number,
        end: number,
        iterable: IIterable<E>,
        skipCount: number = 0
    ): void {
        return this._dart_setRange(start, end, iterable, skipCount);
    }
    public removeRange(start: number, end: number): void {
        return this._dart_removeRange(start, end);
    }
    public replaceRange(
        start: number,
        end: number,
        iterable: IIterable<E>
    ): void {
        return this._dart_replaceRange(start, end, iterable);
    }
    public fillRange(
        start: number,
        end: number,
        fillValue?: E | undefined
    ): void {
        return this._dart_fillRange(start, end, fillValue);
    }
    public setLength(newLength: number): void {
        return this._dart_setLength(newLength);
    }
    public setFirst(element: E): void {
        return this._dart_setFirst(element);
    }
    public setLast(element: E): void {
        return this._dart_setLast(element);
    }
    public indexWhere(
        test: (element: E) => boolean,
        start: number = 0
    ): number {
        return this._dart_indexWhere(test, start);
    }
    public lastIndexWhere(
        test: (element: E) => boolean,
        start?: number | undefined
    ): number {
        return this._dart_lastIndexWhere(test, start);
    }
    public sublist(start: number, end?: number | undefined): IList<E> {
        return this._dart_sublist(start, end);
    }
    public getRange(start: number, end: number): IIterable<E> {
        return this._dart_getRange(start, end);
    }
    public asMap(): { [index: number]: E } {
        return this._dart_asMap();
    }
    public getReversed(): IIterable<E> {
        return this._dart_getReversed();
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
    public toString(): string {
        return this._dart_toString();
    }
    public getIterator(): IIterator<E> {
        return this._dart_getIterator();
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getIsNotEmpty(): boolean {
        return this._dart_getIsNotEmpty();
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
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toListDefaultProps = {
    growable: true,
};
