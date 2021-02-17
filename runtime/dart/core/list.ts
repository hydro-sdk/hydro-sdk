import { IEfficientLengthIterable } from "../_internal/efficientLengthIterable";
import { IRandom } from "../math/random";
import { IIterable } from "./iterable";
import { IIterator } from "./iterator";
import { ISet } from "./set";
declare const dart: {
    core: {
        list: <E>(
            this: void,
            list: IList<E>,
            length?: number | undefined
        ) => IList<E>;
        listFilled: <E>(
            length: number,
            fill: E,
            props: { growable: boolean }
        ) => IList<E>;
        listEmpty: <E>(props: { growable: boolean }) => IList<E>;
        listFrom: <E>(
            elements: IIterable<any>,
            props: { growable: boolean }
        ) => IList<E>;
        listOf: <E>(
            elements: IIterable<E>,
            props: { growable: boolean }
        ) => IList<E>;
        listGenerate: <E>(
            length: number,
            generator: (index: number) => E,
            props: { growable: boolean }
        ) => IList<E>;
        listUnmodifiable: <E>(elements: IIterable<any>) => IList<E>;
        listCastFrom: <S, T>(source: IList<S>) => IList<T>;
        listCopyRange: <T>(
            target: IList<T>,
            at: number,
            source: IList<T>,
            start?: number | undefined,
            end?: number | undefined
        ) => void;
        listWriteIterable: <T>(
            target: IList<T>,
            at: number,
            source: IIterable<T>
        ) => void;
    };
};
const toListDefaultProps = {
    growable: true,
};
const filledDefaultProps = {
    growable: false,
};
const emptyDefaultProps = {
    growable: false,
};
const fromDefaultProps = {
    growable: true,
};
const ofDefaultProps = {
    growable: true,
};
const generateDefaultProps = {
    growable: true,
};
export interface IList<E> {
    cast: <R>() => IList<R>;
    setFirst: (value: E) => void;
    setLast: (value: E) => void;
    getLength: () => number;
    setLength: (newLength: number) => void;
    add: (value: E) => void;
    addAll: (iterable: IIterable<E>) => void;
    getReversed: () => IIterable<E>;
    sort: (compare?: (a: E, b: E) => number) => void;
    shuffle: (random?: IRandom | undefined) => void;
    indexOf: (element: E, start: number) => number;
    indexWhere: (test: (element: E) => boolean, start: number) => number;
    lastIndexWhere: (
        test: (element: E) => boolean,
        start?: number | undefined
    ) => number;
    lastIndexOf: (element: E, start?: number | undefined) => number;
    clear: () => void;
    insert: (index: number, element: E) => void;
    insertAll: (index: number, iterable: IIterable<E>) => void;
    setAll: (index: number, iterable: IIterable<E>) => void;
    remove: (value?: Object | undefined) => boolean;
    removeAt: (index: number) => E;
    removeLast: () => E;
    removeWhere: (test: (element: E) => boolean) => void;
    retainWhere: (test: (element: E) => boolean) => void;
    sublist: (start: number, end?: number | undefined) => IList<E>;
    getRange: (start: number, end: number) => IIterable<E>;
    setRange: (
        start: number,
        end: number,
        iterable: IIterable<E>,
        skipCount: number
    ) => void;
    removeRange: (start: number, end: number) => void;
    fillRange: (start: number, end: number, fillValue?: E | undefined) => void;
    replaceRange: (
        start: number,
        end: number,
        replacement: IIterable<E>
    ) => void;
    asMap: () => { [index: number]: E };
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
    getIterator: () => IIterator<E>;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getFirst: () => E;
    getLast: () => E;
    getSingle: () => E;
    getHashCode: () => number;
}
export class List<E> implements IEfficientLengthIterable<E> {
    public constructor(length?: number | undefined) {
        dart.core.list(this, length);
    }
    public static filled<E>(
        length: number,
        fill: E,
        props: { growable?: boolean }
    ): IList<E> {
        return dart.core.listFilled(length, fill, {
            ...filledDefaultProps,
            ...props,
        });
    }
    public static empty<E>(props: { growable?: boolean }): IList<E> {
        return dart.core.listEmpty({
            ...emptyDefaultProps,
            ...props,
        });
    }
    public static from<E>(
        elements: IIterable<any>,
        props: { growable?: boolean }
    ): IList<E> {
        return dart.core.listFrom(elements, {
            ...fromDefaultProps,
            ...props,
        });
    }
    public static of<E>(
        elements: IIterable<E>,
        props: { growable?: boolean }
    ): IList<E> {
        return dart.core.listOf(elements, {
            ...ofDefaultProps,
            ...props,
        });
    }
    public static generate<E>(
        length: number,
        generator: (index: number) => E,
        props: { growable?: boolean }
    ): IList<E> {
        return dart.core.listGenerate(length, generator, {
            ...generateDefaultProps,
            ...props,
        });
    }
    public static unmodifiable<E>(elements: IIterable<any>): IList<E> {
        return dart.core.listUnmodifiable(elements);
    }
    public static castFrom<S, T>(source: IList<S>): IList<T> {
        return dart.core.listCastFrom(source);
    }
    public static copyRange<T>(
        target: IList<T>,
        at: number,
        source: IList<T>,
        start?: number | undefined,
        end?: number | undefined
    ): void {
        return dart.core.listCopyRange(target, at, source, start, end);
    }
    public static writeIterable<T>(
        target: IList<T>,
        at: number,
        source: IIterable<T>
    ): void {
        return dart.core.listWriteIterable(target, at, source);
    }
    private readonly _dart_cast: <R>() => IList<R> = undefined as any;
    private readonly _dart_setFirst: (value: E) => void = undefined as any;
    private readonly _dart_setLast: (value: E) => void = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_setLength: (
        newLength: number
    ) => void = undefined as any;
    private readonly _dart_add: (value: E) => void = undefined as any;
    private readonly _dart_addAll: (
        iterable: IIterable<E>
    ) => void = undefined as any;
    private readonly _dart_getReversed: () => IIterable<E> = undefined as any;
    private readonly _dart_sort: (
        compare?: (a: E, b: E) => number
    ) => void = undefined as any;
    private readonly _dart_shuffle: (
        random?: IRandom | undefined
    ) => void = undefined as any;
    private readonly _dart_indexOf: (
        element: E,
        start: number
    ) => number = undefined as any;
    private readonly _dart_indexWhere: (
        test: (element: E) => boolean,
        start: number
    ) => number = undefined as any;
    private readonly _dart_lastIndexWhere: (
        test: (element: E) => boolean,
        start?: number | undefined
    ) => number = undefined as any;
    private readonly _dart_lastIndexOf: (
        element: E,
        start?: number | undefined
    ) => number = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_insert: (
        index: number,
        element: E
    ) => void = undefined as any;
    private readonly _dart_insertAll: (
        index: number,
        iterable: IIterable<E>
    ) => void = undefined as any;
    private readonly _dart_setAll: (
        index: number,
        iterable: IIterable<E>
    ) => void = undefined as any;
    private readonly _dart_remove: (
        value?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_removeAt: (index: number) => E = undefined as any;
    private readonly _dart_removeLast: () => E = undefined as any;
    private readonly _dart_removeWhere: (
        test: (element: E) => boolean
    ) => void = undefined as any;
    private readonly _dart_retainWhere: (
        test: (element: E) => boolean
    ) => void = undefined as any;
    private readonly _dart_sublist: (
        start: number,
        end?: number | undefined
    ) => IList<E> = undefined as any;
    private readonly _dart_getRange: (
        start: number,
        end: number
    ) => IIterable<E> = undefined as any;
    private readonly _dart_setRange: (
        start: number,
        end: number,
        iterable: IIterable<E>,
        skipCount: number
    ) => void = undefined as any;
    private readonly _dart_removeRange: (
        start: number,
        end: number
    ) => void = undefined as any;
    private readonly _dart_fillRange: (
        start: number,
        end: number,
        fillValue?: E | undefined
    ) => void = undefined as any;
    private readonly _dart_replaceRange: (
        start: number,
        end: number,
        replacement: IIterable<E>
    ) => void = undefined as any;
    private readonly _dart_asMap: () => {
        [index: number]: E;
    } = undefined as any;
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
    }) => IList<E> = undefined as any;
    private readonly _dart_toSet: () => ISet<E> = undefined as any;
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
    private readonly _dart_getIterator: () => IIterator<E> = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getFirst: () => E = undefined as any;
    private readonly _dart_getLast: () => E = undefined as any;
    private readonly _dart_getSingle: () => E = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public cast<R>(): IList<R> {
        return this._dart_cast();
    }
    public setFirst(value: E): void {
        return this._dart_setFirst(value);
    }
    public setLast(value: E): void {
        return this._dart_setLast(value);
    }
    public getLength(): number {
        return this._dart_getLength();
    }
    public setLength(newLength: number): void {
        return this._dart_setLength(newLength);
    }
    public add(value: E): void {
        return this._dart_add(value);
    }
    public addAll(iterable: IIterable<E>): void {
        return this._dart_addAll(iterable);
    }
    public getReversed(): IIterable<E> {
        return this._dart_getReversed();
    }
    public sort(compare?: (a: E, b: E) => number): void {
        return this._dart_sort(compare);
    }
    public shuffle(random?: IRandom | undefined): void {
        return this._dart_shuffle(random);
    }
    public indexOf(element: E, start: number = 0): number {
        return this._dart_indexOf(element, start);
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
    public lastIndexOf(element: E, start?: number | undefined): number {
        return this._dart_lastIndexOf(element, start);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public insert(index: number, element: E): void {
        return this._dart_insert(index, element);
    }
    public insertAll(index: number, iterable: IIterable<E>): void {
        return this._dart_insertAll(index, iterable);
    }
    public setAll(index: number, iterable: IIterable<E>): void {
        return this._dart_setAll(index, iterable);
    }
    public remove(value?: Object | undefined): boolean {
        return this._dart_remove(value);
    }
    public removeAt(index: number): E {
        return this._dart_removeAt(index);
    }
    public removeLast(): E {
        return this._dart_removeLast();
    }
    public removeWhere(test: (element: E) => boolean): void {
        return this._dart_removeWhere(test);
    }
    public retainWhere(test: (element: E) => boolean): void {
        return this._dart_retainWhere(test);
    }
    public sublist(start: number, end?: number | undefined): IList<E> {
        return this._dart_sublist(start, end);
    }
    public getRange(start: number, end: number): IIterable<E> {
        return this._dart_getRange(start, end);
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
    public fillRange(
        start: number,
        end: number,
        fillValue?: E | undefined
    ): void {
        return this._dart_fillRange(start, end, fillValue);
    }
    public replaceRange(
        start: number,
        end: number,
        replacement: IIterable<E>
    ): void {
        return this._dart_replaceRange(start, end, replacement);
    }
    public asMap(): { [index: number]: E } {
        return this._dart_asMap();
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
