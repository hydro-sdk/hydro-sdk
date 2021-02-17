import { IEfficientLengthIterable } from "../_internal/efficientLengthIterable";
import { IIterable } from "./iterable";
import { IIterator } from "./iterator";
import { IList } from "./list";
declare const dart: {
    core: {
        set: <E>(this: void, set: ISet<E>) => ISet<E>;
        setIdentity: <E>() => ISet<E>;
        setFrom: <E>(elements: IIterable<any>) => ISet<E>;
        setOf: <E>(elements: IIterable<E>) => ISet<E>;
        setCastFrom: <S, T>(
            source: ISet<S>,
            props: { newSet?: <R>() => ISet<R> | undefined }
        ) => ISet<T>;
    };
};
const toListDefaultProps = {
    growable: true,
};
export interface ISet<E> {
    cast: <R>() => ISet<R>;
    getIterator: () => IIterator<E>;
    contains: (value?: Object | undefined) => boolean;
    add: (value: E) => boolean;
    addAll: (elements: IIterable<E>) => void;
    remove: (value?: Object | undefined) => boolean;
    lookup: (object?: Object | undefined) => E | undefined;
    removeAll: (elements: IIterable<Object | undefined>) => void;
    retainAll: (elements: IIterable<Object | undefined>) => void;
    removeWhere: (test: (element: E) => boolean) => void;
    retainWhere: (test: (element: E) => boolean) => void;
    containsAll: (other: IIterable<Object | undefined>) => boolean;
    intersection: (other: ISet<Object | undefined>) => ISet<E>;
    union: (other: ISet<E>) => ISet<E>;
    difference: (other: ISet<Object | undefined>) => ISet<E>;
    clear: () => void;
    toSet: () => ISet<E>;
    getLength: () => number;
    followedBy: (other: IIterable<E>) => IIterable<E>;
    map: <T>(f: (e: E) => T) => IIterable<T>;
    where: (test: (element: E) => boolean) => IIterable<E>;
    whereType: <T>() => IIterable<T>;
    expand: <T>(f: (element: E) => IIterable<T>) => IIterable<T>;
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
    take: (count: number) => IIterable<E>;
    takeWhile: (test: (value: E) => boolean) => IIterable<E>;
    skip: (count: number) => IIterable<E>;
    skipWhile: (test: (value: E) => boolean) => IIterable<E>;
    firstWhere: (
        test: (element: E) => boolean,
        props: { orElse?: () => E | undefined }
    ) => E;
    lastWhere: (
        test: (element: E) => boolean,
        props: { orElse?: () => E | undefined }
    ) => E;
    singleWhere: (
        test: (element: E) => boolean,
        props: { orElse?: () => E | undefined }
    ) => E;
    elementAt: (index: number) => E;
    toString: () => string;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getFirst: () => E;
    getLast: () => E;
    getSingle: () => E;
    getHashCode: () => number;
}
export class Set<E> implements IEfficientLengthIterable<E> {
    public constructor() {
        dart.core.set(this);
    }
    public static identity<E>(): ISet<E> {
        return dart.core.setIdentity();
    }
    public static from<E>(elements: IIterable<any>): ISet<E> {
        return dart.core.setFrom(elements);
    }
    public static of<E>(elements: IIterable<E>): ISet<E> {
        return dart.core.setOf(elements);
    }
    public static castFrom<S, T>(
        source: ISet<S>,
        props: { newSet?: <R>() => ISet<R> | undefined }
    ): ISet<T> {
        return dart.core.setCastFrom(source, props);
    }
    private readonly _dart_cast: <R>() => ISet<R> = undefined as any;
    private readonly _dart_getIterator: () => IIterator<E> = undefined as any;
    private readonly _dart_contains: (
        value?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_add: (value: E) => boolean = undefined as any;
    private readonly _dart_addAll: (
        elements: IIterable<E>
    ) => void = undefined as any;
    private readonly _dart_remove: (
        value?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_lookup: (
        object?: Object | undefined
    ) => E | undefined = undefined as any;
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
    private readonly _dart_intersection: (
        other: ISet<Object | undefined>
    ) => ISet<E> = undefined as any;
    private readonly _dart_union: (
        other: ISet<E>
    ) => ISet<E> = undefined as any;
    private readonly _dart_difference: (
        other: ISet<Object | undefined>
    ) => ISet<E> = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_toSet: () => ISet<E> = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_followedBy: (
        other: IIterable<E>
    ) => IIterable<E> = undefined as any;
    private readonly _dart_map: <T>(
        f: (e: E) => T
    ) => IIterable<T> = undefined as any;
    private readonly _dart_where: (
        test: (element: E) => boolean
    ) => IIterable<E> = undefined as any;
    private readonly _dart_whereType: <T>() => IIterable<T> = undefined as any;
    private readonly _dart_expand: <T>(
        f: (element: E) => IIterable<T>
    ) => IIterable<T> = undefined as any;
    private readonly _dart_forEach: (
        f: (element: E) => void
    ) => void = undefined as any;
    private readonly _dart_reduce: (
        combine: (value: E, element: E) => E
    ) => E = undefined as any;
    private readonly _dart_fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: E) => T
    ) => T = undefined as any;
    private readonly _dart_every: (
        test: (element: E) => boolean
    ) => boolean = undefined as any;
    private readonly _dart_join: (
        separator: string
    ) => string = undefined as any;
    private readonly _dart_any: (
        test: (element: E) => boolean
    ) => boolean = undefined as any;
    private readonly _dart_toList: (props: {
        growable: boolean;
    }) => IList<E> = undefined as any;
    private readonly _dart_take: (
        count: number
    ) => IIterable<E> = undefined as any;
    private readonly _dart_takeWhile: (
        test: (value: E) => boolean
    ) => IIterable<E> = undefined as any;
    private readonly _dart_skip: (
        count: number
    ) => IIterable<E> = undefined as any;
    private readonly _dart_skipWhile: (
        test: (value: E) => boolean
    ) => IIterable<E> = undefined as any;
    private readonly _dart_firstWhere: (
        test: (element: E) => boolean,
        props: { orElse?: () => E | undefined }
    ) => E = undefined as any;
    private readonly _dart_lastWhere: (
        test: (element: E) => boolean,
        props: { orElse?: () => E | undefined }
    ) => E = undefined as any;
    private readonly _dart_singleWhere: (
        test: (element: E) => boolean,
        props: { orElse?: () => E | undefined }
    ) => E = undefined as any;
    private readonly _dart_elementAt: (index: number) => E = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getFirst: () => E = undefined as any;
    private readonly _dart_getLast: () => E = undefined as any;
    private readonly _dart_getSingle: () => E = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public cast<R>(): ISet<R> {
        return this._dart_cast();
    }
    public getIterator(): IIterator<E> {
        return this._dart_getIterator();
    }
    public contains(value?: Object | undefined): boolean {
        return this._dart_contains(value);
    }
    public add(value: E): boolean {
        return this._dart_add(value);
    }
    public addAll(elements: IIterable<E>): void {
        return this._dart_addAll(elements);
    }
    public remove(value?: Object | undefined): boolean {
        return this._dart_remove(value);
    }
    public lookup(object?: Object | undefined): E | undefined {
        return this._dart_lookup(object);
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
    public intersection(other: ISet<Object | undefined>): ISet<E> {
        return this._dart_intersection(other);
    }
    public union(other: ISet<E>): ISet<E> {
        return this._dart_union(other);
    }
    public difference(other: ISet<Object | undefined>): ISet<E> {
        return this._dart_difference(other);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public toSet(): ISet<E> {
        return this._dart_toSet();
    }
    public getLength(): number {
        return this._dart_getLength();
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
        props: { orElse?: () => E | undefined }
    ): E {
        return this._dart_firstWhere(test, props);
    }
    public lastWhere(
        test: (element: E) => boolean,
        props: { orElse?: () => E | undefined }
    ): E {
        return this._dart_lastWhere(test, props);
    }
    public singleWhere(
        test: (element: E) => boolean,
        props: { orElse?: () => E | undefined }
    ): E {
        return this._dart_singleWhere(test, props);
    }
    public elementAt(index: number): E {
        return this._dart_elementAt(index);
    }
    public toString(): string {
        return this._dart_toString();
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
