import { IEfficientLengthIterable } from "./../_internal/efficientLengthIterable";
import { List } from "./../collection/list";
import { Iterable } from "./iterable";
import { Iterator } from "./iterator";
declare const dart: {
    core: {
        set: <E>(this: void, set: Set<E>) => Set<E>;
        setIdentity: <E>() => Set<E>;
        setFrom: <E>(elements: Iterable<any>) => Set<E>;
        setOf: <E>(elements: Iterable<E>) => Set<E>;
        setCastFrom: <S, T>(
            source: Set<S>,
            props: { newSet?: <R>() => Set<R> | undefined }
        ) => Set<T>;
    };
};
export interface ISet<E> extends IEfficientLengthIterable<E> {
    cast: <R>() => Set<R>;
    getIterator: () => Iterator<E>;
    contains: (value?: Object | undefined) => boolean;
    add: (value: E) => boolean;
    addAll: (elements: Iterable<E>) => void;
    remove: (value?: Object | undefined) => boolean;
    lookup: (object?: Object | undefined) => E | undefined;
    removeAll: (elements: Iterable<Object | undefined>) => void;
    retainAll: (elements: Iterable<Object | undefined>) => void;
    removeWhere: (test: (element: E) => boolean) => void;
    retainWhere: (test: (element: E) => boolean) => void;
    containsAll: (other: Iterable<Object | undefined>) => boolean;
    intersection: (other: Set<Object | undefined>) => Set<E>;
    union: (other: Set<E>) => Set<E>;
    difference: (other: Set<Object | undefined>) => Set<E>;
    clear: () => void;
    toSet: () => Set<E>;
}
export class Set<E> implements ISet<E> {
    public constructor() {
        dart.core.set(this);
    }
    public static identity<E>(): Set<E> {
        return dart.core.setIdentity();
    }
    public static from<E>(elements: Iterable<any>): Set<E> {
        return dart.core.setFrom(elements);
    }
    public static of<E>(elements: Iterable<E>): Set<E> {
        return dart.core.setOf(elements);
    }
    public static castFrom<S, T>(
        source: Set<S>,
        props: { newSet?: <R>() => Set<R> | undefined }
    ): Set<T> {
        return dart.core.setCastFrom(source, props);
    }
    private readonly _dart_cast: <R>() => Set<R> = undefined as any;
    private readonly _dart_getIterator: () => Iterator<E> = undefined as any;
    private readonly _dart_contains: (
        value?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_add: (value: E) => boolean = undefined as any;
    private readonly _dart_addAll: (
        elements: Iterable<E>
    ) => void = undefined as any;
    private readonly _dart_remove: (
        value?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_lookup: (
        object?: Object | undefined
    ) => E | undefined = undefined as any;
    private readonly _dart_removeAll: (
        elements: Iterable<Object | undefined>
    ) => void = undefined as any;
    private readonly _dart_retainAll: (
        elements: Iterable<Object | undefined>
    ) => void = undefined as any;
    private readonly _dart_removeWhere: (
        test: (element: E) => boolean
    ) => void = undefined as any;
    private readonly _dart_retainWhere: (
        test: (element: E) => boolean
    ) => void = undefined as any;
    private readonly _dart_containsAll: (
        other: Iterable<Object | undefined>
    ) => boolean = undefined as any;
    private readonly _dart_intersection: (
        other: Set<Object | undefined>
    ) => Set<E> = undefined as any;
    private readonly _dart_union: (other: Set<E>) => Set<E> = undefined as any;
    private readonly _dart_difference: (
        other: Set<Object | undefined>
    ) => Set<E> = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_toSet: () => Set<E> = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_followedBy: (
        other: Iterable<E>
    ) => Iterable<E> = undefined as any;
    private readonly _dart_map: <T>(
        f: (e: E) => T
    ) => Iterable<T> = undefined as any;
    private readonly _dart_where: (
        test: (element: E) => boolean
    ) => Iterable<E> = undefined as any;
    private readonly _dart_whereType: <T>() => Iterable<T> = undefined as any;
    private readonly _dart_expand: <T>(
        f: (element: E) => Iterable<T>
    ) => Iterable<T> = undefined as any;
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
    }) => List<E> = undefined as any;
    private readonly _dart_take: (
        count: number
    ) => Iterable<E> = undefined as any;
    private readonly _dart_takeWhile: (
        test: (value: E) => boolean
    ) => Iterable<E> = undefined as any;
    private readonly _dart_skip: (
        count: number
    ) => Iterable<E> = undefined as any;
    private readonly _dart_skipWhile: (
        test: (value: E) => boolean
    ) => Iterable<E> = undefined as any;
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
    public cast<R>(): Set<R> {
        return this._dart_cast();
    }
    public getIterator(): Iterator<E> {
        return this._dart_getIterator();
    }
    public contains(value?: Object | undefined): boolean {
        return this._dart_contains(value);
    }
    public add(value: E): boolean {
        return this._dart_add(value);
    }
    public addAll(elements: Iterable<E>): void {
        return this._dart_addAll(elements);
    }
    public remove(value?: Object | undefined): boolean {
        return this._dart_remove(value);
    }
    public lookup(object?: Object | undefined): E | undefined {
        return this._dart_lookup(object);
    }
    public removeAll(elements: Iterable<Object | undefined>): void {
        return this._dart_removeAll(elements);
    }
    public retainAll(elements: Iterable<Object | undefined>): void {
        return this._dart_retainAll(elements);
    }
    public removeWhere(test: (element: E) => boolean): void {
        return this._dart_removeWhere(test);
    }
    public retainWhere(test: (element: E) => boolean): void {
        return this._dart_retainWhere(test);
    }
    public containsAll(other: Iterable<Object | undefined>): boolean {
        return this._dart_containsAll(other);
    }
    public intersection(other: Set<Object | undefined>): Set<E> {
        return this._dart_intersection(other);
    }
    public union(other: Set<E>): Set<E> {
        return this._dart_union(other);
    }
    public difference(other: Set<Object | undefined>): Set<E> {
        return this._dart_difference(other);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public toSet(): Set<E> {
        return this._dart_toSet();
    }
    public getLength(): number {
        return this._dart_getLength();
    }
    public followedBy(other: Iterable<E>): Iterable<E> {
        return this._dart_followedBy(other);
    }
    public map<T>(f: (e: E) => T): Iterable<T> {
        return this._dart_map(f);
    }
    public where(test: (element: E) => boolean): Iterable<E> {
        return this._dart_where(test);
    }
    public whereType<T>(): Iterable<T> {
        return this._dart_whereType();
    }
    public expand<T>(f: (element: E) => Iterable<T>): Iterable<T> {
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
    public toList(props: { growable: boolean }): List<E> {
        return this._dart_toList(props);
    }
    public take(count: number): Iterable<E> {
        return this._dart_take(count);
    }
    public takeWhile(test: (value: E) => boolean): Iterable<E> {
        return this._dart_takeWhile(test);
    }
    public skip(count: number): Iterable<E> {
        return this._dart_skip(count);
    }
    public skipWhile(test: (value: E) => boolean): Iterable<E> {
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
