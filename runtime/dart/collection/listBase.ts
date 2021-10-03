import { IEfficientLengthIterable } from "../_internal/efficientLengthIterable";
import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { IRandom } from "../math/random";
import { IListMixin } from "./listMixin";
declare const dart: {
    collection: {
        listBaseListToString: (list: IList<any>) => string;
    };
};
export interface IListBase<E> {
    elementAt: (index: number) => E;
    followedBy: (other: IIterable<E>) => IIterable<E>;
    forEach: (action: (element: E) => void) => void;
    contains: (element?: Object | undefined) => boolean;
    every: (test: (element: E) => boolean) => boolean;
    any: (test: (element: E) => boolean) => boolean;
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
    join: (separator: string) => string;
    where: (test: (element: E) => boolean) => IIterable<E>;
    whereType: <T>() => IIterable<T>;
    map: <T>(f: (element: E) => T) => IIterable<T>;
    expand: <T>(f: (element: E) => IIterable<T>) => IIterable<T>;
    reduce: (combine: (previousValue: E, element: E) => E) => E;
    fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: E) => T
    ) => T;
    skip: (count: number) => IIterable<E>;
    skipWhile: (test: (element: E) => boolean) => IIterable<E>;
    take: (count: number) => IIterable<E>;
    takeWhile: (test: (element: E) => boolean) => IIterable<E>;
    toList: (props: { growable: boolean }) => IList<E>;
    toSet: () => ISet<E>;
    add: (element: E) => void;
    addAll: (iterable: IIterable<E>) => void;
    remove: (element?: Object | undefined) => boolean;
    removeWhere: (test: (element: E) => boolean) => void;
    retainWhere: (test: (element: E) => boolean) => void;
    clear: () => void;
    cast: <R>() => IList<R>;
    removeLast: () => E;
    sort: (compare?: (a: E, b: E) => number) => void;
    shuffle: (random?: IRandom | undefined) => void;
    asMap: () => { [index: number]: E };
    sublist: (start: number, end?: number | undefined) => IList<E>;
    getRange: (start: number, end: number) => IIterable<E>;
    removeRange: (start: number, end: number) => void;
    fillRange: (start: number, end: number, fill?: E | undefined) => void;
    setRange: (
        start: number,
        end: number,
        iterable: IIterable<E>,
        skipCount: number
    ) => void;
    replaceRange: (
        start: number,
        end: number,
        newContents: IIterable<E>
    ) => void;
    indexOf: (element: Object | undefined, start: number) => number;
    indexWhere: (test: (element: E) => boolean, start: number) => number;
    lastIndexOf: (
        element?: Object | undefined,
        start?: number | undefined
    ) => number;
    lastIndexWhere: (
        test: (element: E) => boolean,
        start?: number | undefined
    ) => number;
    insert: (index: number, element: E) => void;
    removeAt: (index: number) => E;
    insertAll: (index: number, iterable: IIterable<E>) => void;
    setAll: (index: number, iterable: IIterable<E>) => void;
    toString: () => string;
    getIterator: () => IIterator<E>;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getFirst: () => E;
    setFirst: (value: E) => void;
    getLast: () => E;
    setLast: (value: E) => void;
    getSingle: () => E;
    getReversed: () => IIterable<E>;
    getLength: () => number;
    setLength: (newLength: number) => void;
    getHashCode: () => number;
}
export class ListBase<E>
    implements IListMixin<E>, IList<E>, IEfficientLengthIterable<E>
{
    public static listToString(list: IList<any>): string {
        return dart.collection.listBaseListToString(list);
    }
    private readonly _dart_elementAt: (index: number) => E = undefined as any;
    private readonly _dart_followedBy: (other: IIterable<E>) => IIterable<E> =
        undefined as any;
    private readonly _dart_forEach: (action: (element: E) => void) => void =
        undefined as any;
    private readonly _dart_contains: (element?: Object | undefined) => boolean =
        undefined as any;
    private readonly _dart_every: (test: (element: E) => boolean) => boolean =
        undefined as any;
    private readonly _dart_any: (test: (element: E) => boolean) => boolean =
        undefined as any;
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
    private readonly _dart_join: (separator: string) => string =
        undefined as any;
    private readonly _dart_where: (
        test: (element: E) => boolean
    ) => IIterable<E> = undefined as any;
    private readonly _dart_whereType: <T>() => IIterable<T> = undefined as any;
    private readonly _dart_map: <T>(f: (element: E) => T) => IIterable<T> =
        undefined as any;
    private readonly _dart_expand: <T>(
        f: (element: E) => IIterable<T>
    ) => IIterable<T> = undefined as any;
    private readonly _dart_reduce: (
        combine: (previousValue: E, element: E) => E
    ) => E = undefined as any;
    private readonly _dart_fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: E) => T
    ) => T = undefined as any;
    private readonly _dart_skip: (count: number) => IIterable<E> =
        undefined as any;
    private readonly _dart_skipWhile: (
        test: (element: E) => boolean
    ) => IIterable<E> = undefined as any;
    private readonly _dart_take: (count: number) => IIterable<E> =
        undefined as any;
    private readonly _dart_takeWhile: (
        test: (element: E) => boolean
    ) => IIterable<E> = undefined as any;
    private readonly _dart_toList: (props: { growable: boolean }) => IList<E> =
        undefined as any;
    private readonly _dart_toSet: () => ISet<E> = undefined as any;
    private readonly _dart_add: (element: E) => void = undefined as any;
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
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_cast: <R>() => IList<R> = undefined as any;
    private readonly _dart_removeLast: () => E = undefined as any;
    private readonly _dart_sort: (compare?: (a: E, b: E) => number) => void =
        undefined as any;
    private readonly _dart_shuffle: (random?: IRandom | undefined) => void =
        undefined as any;
    private readonly _dart_asMap: () => { [index: number]: E } =
        undefined as any;
    private readonly _dart_sublist: (
        start: number,
        end?: number | undefined
    ) => IList<E> = undefined as any;
    private readonly _dart_getRange: (
        start: number,
        end: number
    ) => IIterable<E> = undefined as any;
    private readonly _dart_removeRange: (start: number, end: number) => void =
        undefined as any;
    private readonly _dart_fillRange: (
        start: number,
        end: number,
        fill?: E | undefined
    ) => void = undefined as any;
    private readonly _dart_setRange: (
        start: number,
        end: number,
        iterable: IIterable<E>,
        skipCount: number
    ) => void = undefined as any;
    private readonly _dart_replaceRange: (
        start: number,
        end: number,
        newContents: IIterable<E>
    ) => void = undefined as any;
    private readonly _dart_indexOf: (
        element: Object | undefined,
        start: number
    ) => number = undefined as any;
    private readonly _dart_indexWhere: (
        test: (element: E) => boolean,
        start: number
    ) => number = undefined as any;
    private readonly _dart_lastIndexOf: (
        element?: Object | undefined,
        start?: number | undefined
    ) => number = undefined as any;
    private readonly _dart_lastIndexWhere: (
        test: (element: E) => boolean,
        start?: number | undefined
    ) => number = undefined as any;
    private readonly _dart_insert: (index: number, element: E) => void =
        undefined as any;
    private readonly _dart_removeAt: (index: number) => E = undefined as any;
    private readonly _dart_insertAll: (
        index: number,
        iterable: IIterable<E>
    ) => void = undefined as any;
    private readonly _dart_setAll: (
        index: number,
        iterable: IIterable<E>
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getIterator: () => IIterator<E> = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getFirst: () => E = undefined as any;
    private readonly _dart_setFirst: (value: E) => void = undefined as any;
    private readonly _dart_getLast: () => E = undefined as any;
    private readonly _dart_setLast: (value: E) => void = undefined as any;
    private readonly _dart_getSingle: () => E = undefined as any;
    private readonly _dart_getReversed: () => IIterable<E> = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_setLength: (newLength: number) => void =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public elementAt(index: number): E {
        return this._dart_elementAt(index);
    }
    public followedBy(other: IIterable<E>): IIterable<E> {
        return this._dart_followedBy(other);
    }
    public forEach(action: (element: E) => void): void {
        return this._dart_forEach(action);
    }
    public contains(element?: Object | undefined): boolean {
        return this._dart_contains(element);
    }
    public every(test: (element: E) => boolean): boolean {
        return this._dart_every(test);
    }
    public any(test: (element: E) => boolean): boolean {
        return this._dart_any(test);
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
    public join(separator: string = ""): string {
        return this._dart_join(separator);
    }
    public where(test: (element: E) => boolean): IIterable<E> {
        return this._dart_where(test);
    }
    public whereType<T>(): IIterable<T> {
        return this._dart_whereType();
    }
    public map<T>(f: (element: E) => T): IIterable<T> {
        return this._dart_map(f);
    }
    public expand<T>(f: (element: E) => IIterable<T>): IIterable<T> {
        return this._dart_expand(f);
    }
    public reduce(combine: (previousValue: E, element: E) => E): E {
        return this._dart_reduce(combine);
    }
    public fold<T>(
        initialValue: T,
        combine: (previousValue: T, element: E) => T
    ): T {
        return this._dart_fold(initialValue, combine);
    }
    public skip(count: number): IIterable<E> {
        return this._dart_skip(count);
    }
    public skipWhile(test: (element: E) => boolean): IIterable<E> {
        return this._dart_skipWhile(test);
    }
    public take(count: number): IIterable<E> {
        return this._dart_take(count);
    }
    public takeWhile(test: (element: E) => boolean): IIterable<E> {
        return this._dart_takeWhile(test);
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
    public add(element: E): void {
        return this._dart_add(element);
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
    public clear(): void {
        return this._dart_clear();
    }
    public cast<R>(): IList<R> {
        return this._dart_cast();
    }
    public removeLast(): E {
        return this._dart_removeLast();
    }
    public sort(compare?: (a: E, b: E) => number): void {
        return this._dart_sort(compare);
    }
    public shuffle(random?: IRandom | undefined): void {
        return this._dart_shuffle(random);
    }
    public asMap(): { [index: number]: E } {
        return this._dart_asMap();
    }
    public sublist(start: number, end?: number | undefined): IList<E> {
        return this._dart_sublist(start, end);
    }
    public getRange(start: number, end: number): IIterable<E> {
        return this._dart_getRange(start, end);
    }
    public removeRange(start: number, end: number): void {
        return this._dart_removeRange(start, end);
    }
    public fillRange(start: number, end: number, fill?: E | undefined): void {
        return this._dart_fillRange(start, end, fill);
    }
    public setRange(
        start: number,
        end: number,
        iterable: IIterable<E>,
        skipCount: number = 0
    ): void {
        return this._dart_setRange(start, end, iterable, skipCount);
    }
    public replaceRange(
        start: number,
        end: number,
        newContents: IIterable<E>
    ): void {
        return this._dart_replaceRange(start, end, newContents);
    }
    public indexOf(element: Object | undefined, start: number = 0): number {
        return this._dart_indexOf(element, start);
    }
    public indexWhere(
        test: (element: E) => boolean,
        start: number = 0
    ): number {
        return this._dart_indexWhere(test, start);
    }
    public lastIndexOf(
        element?: Object | undefined,
        start?: number | undefined
    ): number {
        return this._dart_lastIndexOf(element, start);
    }
    public lastIndexWhere(
        test: (element: E) => boolean,
        start?: number | undefined
    ): number {
        return this._dart_lastIndexWhere(test, start);
    }
    public insert(index: number, element: E): void {
        return this._dart_insert(index, element);
    }
    public removeAt(index: number): E {
        return this._dart_removeAt(index);
    }
    public insertAll(index: number, iterable: IIterable<E>): void {
        return this._dart_insertAll(index, iterable);
    }
    public setAll(index: number, iterable: IIterable<E>): void {
        return this._dart_setAll(index, iterable);
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
    public setFirst(value: E): void {
        return this._dart_setFirst(value);
    }
    public getLast(): E {
        return this._dart_getLast();
    }
    public setLast(value: E): void {
        return this._dart_setLast(value);
    }
    public getSingle(): E {
        return this._dart_getSingle();
    }
    public getReversed(): IIterable<E> {
        return this._dart_getReversed();
    }
    public getLength(): number {
        return this._dart_getLength();
    }
    public setLength(newLength: number): void {
        return this._dart_setLength(newLength);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toListDefaultProps = {
    growable: true,
};
