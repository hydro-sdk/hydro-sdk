import { IIterableBase } from "../collection/iterableBase";
import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { IPathMetric } from "./pathMetric";
declare const dart: {
    ui: {};
};
const toListDefaultProps = {
    growable: true,
};
export interface IPathMetrics {
    getIterator: () => IIterator<IPathMetric>;
    cast: <R>() => IIterable<R>;
    followedBy: (other: IIterable<IPathMetric>) => IIterable<IPathMetric>;
    map: <T>(f: (e: IPathMetric) => T) => IIterable<T>;
    where: (test: (element: IPathMetric) => boolean) => IIterable<IPathMetric>;
    whereType: <T>() => IIterable<T>;
    expand: <T>(f: (element: IPathMetric) => IIterable<T>) => IIterable<T>;
    contains: (element?: Object | undefined) => boolean;
    forEach: (f: (element: IPathMetric) => void) => void;
    reduce: (
        combine: (value: IPathMetric, element: IPathMetric) => IPathMetric
    ) => IPathMetric;
    fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: IPathMetric) => T
    ) => T;
    every: (test: (element: IPathMetric) => boolean) => boolean;
    join: (separator: string) => string;
    any: (test: (element: IPathMetric) => boolean) => boolean;
    toList: (props: { growable: boolean }) => IList<IPathMetric>;
    toSet: () => ISet<IPathMetric>;
    take: (count: number) => IIterable<IPathMetric>;
    takeWhile: (
        test: (value: IPathMetric) => boolean
    ) => IIterable<IPathMetric>;
    skip: (count: number) => IIterable<IPathMetric>;
    skipWhile: (
        test: (value: IPathMetric) => boolean
    ) => IIterable<IPathMetric>;
    firstWhere: (
        test: (element: IPathMetric) => boolean,
        props: { orElse?: () => IPathMetric | undefined }
    ) => IPathMetric;
    lastWhere: (
        test: (element: IPathMetric) => boolean,
        props: { orElse?: () => IPathMetric | undefined }
    ) => IPathMetric;
    singleWhere: (
        test: (element: IPathMetric) => boolean,
        props: { orElse?: () => IPathMetric | undefined }
    ) => IPathMetric;
    elementAt: (index: number) => IPathMetric;
    toString: () => string;
    getLength: () => number;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getFirst: () => IPathMetric;
    getLast: () => IPathMetric;
    getSingle: () => IPathMetric;
    getHashCode: () => number;
}
export class PathMetrics implements IIterableBase<IPathMetric> {
    private readonly _dart_getIterator: () => IIterator<IPathMetric> = undefined as any;
    private readonly _dart_cast: <R>() => IIterable<R> = undefined as any;
    private readonly _dart_followedBy: (
        other: IIterable<IPathMetric>
    ) => IIterable<IPathMetric> = undefined as any;
    private readonly _dart_map: <T>(
        f: (e: IPathMetric) => T
    ) => IIterable<T> = undefined as any;
    private readonly _dart_where: (
        test: (element: IPathMetric) => boolean
    ) => IIterable<IPathMetric> = undefined as any;
    private readonly _dart_whereType: <T>() => IIterable<T> = undefined as any;
    private readonly _dart_expand: <T>(
        f: (element: IPathMetric) => IIterable<T>
    ) => IIterable<T> = undefined as any;
    private readonly _dart_contains: (
        element?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_forEach: (
        f: (element: IPathMetric) => void
    ) => void = undefined as any;
    private readonly _dart_reduce: (
        combine: (value: IPathMetric, element: IPathMetric) => IPathMetric
    ) => IPathMetric = undefined as any;
    private readonly _dart_fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: IPathMetric) => T
    ) => T = undefined as any;
    private readonly _dart_every: (
        test: (element: IPathMetric) => boolean
    ) => boolean = undefined as any;
    private readonly _dart_join: (
        separator: string
    ) => string = undefined as any;
    private readonly _dart_any: (
        test: (element: IPathMetric) => boolean
    ) => boolean = undefined as any;
    private readonly _dart_toList: (props: {
        growable: boolean;
    }) => IList<IPathMetric> = undefined as any;
    private readonly _dart_toSet: () => ISet<IPathMetric> = undefined as any;
    private readonly _dart_take: (
        count: number
    ) => IIterable<IPathMetric> = undefined as any;
    private readonly _dart_takeWhile: (
        test: (value: IPathMetric) => boolean
    ) => IIterable<IPathMetric> = undefined as any;
    private readonly _dart_skip: (
        count: number
    ) => IIterable<IPathMetric> = undefined as any;
    private readonly _dart_skipWhile: (
        test: (value: IPathMetric) => boolean
    ) => IIterable<IPathMetric> = undefined as any;
    private readonly _dart_firstWhere: (
        test: (element: IPathMetric) => boolean,
        props: { orElse?: () => IPathMetric | undefined }
    ) => IPathMetric = undefined as any;
    private readonly _dart_lastWhere: (
        test: (element: IPathMetric) => boolean,
        props: { orElse?: () => IPathMetric | undefined }
    ) => IPathMetric = undefined as any;
    private readonly _dart_singleWhere: (
        test: (element: IPathMetric) => boolean,
        props: { orElse?: () => IPathMetric | undefined }
    ) => IPathMetric = undefined as any;
    private readonly _dart_elementAt: (
        index: number
    ) => IPathMetric = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getFirst: () => IPathMetric = undefined as any;
    private readonly _dart_getLast: () => IPathMetric = undefined as any;
    private readonly _dart_getSingle: () => IPathMetric = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getIterator(): IIterator<IPathMetric> {
        return this._dart_getIterator();
    }
    public cast<R>(): IIterable<R> {
        return this._dart_cast();
    }
    public followedBy(other: IIterable<IPathMetric>): IIterable<IPathMetric> {
        return this._dart_followedBy(other);
    }
    public map<T>(f: (e: IPathMetric) => T): IIterable<T> {
        return this._dart_map(f);
    }
    public where(
        test: (element: IPathMetric) => boolean
    ): IIterable<IPathMetric> {
        return this._dart_where(test);
    }
    public whereType<T>(): IIterable<T> {
        return this._dart_whereType();
    }
    public expand<T>(f: (element: IPathMetric) => IIterable<T>): IIterable<T> {
        return this._dart_expand(f);
    }
    public contains(element?: Object | undefined): boolean {
        return this._dart_contains(element);
    }
    public forEach(f: (element: IPathMetric) => void): void {
        return this._dart_forEach(f);
    }
    public reduce(
        combine: (value: IPathMetric, element: IPathMetric) => IPathMetric
    ): IPathMetric {
        return this._dart_reduce(combine);
    }
    public fold<T>(
        initialValue: T,
        combine: (previousValue: T, element: IPathMetric) => T
    ): T {
        return this._dart_fold(initialValue, combine);
    }
    public every(test: (element: IPathMetric) => boolean): boolean {
        return this._dart_every(test);
    }
    public join(separator: string = ""): string {
        return this._dart_join(separator);
    }
    public any(test: (element: IPathMetric) => boolean): boolean {
        return this._dart_any(test);
    }
    public toList(props: { growable?: boolean }): IList<IPathMetric> {
        return this._dart_toList({
            ...toListDefaultProps,
            ...props,
        });
    }
    public toSet(): ISet<IPathMetric> {
        return this._dart_toSet();
    }
    public take(count: number): IIterable<IPathMetric> {
        return this._dart_take(count);
    }
    public takeWhile(
        test: (value: IPathMetric) => boolean
    ): IIterable<IPathMetric> {
        return this._dart_takeWhile(test);
    }
    public skip(count: number): IIterable<IPathMetric> {
        return this._dart_skip(count);
    }
    public skipWhile(
        test: (value: IPathMetric) => boolean
    ): IIterable<IPathMetric> {
        return this._dart_skipWhile(test);
    }
    public firstWhere(
        test: (element: IPathMetric) => boolean,
        props: { orElse?: () => IPathMetric | undefined }
    ): IPathMetric {
        return this._dart_firstWhere(test, props);
    }
    public lastWhere(
        test: (element: IPathMetric) => boolean,
        props: { orElse?: () => IPathMetric | undefined }
    ): IPathMetric {
        return this._dart_lastWhere(test, props);
    }
    public singleWhere(
        test: (element: IPathMetric) => boolean,
        props: { orElse?: () => IPathMetric | undefined }
    ): IPathMetric {
        return this._dart_singleWhere(test, props);
    }
    public elementAt(index: number): IPathMetric {
        return this._dart_elementAt(index);
    }
    public toString(): string {
        return this._dart_toString();
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
    public getFirst(): IPathMetric {
        return this._dart_getFirst();
    }
    public getLast(): IPathMetric {
        return this._dart_getLast();
    }
    public getSingle(): IPathMetric {
        return this._dart_getSingle();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
