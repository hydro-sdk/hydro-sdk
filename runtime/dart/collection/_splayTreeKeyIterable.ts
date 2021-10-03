import { IEfficientLengthIterable } from "../_internal/efficientLengthIterable";
import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { I_SplayTree } from "./_splayTree";
declare const dart: {
    collection: {
        _splayTreeKeyIterable: <K, Node>(
            this: void,
            _splayTreeKeyIterable: I_SplayTreeKeyIterable<K, Node>,
            _tree: I_SplayTree<K, Node>
        ) => I_SplayTreeKeyIterable<K, Node>;
    };
};
export interface I_SplayTreeKeyIterable<K, Node> {
    getLength: () => number;
    getIsEmpty: () => boolean;
    getIterator: () => IIterator<K>;
    toSet: () => ISet<K>;
    cast: <R>() => IIterable<R>;
    followedBy: (other: IIterable<K>) => IIterable<K>;
    map: <T>(f: (e: K) => T) => IIterable<T>;
    where: (test: (element: K) => boolean) => IIterable<K>;
    whereType: <T>() => IIterable<T>;
    expand: <T>(f: (element: K) => IIterable<T>) => IIterable<T>;
    contains: (element?: Object | undefined) => boolean;
    forEach: (f: (element: K) => void) => void;
    reduce: (combine: (value: K, element: K) => K) => K;
    fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: K) => T
    ) => T;
    every: (test: (element: K) => boolean) => boolean;
    join: (separator: string) => string;
    any: (test: (element: K) => boolean) => boolean;
    toList: (props: { growable: boolean }) => IList<K>;
    take: (count: number) => IIterable<K>;
    takeWhile: (test: (value: K) => boolean) => IIterable<K>;
    skip: (count: number) => IIterable<K>;
    skipWhile: (test: (value: K) => boolean) => IIterable<K>;
    firstWhere: (
        test: (element: K) => boolean,
        props?: { orElse?: () => K | undefined }
    ) => K;
    lastWhere: (
        test: (element: K) => boolean,
        props?: { orElse?: () => K | undefined }
    ) => K;
    singleWhere: (
        test: (element: K) => boolean,
        props?: { orElse?: () => K | undefined }
    ) => K;
    elementAt: (index: number) => K;
    toString: () => string;
    getIsNotEmpty: () => boolean;
    getFirst: () => K;
    getLast: () => K;
    getSingle: () => K;
    getHashCode: () => number;
}
export class _SplayTreeKeyIterable<K, Node>
    implements IEfficientLengthIterable<K>
{
    public constructor(_tree: I_SplayTree<K, Node>) {
        dart.collection._splayTreeKeyIterable(this, _tree);
    }
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIterator: () => IIterator<K> = undefined as any;
    private readonly _dart_toSet: () => ISet<K> = undefined as any;
    private readonly _dart_cast: <R>() => IIterable<R> = undefined as any;
    private readonly _dart_followedBy: (other: IIterable<K>) => IIterable<K> =
        undefined as any;
    private readonly _dart_map: <T>(f: (e: K) => T) => IIterable<T> =
        undefined as any;
    private readonly _dart_where: (
        test: (element: K) => boolean
    ) => IIterable<K> = undefined as any;
    private readonly _dart_whereType: <T>() => IIterable<T> = undefined as any;
    private readonly _dart_expand: <T>(
        f: (element: K) => IIterable<T>
    ) => IIterable<T> = undefined as any;
    private readonly _dart_contains: (element?: Object | undefined) => boolean =
        undefined as any;
    private readonly _dart_forEach: (f: (element: K) => void) => void =
        undefined as any;
    private readonly _dart_reduce: (combine: (value: K, element: K) => K) => K =
        undefined as any;
    private readonly _dart_fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: K) => T
    ) => T = undefined as any;
    private readonly _dart_every: (test: (element: K) => boolean) => boolean =
        undefined as any;
    private readonly _dart_join: (separator: string) => string =
        undefined as any;
    private readonly _dart_any: (test: (element: K) => boolean) => boolean =
        undefined as any;
    private readonly _dart_toList: (props: { growable: boolean }) => IList<K> =
        undefined as any;
    private readonly _dart_take: (count: number) => IIterable<K> =
        undefined as any;
    private readonly _dart_takeWhile: (
        test: (value: K) => boolean
    ) => IIterable<K> = undefined as any;
    private readonly _dart_skip: (count: number) => IIterable<K> =
        undefined as any;
    private readonly _dart_skipWhile: (
        test: (value: K) => boolean
    ) => IIterable<K> = undefined as any;
    private readonly _dart_firstWhere: (
        test: (element: K) => boolean,
        props?: { orElse?: () => K | undefined }
    ) => K = undefined as any;
    private readonly _dart_lastWhere: (
        test: (element: K) => boolean,
        props?: { orElse?: () => K | undefined }
    ) => K = undefined as any;
    private readonly _dart_singleWhere: (
        test: (element: K) => boolean,
        props?: { orElse?: () => K | undefined }
    ) => K = undefined as any;
    private readonly _dart_elementAt: (index: number) => K = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getFirst: () => K = undefined as any;
    private readonly _dart_getLast: () => K = undefined as any;
    private readonly _dart_getSingle: () => K = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getLength(): number {
        return this._dart_getLength();
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getIterator(): IIterator<K> {
        return this._dart_getIterator();
    }
    public toSet(): ISet<K> {
        return this._dart_toSet();
    }
    public cast<R>(): IIterable<R> {
        return this._dart_cast();
    }
    public followedBy(other: IIterable<K>): IIterable<K> {
        return this._dart_followedBy(other);
    }
    public map<T>(f: (e: K) => T): IIterable<T> {
        return this._dart_map(f);
    }
    public where(test: (element: K) => boolean): IIterable<K> {
        return this._dart_where(test);
    }
    public whereType<T>(): IIterable<T> {
        return this._dart_whereType();
    }
    public expand<T>(f: (element: K) => IIterable<T>): IIterable<T> {
        return this._dart_expand(f);
    }
    public contains(element?: Object | undefined): boolean {
        return this._dart_contains(element);
    }
    public forEach(f: (element: K) => void): void {
        return this._dart_forEach(f);
    }
    public reduce(combine: (value: K, element: K) => K): K {
        return this._dart_reduce(combine);
    }
    public fold<T>(
        initialValue: T,
        combine: (previousValue: T, element: K) => T
    ): T {
        return this._dart_fold(initialValue, combine);
    }
    public every(test: (element: K) => boolean): boolean {
        return this._dart_every(test);
    }
    public join(separator: string = ""): string {
        return this._dart_join(separator);
    }
    public any(test: (element: K) => boolean): boolean {
        return this._dart_any(test);
    }
    public toList(props: { growable?: boolean }): IList<K> {
        return this._dart_toList({
            ...toListDefaultProps,
            ...props,
        });
    }
    public take(count: number): IIterable<K> {
        return this._dart_take(count);
    }
    public takeWhile(test: (value: K) => boolean): IIterable<K> {
        return this._dart_takeWhile(test);
    }
    public skip(count: number): IIterable<K> {
        return this._dart_skip(count);
    }
    public skipWhile(test: (value: K) => boolean): IIterable<K> {
        return this._dart_skipWhile(test);
    }
    public firstWhere(
        test: (element: K) => boolean,
        props?: { orElse?: () => K | undefined }
    ): K {
        return this._dart_firstWhere(test, props);
    }
    public lastWhere(
        test: (element: K) => boolean,
        props?: { orElse?: () => K | undefined }
    ): K {
        return this._dart_lastWhere(test, props);
    }
    public singleWhere(
        test: (element: K) => boolean,
        props?: { orElse?: () => K | undefined }
    ): K {
        return this._dart_singleWhere(test, props);
    }
    public elementAt(index: number): K {
        return this._dart_elementAt(index);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getIsNotEmpty(): boolean {
        return this._dart_getIsNotEmpty();
    }
    public getFirst(): K {
        return this._dart_getFirst();
    }
    public getLast(): K {
        return this._dart_getLast();
    }
    public getSingle(): K {
        return this._dart_getSingle();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toListDefaultProps = {
    growable: true,
};
