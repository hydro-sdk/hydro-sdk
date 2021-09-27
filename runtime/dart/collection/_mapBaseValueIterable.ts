import { IEfficientLengthIterable } from "../_internal/efficientLengthIterable";
import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { IMap } from "../core/map";
import { ISet } from "../core/set";
declare const dart: {
    collection: {
        _mapBaseValueIterable: <K, V>(
            this: void,
            _mapBaseValueIterable: I_MapBaseValueIterable<K, V>,
            _map: IMap<K, V>
        ) => I_MapBaseValueIterable<K, V>;
    };
};
export interface I_MapBaseValueIterable<K, V> {
    getLength: () => number;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getFirst: () => V;
    getSingle: () => V;
    getLast: () => V;
    getIterator: () => IIterator<V>;
    cast: <R>() => IIterable<R>;
    followedBy: (other: IIterable<V>) => IIterable<V>;
    map: <T>(f: (e: V) => T) => IIterable<T>;
    where: (test: (element: V) => boolean) => IIterable<V>;
    whereType: <T>() => IIterable<T>;
    expand: <T>(f: (element: V) => IIterable<T>) => IIterable<T>;
    contains: (element?: Object | undefined) => boolean;
    forEach: (f: (element: V) => void) => void;
    reduce: (combine: (value: V, element: V) => V) => V;
    fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: V) => T
    ) => T;
    every: (test: (element: V) => boolean) => boolean;
    join: (separator: string) => string;
    any: (test: (element: V) => boolean) => boolean;
    toList: (props: { growable: boolean }) => IList<V>;
    toSet: () => ISet<V>;
    take: (count: number) => IIterable<V>;
    takeWhile: (test: (value: V) => boolean) => IIterable<V>;
    skip: (count: number) => IIterable<V>;
    skipWhile: (test: (value: V) => boolean) => IIterable<V>;
    firstWhere: (
        test: (element: V) => boolean,
        props?: { orElse?: () => V | undefined }
    ) => V;
    lastWhere: (
        test: (element: V) => boolean,
        props?: { orElse?: () => V | undefined }
    ) => V;
    singleWhere: (
        test: (element: V) => boolean,
        props?: { orElse?: () => V | undefined }
    ) => V;
    elementAt: (index: number) => V;
    toString: () => string;
    getHashCode: () => number;
}
export class _MapBaseValueIterable<K, V>
    implements IEfficientLengthIterable<V>
{
    public constructor(_map: IMap<K, V>) {
        dart.collection._mapBaseValueIterable(this, _map);
    }
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getFirst: () => V = undefined as any;
    private readonly _dart_getSingle: () => V = undefined as any;
    private readonly _dart_getLast: () => V = undefined as any;
    private readonly _dart_getIterator: () => IIterator<V> = undefined as any;
    private readonly _dart_cast: <R>() => IIterable<R> = undefined as any;
    private readonly _dart_followedBy: (other: IIterable<V>) => IIterable<V> =
        undefined as any;
    private readonly _dart_map: <T>(f: (e: V) => T) => IIterable<T> =
        undefined as any;
    private readonly _dart_where: (
        test: (element: V) => boolean
    ) => IIterable<V> = undefined as any;
    private readonly _dart_whereType: <T>() => IIterable<T> = undefined as any;
    private readonly _dart_expand: <T>(
        f: (element: V) => IIterable<T>
    ) => IIterable<T> = undefined as any;
    private readonly _dart_contains: (element?: Object | undefined) => boolean =
        undefined as any;
    private readonly _dart_forEach: (f: (element: V) => void) => void =
        undefined as any;
    private readonly _dart_reduce: (combine: (value: V, element: V) => V) => V =
        undefined as any;
    private readonly _dart_fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: V) => T
    ) => T = undefined as any;
    private readonly _dart_every: (test: (element: V) => boolean) => boolean =
        undefined as any;
    private readonly _dart_join: (separator: string) => string =
        undefined as any;
    private readonly _dart_any: (test: (element: V) => boolean) => boolean =
        undefined as any;
    private readonly _dart_toList: (props: { growable: boolean }) => IList<V> =
        undefined as any;
    private readonly _dart_toSet: () => ISet<V> = undefined as any;
    private readonly _dart_take: (count: number) => IIterable<V> =
        undefined as any;
    private readonly _dart_takeWhile: (
        test: (value: V) => boolean
    ) => IIterable<V> = undefined as any;
    private readonly _dart_skip: (count: number) => IIterable<V> =
        undefined as any;
    private readonly _dart_skipWhile: (
        test: (value: V) => boolean
    ) => IIterable<V> = undefined as any;
    private readonly _dart_firstWhere: (
        test: (element: V) => boolean,
        props?: { orElse?: () => V | undefined }
    ) => V = undefined as any;
    private readonly _dart_lastWhere: (
        test: (element: V) => boolean,
        props?: { orElse?: () => V | undefined }
    ) => V = undefined as any;
    private readonly _dart_singleWhere: (
        test: (element: V) => boolean,
        props?: { orElse?: () => V | undefined }
    ) => V = undefined as any;
    private readonly _dart_elementAt: (index: number) => V = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getLength(): number {
        return this._dart_getLength();
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getIsNotEmpty(): boolean {
        return this._dart_getIsNotEmpty();
    }
    public getFirst(): V {
        return this._dart_getFirst();
    }
    public getSingle(): V {
        return this._dart_getSingle();
    }
    public getLast(): V {
        return this._dart_getLast();
    }
    public getIterator(): IIterator<V> {
        return this._dart_getIterator();
    }
    public cast<R>(): IIterable<R> {
        return this._dart_cast();
    }
    public followedBy(other: IIterable<V>): IIterable<V> {
        return this._dart_followedBy(other);
    }
    public map<T>(f: (e: V) => T): IIterable<T> {
        return this._dart_map(f);
    }
    public where(test: (element: V) => boolean): IIterable<V> {
        return this._dart_where(test);
    }
    public whereType<T>(): IIterable<T> {
        return this._dart_whereType();
    }
    public expand<T>(f: (element: V) => IIterable<T>): IIterable<T> {
        return this._dart_expand(f);
    }
    public contains(element?: Object | undefined): boolean {
        return this._dart_contains(element);
    }
    public forEach(f: (element: V) => void): void {
        return this._dart_forEach(f);
    }
    public reduce(combine: (value: V, element: V) => V): V {
        return this._dart_reduce(combine);
    }
    public fold<T>(
        initialValue: T,
        combine: (previousValue: T, element: V) => T
    ): T {
        return this._dart_fold(initialValue, combine);
    }
    public every(test: (element: V) => boolean): boolean {
        return this._dart_every(test);
    }
    public join(separator: string = ""): string {
        return this._dart_join(separator);
    }
    public any(test: (element: V) => boolean): boolean {
        return this._dart_any(test);
    }
    public toList(props: { growable?: boolean }): IList<V> {
        return this._dart_toList({
            ...toListDefaultProps,
            ...props,
        });
    }
    public toSet(): ISet<V> {
        return this._dart_toSet();
    }
    public take(count: number): IIterable<V> {
        return this._dart_take(count);
    }
    public takeWhile(test: (value: V) => boolean): IIterable<V> {
        return this._dart_takeWhile(test);
    }
    public skip(count: number): IIterable<V> {
        return this._dart_skip(count);
    }
    public skipWhile(test: (value: V) => boolean): IIterable<V> {
        return this._dart_skipWhile(test);
    }
    public firstWhere(
        test: (element: V) => boolean,
        props?: { orElse?: () => V | undefined }
    ): V {
        return this._dart_firstWhere(test, props);
    }
    public lastWhere(
        test: (element: V) => boolean,
        props?: { orElse?: () => V | undefined }
    ): V {
        return this._dart_lastWhere(test, props);
    }
    public singleWhere(
        test: (element: V) => boolean,
        props?: { orElse?: () => V | undefined }
    ): V {
        return this._dart_singleWhere(test, props);
    }
    public elementAt(index: number): V {
        return this._dart_elementAt(index);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toListDefaultProps = {
    growable: true,
};
