import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { ISetMixin } from "./setMixin";
declare const dart: {
    collection: {
        _setBase: <E>(this: void, _setBase: I_SetBase<E>) => I_SetBase<E>;
    };
};
export interface I_SetBase<E> {
    cast: <R>() => ISet<R>;
    difference: (other: ISet<Object | undefined>) => ISet<E>;
    intersection: (other: ISet<Object | undefined>) => ISet<E>;
    toSet: () => ISet<E>;
    add: (value: E) => boolean;
    contains: (element?: Object | undefined) => boolean;
    lookup: (element?: Object | undefined) => E | undefined;
    remove: (value?: Object | undefined) => boolean;
    followedBy: (other: IIterable<E>) => IIterable<E>;
    whereType: <T>() => IIterable<T>;
    clear: () => void;
    addAll: (elements: IIterable<E>) => void;
    removeAll: (elements: IIterable<Object | undefined>) => void;
    retainAll: (elements: IIterable<Object | undefined>) => void;
    removeWhere: (test: (element: E) => boolean) => void;
    retainWhere: (test: (element: E) => boolean) => void;
    containsAll: (other: IIterable<Object | undefined>) => boolean;
    union: (other: ISet<E>) => ISet<E>;
    toList: (props: { growable: boolean }) => IList<E>;
    map: <T>(f: (element: E) => T) => IIterable<T>;
    toString: () => string;
    where: (f: (element: E) => boolean) => IIterable<E>;
    expand: <T>(f: (element: E) => IIterable<T>) => IIterable<T>;
    forEach: (f: (element: E) => void) => void;
    reduce: (combine: (value: E, element: E) => E) => E;
    fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: E) => T
    ) => T;
    every: (f: (element: E) => boolean) => boolean;
    join: (separator: string) => string;
    any: (test: (element: E) => boolean) => boolean;
    take: (n: number) => IIterable<E>;
    takeWhile: (test: (value: E) => boolean) => IIterable<E>;
    skip: (n: number) => IIterable<E>;
    skipWhile: (test: (value: E) => boolean) => IIterable<E>;
    firstWhere: (
        test: (value: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    lastWhere: (
        test: (value: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    singleWhere: (
        test: (value: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    elementAt: (index: number) => E;
    getIterator: () => IIterator<E>;
    getLength: () => number;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getSingle: () => E;
    getFirst: () => E;
    getLast: () => E;
    getHashCode: () => number;
}
export class _SetBase<E> implements ISetMixin<E>, ISet<E> {
    public constructor() {
        dart.collection._setBase(this);
    }
    private readonly _dart_cast: <R>() => ISet<R> = undefined as any;
    private readonly _dart_difference: (
        other: ISet<Object | undefined>
    ) => ISet<E> = undefined as any;
    private readonly _dart_intersection: (
        other: ISet<Object | undefined>
    ) => ISet<E> = undefined as any;
    private readonly _dart_toSet: () => ISet<E> = undefined as any;
    private readonly _dart_add: (value: E) => boolean = undefined as any;
    private readonly _dart_contains: (element?: Object | undefined) => boolean =
        undefined as any;
    private readonly _dart_lookup: (
        element?: Object | undefined
    ) => E | undefined = undefined as any;
    private readonly _dart_remove: (value?: Object | undefined) => boolean =
        undefined as any;
    private readonly _dart_followedBy: (other: IIterable<E>) => IIterable<E> =
        undefined as any;
    private readonly _dart_whereType: <T>() => IIterable<T> = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_addAll: (elements: IIterable<E>) => void =
        undefined as any;
    private readonly _dart_removeAll: (
        elements: IIterable<Object | undefined>
    ) => void = undefined as any;
    private readonly _dart_retainAll: (
        elements: IIterable<Object | undefined>
    ) => void = undefined as any;
    private readonly _dart_removeWhere: (
        test: (element: E) => boolean
    ) => void = undefined as any;
    private readonly _dart_retainWhere: (
        test: (element: E) => boolean
    ) => void = undefined as any;
    private readonly _dart_containsAll: (
        other: IIterable<Object | undefined>
    ) => boolean = undefined as any;
    private readonly _dart_union: (other: ISet<E>) => ISet<E> =
        undefined as any;
    private readonly _dart_toList: (props: { growable: boolean }) => IList<E> =
        undefined as any;
    private readonly _dart_map: <T>(f: (element: E) => T) => IIterable<T> =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_where: (f: (element: E) => boolean) => IIterable<E> =
        undefined as any;
    private readonly _dart_expand: <T>(
        f: (element: E) => IIterable<T>
    ) => IIterable<T> = undefined as any;
    private readonly _dart_forEach: (f: (element: E) => void) => void =
        undefined as any;
    private readonly _dart_reduce: (combine: (value: E, element: E) => E) => E =
        undefined as any;
    private readonly _dart_fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: E) => T
    ) => T = undefined as any;
    private readonly _dart_every: (f: (element: E) => boolean) => boolean =
        undefined as any;
    private readonly _dart_join: (separator: string) => string =
        undefined as any;
    private readonly _dart_any: (test: (element: E) => boolean) => boolean =
        undefined as any;
    private readonly _dart_take: (n: number) => IIterable<E> = undefined as any;
    private readonly _dart_takeWhile: (
        test: (value: E) => boolean
    ) => IIterable<E> = undefined as any;
    private readonly _dart_skip: (n: number) => IIterable<E> = undefined as any;
    private readonly _dart_skipWhile: (
        test: (value: E) => boolean
    ) => IIterable<E> = undefined as any;
    private readonly _dart_firstWhere: (
        test: (value: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E = undefined as any;
    private readonly _dart_lastWhere: (
        test: (value: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E = undefined as any;
    private readonly _dart_singleWhere: (
        test: (value: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E = undefined as any;
    private readonly _dart_elementAt: (index: number) => E = undefined as any;
    private readonly _dart_getIterator: () => IIterator<E> = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getSingle: () => E = undefined as any;
    private readonly _dart_getFirst: () => E = undefined as any;
    private readonly _dart_getLast: () => E = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public cast<R>(): ISet<R> {
        return this._dart_cast();
    }
    public difference(other: ISet<Object | undefined>): ISet<E> {
        return this._dart_difference(other);
    }
    public intersection(other: ISet<Object | undefined>): ISet<E> {
        return this._dart_intersection(other);
    }
    public toSet(): ISet<E> {
        return this._dart_toSet();
    }
    public add(value: E): boolean {
        return this._dart_add(value);
    }
    public contains(element?: Object | undefined): boolean {
        return this._dart_contains(element);
    }
    public lookup(element?: Object | undefined): E | undefined {
        return this._dart_lookup(element);
    }
    public remove(value?: Object | undefined): boolean {
        return this._dart_remove(value);
    }
    public followedBy(other: IIterable<E>): IIterable<E> {
        return this._dart_followedBy(other);
    }
    public whereType<T>(): IIterable<T> {
        return this._dart_whereType();
    }
    public clear(): void {
        return this._dart_clear();
    }
    public addAll(elements: IIterable<E>): void {
        return this._dart_addAll(elements);
    }
    public removeAll(elements: IIterable<Object | undefined>): void {
        return this._dart_removeAll(elements);
    }
    public retainAll(elements: IIterable<Object | undefined>): void {
        return this._dart_retainAll(elements);
    }
    public removeWhere(test: (element: E) => boolean): void {
        return this._dart_removeWhere(test);
    }
    public retainWhere(test: (element: E) => boolean): void {
        return this._dart_retainWhere(test);
    }
    public containsAll(other: IIterable<Object | undefined>): boolean {
        return this._dart_containsAll(other);
    }
    public union(other: ISet<E>): ISet<E> {
        return this._dart_union(other);
    }
    public toList(props: { growable?: boolean }): IList<E> {
        return this._dart_toList({
            ...toListDefaultProps,
            ...props,
        });
    }
    public map<T>(f: (element: E) => T): IIterable<T> {
        return this._dart_map(f);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public where(f: (element: E) => boolean): IIterable<E> {
        return this._dart_where(f);
    }
    public expand<T>(f: (element: E) => IIterable<T>): IIterable<T> {
        return this._dart_expand(f);
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
    public every(f: (element: E) => boolean): boolean {
        return this._dart_every(f);
    }
    public join(separator: string = ""): string {
        return this._dart_join(separator);
    }
    public any(test: (element: E) => boolean): boolean {
        return this._dart_any(test);
    }
    public take(n: number): IIterable<E> {
        return this._dart_take(n);
    }
    public takeWhile(test: (value: E) => boolean): IIterable<E> {
        return this._dart_takeWhile(test);
    }
    public skip(n: number): IIterable<E> {
        return this._dart_skip(n);
    }
    public skipWhile(test: (value: E) => boolean): IIterable<E> {
        return this._dart_skipWhile(test);
    }
    public firstWhere(
        test: (value: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ): E {
        return this._dart_firstWhere(test, props);
    }
    public lastWhere(
        test: (value: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ): E {
        return this._dart_lastWhere(test, props);
    }
    public singleWhere(
        test: (value: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ): E {
        return this._dart_singleWhere(test, props);
    }
    public elementAt(index: number): E {
        return this._dart_elementAt(index);
    }
    public getIterator(): IIterator<E> {
        return this._dart_getIterator();
    }
    public getLength(): number {
        return this._dart_getLength();
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getIsNotEmpty(): boolean {
        return this._dart_getIsNotEmpty();
    }
    public getSingle(): E {
        return this._dart_getSingle();
    }
    public getFirst(): E {
        return this._dart_getFirst();
    }
    public getLast(): E {
        return this._dart_getLast();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toListDefaultProps = {
    growable: true,
};
