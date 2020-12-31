import { List } from "./../collection/list";
declare const dart: {
    core: {
        iterable: <E>(this: void, iterable: Iterable<E>) => Iterable<E>;
        iterableGenerate: <E>(
            count: number,
            generator?: (index: number) => E
        ) => Iterable<E>;
        iterableEmpty: <E>() => Iterable<E>;
        iterableCastFrom: <S, T>(source: Iterable<S>) => Iterable<T>;
    };
};
const toListDefaultProps = {
    growable: true,
};
export interface IIterable<E> {
    getIterator: () => Iterator<E>;
    cast: <R>() => Iterable<R>;
    followedBy: (other: Iterable<E>) => Iterable<E>;
    map: <T>(f: (e: E) => T) => Iterable<T>;
    where: (test: (element: E) => boolean) => Iterable<E>;
    whereType: <T>() => Iterable<T>;
    expand: <T>(f: (element: E) => Iterable<T>) => Iterable<T>;
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
    toList: (props: { growable: boolean }) => List<E>;
    toSet: () => Set<E>;
    getLength: () => number;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    take: (count: number) => Iterable<E>;
    takeWhile: (test: (value: E) => boolean) => Iterable<E>;
    skip: (count: number) => Iterable<E>;
    skipWhile: (test: (value: E) => boolean) => Iterable<E>;
    getFirst: () => E;
    getLast: () => E;
    getSingle: () => E;
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
}
export class Iterable<E> implements IIterable<E> {
    public constructor() {
        dart.core.iterable(this);
    }
    public static generate<E>(
        count: number,
        generator?: (index: number) => E
    ): Iterable<E> {
        return dart.core.iterableGenerate(count);
    }
    public static empty<E>(): Iterable<E> {
        return dart.core.iterableEmpty();
    }
    public static castFrom<S, T>(source: Iterable<S>): Iterable<T> {
        return dart.core.iterableCastFrom(source);
    }
    private readonly _dart_getIterator: () => Iterator<E> = undefined as any;
    private readonly _dart_cast: <R>() => Iterable<R> = undefined as any;
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
    private readonly _dart_contains: (
        element?: Object | undefined
    ) => boolean = undefined as any;
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
    private readonly _dart_toSet: () => Set<E> = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
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
    private readonly _dart_getFirst: () => E = undefined as any;
    private readonly _dart_getLast: () => E = undefined as any;
    private readonly _dart_getSingle: () => E = undefined as any;
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
    public getIterator(): Iterator<E> {
        return this._dart_getIterator();
    }
    public cast<R>(): Iterable<R> {
        return this._dart_cast();
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
    public toList(props: { growable?: boolean }): List<E> {
        return this._dart_toList({
            ...toListDefaultProps,
            ...props,
        });
    }
    public toSet(): Set<E> {
        return this._dart_toSet();
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
    public getFirst(): E {
        return this._dart_getFirst();
    }
    public getLast(): E {
        return this._dart_getLast();
    }
    public getSingle(): E {
        return this._dart_getSingle();
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
}
