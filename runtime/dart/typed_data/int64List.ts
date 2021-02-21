import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { IRandom } from "../math/random";
import { IByteBuffer } from "./byteBuffer";
import { ITypedData } from "./typedData";
import { I_TypedIntList } from "./typedIntList";
declare const dart: {
    typed_data: {
        int64List: (
            this: void,
            int64List: IInt64List,
            length: number
        ) => IInt64List;
        int64ListFromList: (elements: IList<number>) => IInt64List;
        int64ListView: (
            buffer: IByteBuffer,
            offsetInBytes: number,
            length?: number | undefined
        ) => IInt64List;
        int64ListSublistView: (
            data: ITypedData,
            start: number,
            end?: number | undefined
        ) => IInt64List;
    };
};
const toListDefaultProps = {
    growable: true,
};
export interface IInt64List {
    sublist: (start: number, end?: number | undefined) => IInt64List;
    cast: <R>() => IList<R>;
    add: (value: number) => void;
    addAll: (iterable: IIterable<number>) => void;
    sort: (compare?: (a: number, b: number) => number) => void;
    shuffle: (random?: IRandom | undefined) => void;
    indexOf: (element: number, start: number) => number;
    indexWhere: (test: (element: number) => boolean, start: number) => number;
    lastIndexWhere: (
        test: (element: number) => boolean,
        start?: number | undefined
    ) => number;
    lastIndexOf: (element: number, start?: number | undefined) => number;
    clear: () => void;
    insert: (index: number, element: number) => void;
    insertAll: (index: number, iterable: IIterable<number>) => void;
    setAll: (index: number, iterable: IIterable<number>) => void;
    remove: (value?: Object | undefined) => boolean;
    removeAt: (index: number) => number;
    removeLast: () => number;
    removeWhere: (test: (element: number) => boolean) => void;
    retainWhere: (test: (element: number) => boolean) => void;
    getRange: (start: number, end: number) => IIterable<number>;
    setRange: (
        start: number,
        end: number,
        iterable: IIterable<number>,
        skipCount: number
    ) => void;
    removeRange: (start: number, end: number) => void;
    fillRange: (
        start: number,
        end: number,
        fillValue?: number | undefined
    ) => void;
    replaceRange: (
        start: number,
        end: number,
        replacement: IIterable<number>
    ) => void;
    asMap: () => { [index: number]: number };
    setFirst: (value: number) => void;
    setLast: (value: number) => void;
    getLength: () => number;
    setLength: (newLength: number) => void;
    getReversed: () => IIterable<number>;
    followedBy: (other: IIterable<number>) => IIterable<number>;
    map: <T>(f: (e: number) => T) => IIterable<T>;
    where: (test: (element: number) => boolean) => IIterable<number>;
    whereType: <T>() => IIterable<T>;
    expand: <T>(f: (element: number) => IIterable<T>) => IIterable<T>;
    contains: (element?: Object | undefined) => boolean;
    forEach: (f: (element: number) => void) => void;
    reduce: (combine: (value: number, element: number) => number) => number;
    fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: number) => T
    ) => T;
    every: (test: (element: number) => boolean) => boolean;
    join: (separator: string) => string;
    any: (test: (element: number) => boolean) => boolean;
    toList: (props: { growable: boolean }) => IList<number>;
    toSet: () => ISet<number>;
    take: (count: number) => IIterable<number>;
    takeWhile: (test: (value: number) => boolean) => IIterable<number>;
    skip: (count: number) => IIterable<number>;
    skipWhile: (test: (value: number) => boolean) => IIterable<number>;
    firstWhere: (
        test: (element: number) => boolean,
        props: { orElse?: () => number | undefined }
    ) => number;
    lastWhere: (
        test: (element: number) => boolean,
        props: { orElse?: () => number | undefined }
    ) => number;
    singleWhere: (
        test: (element: number) => boolean,
        props: { orElse?: () => number | undefined }
    ) => number;
    elementAt: (index: number) => number;
    toString: () => string;
    getIterator: () => IIterator<number>;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getFirst: () => number;
    getLast: () => number;
    getSingle: () => number;
    getHashCode: () => number;
    getElementSizeInBytes: () => number;
    getOffsetInBytes: () => number;
    getLengthInBytes: () => number;
    getBuffer: () => IByteBuffer;
}
export class Int64List implements IList<number>, I_TypedIntList {
    public static bytesPerElement = 8;
    public constructor(length: number) {
        dart.typed_data.int64List(this, length);
    }
    public static fromList(elements: IList<number>): IInt64List {
        return dart.typed_data.int64ListFromList(elements);
    }
    public static view(
        buffer: IByteBuffer,
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IInt64List {
        return dart.typed_data.int64ListView(buffer, offsetInBytes, length);
    }
    public static sublistView(
        data: ITypedData,
        start: number = 0,
        end?: number | undefined
    ): IInt64List {
        return dart.typed_data.int64ListSublistView(data, start, end);
    }
    private readonly _dart_sublist: (
        start: number,
        end?: number | undefined
    ) => IInt64List = undefined as any;
    private readonly _dart_cast: <R>() => IList<R> = undefined as any;
    private readonly _dart_add: (value: number) => void = undefined as any;
    private readonly _dart_addAll: (
        iterable: IIterable<number>
    ) => void = undefined as any;
    private readonly _dart_sort: (
        compare?: (a: number, b: number) => number
    ) => void = undefined as any;
    private readonly _dart_shuffle: (
        random?: IRandom | undefined
    ) => void = undefined as any;
    private readonly _dart_indexOf: (
        element: number,
        start: number
    ) => number = undefined as any;
    private readonly _dart_indexWhere: (
        test: (element: number) => boolean,
        start: number
    ) => number = undefined as any;
    private readonly _dart_lastIndexWhere: (
        test: (element: number) => boolean,
        start?: number | undefined
    ) => number = undefined as any;
    private readonly _dart_lastIndexOf: (
        element: number,
        start?: number | undefined
    ) => number = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_insert: (
        index: number,
        element: number
    ) => void = undefined as any;
    private readonly _dart_insertAll: (
        index: number,
        iterable: IIterable<number>
    ) => void = undefined as any;
    private readonly _dart_setAll: (
        index: number,
        iterable: IIterable<number>
    ) => void = undefined as any;
    private readonly _dart_remove: (
        value?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_removeAt: (
        index: number
    ) => number = undefined as any;
    private readonly _dart_removeLast: () => number = undefined as any;
    private readonly _dart_removeWhere: (
        test: (element: number) => boolean
    ) => void = undefined as any;
    private readonly _dart_retainWhere: (
        test: (element: number) => boolean
    ) => void = undefined as any;
    private readonly _dart_getRange: (
        start: number,
        end: number
    ) => IIterable<number> = undefined as any;
    private readonly _dart_setRange: (
        start: number,
        end: number,
        iterable: IIterable<number>,
        skipCount: number
    ) => void = undefined as any;
    private readonly _dart_removeRange: (
        start: number,
        end: number
    ) => void = undefined as any;
    private readonly _dart_fillRange: (
        start: number,
        end: number,
        fillValue?: number | undefined
    ) => void = undefined as any;
    private readonly _dart_replaceRange: (
        start: number,
        end: number,
        replacement: IIterable<number>
    ) => void = undefined as any;
    private readonly _dart_asMap: () => {
        [index: number]: number;
    } = undefined as any;
    private readonly _dart_setFirst: (value: number) => void = undefined as any;
    private readonly _dart_setLast: (value: number) => void = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_setLength: (
        newLength: number
    ) => void = undefined as any;
    private readonly _dart_getReversed: () => IIterable<number> = undefined as any;
    private readonly _dart_followedBy: (
        other: IIterable<number>
    ) => IIterable<number> = undefined as any;
    private readonly _dart_map: <T>(
        f: (e: number) => T
    ) => IIterable<T> = undefined as any;
    private readonly _dart_where: (
        test: (element: number) => boolean
    ) => IIterable<number> = undefined as any;
    private readonly _dart_whereType: <T>() => IIterable<T> = undefined as any;
    private readonly _dart_expand: <T>(
        f: (element: number) => IIterable<T>
    ) => IIterable<T> = undefined as any;
    private readonly _dart_contains: (
        element?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_forEach: (
        f: (element: number) => void
    ) => void = undefined as any;
    private readonly _dart_reduce: (
        combine: (value: number, element: number) => number
    ) => number = undefined as any;
    private readonly _dart_fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: number) => T
    ) => T = undefined as any;
    private readonly _dart_every: (
        test: (element: number) => boolean
    ) => boolean = undefined as any;
    private readonly _dart_join: (
        separator: string
    ) => string = undefined as any;
    private readonly _dart_any: (
        test: (element: number) => boolean
    ) => boolean = undefined as any;
    private readonly _dart_toList: (props: {
        growable: boolean;
    }) => IList<number> = undefined as any;
    private readonly _dart_toSet: () => ISet<number> = undefined as any;
    private readonly _dart_take: (
        count: number
    ) => IIterable<number> = undefined as any;
    private readonly _dart_takeWhile: (
        test: (value: number) => boolean
    ) => IIterable<number> = undefined as any;
    private readonly _dart_skip: (
        count: number
    ) => IIterable<number> = undefined as any;
    private readonly _dart_skipWhile: (
        test: (value: number) => boolean
    ) => IIterable<number> = undefined as any;
    private readonly _dart_firstWhere: (
        test: (element: number) => boolean,
        props: { orElse?: () => number | undefined }
    ) => number = undefined as any;
    private readonly _dart_lastWhere: (
        test: (element: number) => boolean,
        props: { orElse?: () => number | undefined }
    ) => number = undefined as any;
    private readonly _dart_singleWhere: (
        test: (element: number) => boolean,
        props: { orElse?: () => number | undefined }
    ) => number = undefined as any;
    private readonly _dart_elementAt: (
        index: number
    ) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getIterator: () => IIterator<number> = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getFirst: () => number = undefined as any;
    private readonly _dart_getLast: () => number = undefined as any;
    private readonly _dart_getSingle: () => number = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_getElementSizeInBytes: () => number = undefined as any;
    private readonly _dart_getOffsetInBytes: () => number = undefined as any;
    private readonly _dart_getLengthInBytes: () => number = undefined as any;
    private readonly _dart_getBuffer: () => IByteBuffer = undefined as any;
    public sublist(start: number, end?: number | undefined): IInt64List {
        return this._dart_sublist(start, end);
    }
    public cast<R>(): IList<R> {
        return this._dart_cast();
    }
    public add(value: number): void {
        return this._dart_add(value);
    }
    public addAll(iterable: IIterable<number>): void {
        return this._dart_addAll(iterable);
    }
    public sort(compare?: (a: number, b: number) => number): void {
        return this._dart_sort(compare);
    }
    public shuffle(random?: IRandom | undefined): void {
        return this._dart_shuffle(random);
    }
    public indexOf(element: number, start: number = 0): number {
        return this._dart_indexOf(element, start);
    }
    public indexWhere(
        test: (element: number) => boolean,
        start: number = 0
    ): number {
        return this._dart_indexWhere(test, start);
    }
    public lastIndexWhere(
        test: (element: number) => boolean,
        start?: number | undefined
    ): number {
        return this._dart_lastIndexWhere(test, start);
    }
    public lastIndexOf(element: number, start?: number | undefined): number {
        return this._dart_lastIndexOf(element, start);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public insert(index: number, element: number): void {
        return this._dart_insert(index, element);
    }
    public insertAll(index: number, iterable: IIterable<number>): void {
        return this._dart_insertAll(index, iterable);
    }
    public setAll(index: number, iterable: IIterable<number>): void {
        return this._dart_setAll(index, iterable);
    }
    public remove(value?: Object | undefined): boolean {
        return this._dart_remove(value);
    }
    public removeAt(index: number): number {
        return this._dart_removeAt(index);
    }
    public removeLast(): number {
        return this._dart_removeLast();
    }
    public removeWhere(test: (element: number) => boolean): void {
        return this._dart_removeWhere(test);
    }
    public retainWhere(test: (element: number) => boolean): void {
        return this._dart_retainWhere(test);
    }
    public getRange(start: number, end: number): IIterable<number> {
        return this._dart_getRange(start, end);
    }
    public setRange(
        start: number,
        end: number,
        iterable: IIterable<number>,
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
        fillValue?: number | undefined
    ): void {
        return this._dart_fillRange(start, end, fillValue);
    }
    public replaceRange(
        start: number,
        end: number,
        replacement: IIterable<number>
    ): void {
        return this._dart_replaceRange(start, end, replacement);
    }
    public asMap(): { [index: number]: number } {
        return this._dart_asMap();
    }
    public setFirst(value: number): void {
        return this._dart_setFirst(value);
    }
    public setLast(value: number): void {
        return this._dart_setLast(value);
    }
    public getLength(): number {
        return this._dart_getLength();
    }
    public setLength(newLength: number): void {
        return this._dart_setLength(newLength);
    }
    public getReversed(): IIterable<number> {
        return this._dart_getReversed();
    }
    public followedBy(other: IIterable<number>): IIterable<number> {
        return this._dart_followedBy(other);
    }
    public map<T>(f: (e: number) => T): IIterable<T> {
        return this._dart_map(f);
    }
    public where(test: (element: number) => boolean): IIterable<number> {
        return this._dart_where(test);
    }
    public whereType<T>(): IIterable<T> {
        return this._dart_whereType();
    }
    public expand<T>(f: (element: number) => IIterable<T>): IIterable<T> {
        return this._dart_expand(f);
    }
    public contains(element?: Object | undefined): boolean {
        return this._dart_contains(element);
    }
    public forEach(f: (element: number) => void): void {
        return this._dart_forEach(f);
    }
    public reduce(combine: (value: number, element: number) => number): number {
        return this._dart_reduce(combine);
    }
    public fold<T>(
        initialValue: T,
        combine: (previousValue: T, element: number) => T
    ): T {
        return this._dart_fold(initialValue, combine);
    }
    public every(test: (element: number) => boolean): boolean {
        return this._dart_every(test);
    }
    public join(separator: string = ""): string {
        return this._dart_join(separator);
    }
    public any(test: (element: number) => boolean): boolean {
        return this._dart_any(test);
    }
    public toList(props: { growable?: boolean }): IList<number> {
        return this._dart_toList({
            ...toListDefaultProps,
            ...props,
        });
    }
    public toSet(): ISet<number> {
        return this._dart_toSet();
    }
    public take(count: number): IIterable<number> {
        return this._dart_take(count);
    }
    public takeWhile(test: (value: number) => boolean): IIterable<number> {
        return this._dart_takeWhile(test);
    }
    public skip(count: number): IIterable<number> {
        return this._dart_skip(count);
    }
    public skipWhile(test: (value: number) => boolean): IIterable<number> {
        return this._dart_skipWhile(test);
    }
    public firstWhere(
        test: (element: number) => boolean,
        props: { orElse?: () => number | undefined }
    ): number {
        return this._dart_firstWhere(test, props);
    }
    public lastWhere(
        test: (element: number) => boolean,
        props: { orElse?: () => number | undefined }
    ): number {
        return this._dart_lastWhere(test, props);
    }
    public singleWhere(
        test: (element: number) => boolean,
        props: { orElse?: () => number | undefined }
    ): number {
        return this._dart_singleWhere(test, props);
    }
    public elementAt(index: number): number {
        return this._dart_elementAt(index);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getIterator(): IIterator<number> {
        return this._dart_getIterator();
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getIsNotEmpty(): boolean {
        return this._dart_getIsNotEmpty();
    }
    public getFirst(): number {
        return this._dart_getFirst();
    }
    public getLast(): number {
        return this._dart_getLast();
    }
    public getSingle(): number {
        return this._dart_getSingle();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public getElementSizeInBytes(): number {
        return this._dart_getElementSizeInBytes();
    }
    public getOffsetInBytes(): number {
        return this._dart_getOffsetInBytes();
    }
    public getLengthInBytes(): number {
        return this._dart_getLengthInBytes();
    }
    public getBuffer(): IByteBuffer {
        return this._dart_getBuffer();
    }
}
