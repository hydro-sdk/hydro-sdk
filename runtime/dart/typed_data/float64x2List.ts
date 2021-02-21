import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { IRandom } from "../math/random";
import { IByteBuffer } from "./byteBuffer";
import { IFloat64x2 } from "./float64x2";
import { ITypedData } from "./typedData";
declare const dart: {
    typed_data: {
        float64x2List: (
            this: void,
            float64x2List: IFloat64x2List,
            length: number
        ) => IFloat64x2List;
        float64x2ListFromList: (elements: IList<IFloat64x2>) => IFloat64x2List;
        float64x2ListView: (
            buffer: IByteBuffer,
            offsetInBytes: number,
            length?: number | undefined
        ) => IFloat64x2List;
        float64x2ListSublistView: (
            data: ITypedData,
            start: number,
            end?: number | undefined
        ) => IFloat64x2List;
    };
};
const toListDefaultProps = {
    growable: true,
};
export interface IFloat64x2List {
    sublist: (start: number, end?: number | undefined) => IFloat64x2List;
    cast: <R>() => IList<R>;
    add: (value: IFloat64x2) => void;
    addAll: (iterable: IIterable<IFloat64x2>) => void;
    sort: (compare?: (a: IFloat64x2, b: IFloat64x2) => number) => void;
    shuffle: (random?: IRandom | undefined) => void;
    indexOf: (element: IFloat64x2, start: number) => number;
    indexWhere: (
        test: (element: IFloat64x2) => boolean,
        start: number
    ) => number;
    lastIndexWhere: (
        test: (element: IFloat64x2) => boolean,
        start?: number | undefined
    ) => number;
    lastIndexOf: (element: IFloat64x2, start?: number | undefined) => number;
    clear: () => void;
    insert: (index: number, element: IFloat64x2) => void;
    insertAll: (index: number, iterable: IIterable<IFloat64x2>) => void;
    setAll: (index: number, iterable: IIterable<IFloat64x2>) => void;
    remove: (value?: Object | undefined) => boolean;
    removeAt: (index: number) => IFloat64x2;
    removeLast: () => IFloat64x2;
    removeWhere: (test: (element: IFloat64x2) => boolean) => void;
    retainWhere: (test: (element: IFloat64x2) => boolean) => void;
    getRange: (start: number, end: number) => IIterable<IFloat64x2>;
    setRange: (
        start: number,
        end: number,
        iterable: IIterable<IFloat64x2>,
        skipCount: number
    ) => void;
    removeRange: (start: number, end: number) => void;
    fillRange: (
        start: number,
        end: number,
        fillValue?: IFloat64x2 | undefined
    ) => void;
    replaceRange: (
        start: number,
        end: number,
        replacement: IIterable<IFloat64x2>
    ) => void;
    asMap: () => { [index: number]: IFloat64x2 };
    setFirst: (value: IFloat64x2) => void;
    setLast: (value: IFloat64x2) => void;
    getLength: () => number;
    setLength: (newLength: number) => void;
    getReversed: () => IIterable<IFloat64x2>;
    followedBy: (other: IIterable<IFloat64x2>) => IIterable<IFloat64x2>;
    map: <T>(f: (e: IFloat64x2) => T) => IIterable<T>;
    where: (test: (element: IFloat64x2) => boolean) => IIterable<IFloat64x2>;
    whereType: <T>() => IIterable<T>;
    expand: <T>(f: (element: IFloat64x2) => IIterable<T>) => IIterable<T>;
    contains: (element?: Object | undefined) => boolean;
    forEach: (f: (element: IFloat64x2) => void) => void;
    reduce: (
        combine: (value: IFloat64x2, element: IFloat64x2) => IFloat64x2
    ) => IFloat64x2;
    fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: IFloat64x2) => T
    ) => T;
    every: (test: (element: IFloat64x2) => boolean) => boolean;
    join: (separator: string) => string;
    any: (test: (element: IFloat64x2) => boolean) => boolean;
    toList: (props: { growable: boolean }) => IList<IFloat64x2>;
    toSet: () => ISet<IFloat64x2>;
    take: (count: number) => IIterable<IFloat64x2>;
    takeWhile: (test: (value: IFloat64x2) => boolean) => IIterable<IFloat64x2>;
    skip: (count: number) => IIterable<IFloat64x2>;
    skipWhile: (test: (value: IFloat64x2) => boolean) => IIterable<IFloat64x2>;
    firstWhere: (
        test: (element: IFloat64x2) => boolean,
        props: { orElse?: () => IFloat64x2 | undefined }
    ) => IFloat64x2;
    lastWhere: (
        test: (element: IFloat64x2) => boolean,
        props: { orElse?: () => IFloat64x2 | undefined }
    ) => IFloat64x2;
    singleWhere: (
        test: (element: IFloat64x2) => boolean,
        props: { orElse?: () => IFloat64x2 | undefined }
    ) => IFloat64x2;
    elementAt: (index: number) => IFloat64x2;
    toString: () => string;
    getIterator: () => IIterator<IFloat64x2>;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getFirst: () => IFloat64x2;
    getLast: () => IFloat64x2;
    getSingle: () => IFloat64x2;
    getHashCode: () => number;
    getElementSizeInBytes: () => number;
    getOffsetInBytes: () => number;
    getLengthInBytes: () => number;
    getBuffer: () => IByteBuffer;
}
export class Float64x2List implements IList<IFloat64x2>, ITypedData {
    public static bytesPerElement = 16;
    public constructor(length: number) {
        dart.typed_data.float64x2List(this, length);
    }
    public static fromList(elements: IList<IFloat64x2>): IFloat64x2List {
        return dart.typed_data.float64x2ListFromList(elements);
    }
    public static view(
        buffer: IByteBuffer,
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IFloat64x2List {
        return dart.typed_data.float64x2ListView(buffer, offsetInBytes, length);
    }
    public static sublistView(
        data: ITypedData,
        start: number = 0,
        end?: number | undefined
    ): IFloat64x2List {
        return dart.typed_data.float64x2ListSublistView(data, start, end);
    }
    private readonly _dart_sublist: (
        start: number,
        end?: number | undefined
    ) => IFloat64x2List = undefined as any;
    private readonly _dart_cast: <R>() => IList<R> = undefined as any;
    private readonly _dart_add: (value: IFloat64x2) => void = undefined as any;
    private readonly _dart_addAll: (
        iterable: IIterable<IFloat64x2>
    ) => void = undefined as any;
    private readonly _dart_sort: (
        compare?: (a: IFloat64x2, b: IFloat64x2) => number
    ) => void = undefined as any;
    private readonly _dart_shuffle: (
        random?: IRandom | undefined
    ) => void = undefined as any;
    private readonly _dart_indexOf: (
        element: IFloat64x2,
        start: number
    ) => number = undefined as any;
    private readonly _dart_indexWhere: (
        test: (element: IFloat64x2) => boolean,
        start: number
    ) => number = undefined as any;
    private readonly _dart_lastIndexWhere: (
        test: (element: IFloat64x2) => boolean,
        start?: number | undefined
    ) => number = undefined as any;
    private readonly _dart_lastIndexOf: (
        element: IFloat64x2,
        start?: number | undefined
    ) => number = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_insert: (
        index: number,
        element: IFloat64x2
    ) => void = undefined as any;
    private readonly _dart_insertAll: (
        index: number,
        iterable: IIterable<IFloat64x2>
    ) => void = undefined as any;
    private readonly _dart_setAll: (
        index: number,
        iterable: IIterable<IFloat64x2>
    ) => void = undefined as any;
    private readonly _dart_remove: (
        value?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_removeAt: (
        index: number
    ) => IFloat64x2 = undefined as any;
    private readonly _dart_removeLast: () => IFloat64x2 = undefined as any;
    private readonly _dart_removeWhere: (
        test: (element: IFloat64x2) => boolean
    ) => void = undefined as any;
    private readonly _dart_retainWhere: (
        test: (element: IFloat64x2) => boolean
    ) => void = undefined as any;
    private readonly _dart_getRange: (
        start: number,
        end: number
    ) => IIterable<IFloat64x2> = undefined as any;
    private readonly _dart_setRange: (
        start: number,
        end: number,
        iterable: IIterable<IFloat64x2>,
        skipCount: number
    ) => void = undefined as any;
    private readonly _dart_removeRange: (
        start: number,
        end: number
    ) => void = undefined as any;
    private readonly _dart_fillRange: (
        start: number,
        end: number,
        fillValue?: IFloat64x2 | undefined
    ) => void = undefined as any;
    private readonly _dart_replaceRange: (
        start: number,
        end: number,
        replacement: IIterable<IFloat64x2>
    ) => void = undefined as any;
    private readonly _dart_asMap: () => {
        [index: number]: IFloat64x2;
    } = undefined as any;
    private readonly _dart_setFirst: (
        value: IFloat64x2
    ) => void = undefined as any;
    private readonly _dart_setLast: (
        value: IFloat64x2
    ) => void = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_setLength: (
        newLength: number
    ) => void = undefined as any;
    private readonly _dart_getReversed: () => IIterable<IFloat64x2> = undefined as any;
    private readonly _dart_followedBy: (
        other: IIterable<IFloat64x2>
    ) => IIterable<IFloat64x2> = undefined as any;
    private readonly _dart_map: <T>(
        f: (e: IFloat64x2) => T
    ) => IIterable<T> = undefined as any;
    private readonly _dart_where: (
        test: (element: IFloat64x2) => boolean
    ) => IIterable<IFloat64x2> = undefined as any;
    private readonly _dart_whereType: <T>() => IIterable<T> = undefined as any;
    private readonly _dart_expand: <T>(
        f: (element: IFloat64x2) => IIterable<T>
    ) => IIterable<T> = undefined as any;
    private readonly _dart_contains: (
        element?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_forEach: (
        f: (element: IFloat64x2) => void
    ) => void = undefined as any;
    private readonly _dart_reduce: (
        combine: (value: IFloat64x2, element: IFloat64x2) => IFloat64x2
    ) => IFloat64x2 = undefined as any;
    private readonly _dart_fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: IFloat64x2) => T
    ) => T = undefined as any;
    private readonly _dart_every: (
        test: (element: IFloat64x2) => boolean
    ) => boolean = undefined as any;
    private readonly _dart_join: (
        separator: string
    ) => string = undefined as any;
    private readonly _dart_any: (
        test: (element: IFloat64x2) => boolean
    ) => boolean = undefined as any;
    private readonly _dart_toList: (props: {
        growable: boolean;
    }) => IList<IFloat64x2> = undefined as any;
    private readonly _dart_toSet: () => ISet<IFloat64x2> = undefined as any;
    private readonly _dart_take: (
        count: number
    ) => IIterable<IFloat64x2> = undefined as any;
    private readonly _dart_takeWhile: (
        test: (value: IFloat64x2) => boolean
    ) => IIterable<IFloat64x2> = undefined as any;
    private readonly _dart_skip: (
        count: number
    ) => IIterable<IFloat64x2> = undefined as any;
    private readonly _dart_skipWhile: (
        test: (value: IFloat64x2) => boolean
    ) => IIterable<IFloat64x2> = undefined as any;
    private readonly _dart_firstWhere: (
        test: (element: IFloat64x2) => boolean,
        props: { orElse?: () => IFloat64x2 | undefined }
    ) => IFloat64x2 = undefined as any;
    private readonly _dart_lastWhere: (
        test: (element: IFloat64x2) => boolean,
        props: { orElse?: () => IFloat64x2 | undefined }
    ) => IFloat64x2 = undefined as any;
    private readonly _dart_singleWhere: (
        test: (element: IFloat64x2) => boolean,
        props: { orElse?: () => IFloat64x2 | undefined }
    ) => IFloat64x2 = undefined as any;
    private readonly _dart_elementAt: (
        index: number
    ) => IFloat64x2 = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getIterator: () => IIterator<IFloat64x2> = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getFirst: () => IFloat64x2 = undefined as any;
    private readonly _dart_getLast: () => IFloat64x2 = undefined as any;
    private readonly _dart_getSingle: () => IFloat64x2 = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_getElementSizeInBytes: () => number = undefined as any;
    private readonly _dart_getOffsetInBytes: () => number = undefined as any;
    private readonly _dart_getLengthInBytes: () => number = undefined as any;
    private readonly _dart_getBuffer: () => IByteBuffer = undefined as any;
    public sublist(start: number, end?: number | undefined): IFloat64x2List {
        return this._dart_sublist(start, end);
    }
    public cast<R>(): IList<R> {
        return this._dart_cast();
    }
    public add(value: IFloat64x2): void {
        return this._dart_add(value);
    }
    public addAll(iterable: IIterable<IFloat64x2>): void {
        return this._dart_addAll(iterable);
    }
    public sort(compare?: (a: IFloat64x2, b: IFloat64x2) => number): void {
        return this._dart_sort(compare);
    }
    public shuffle(random?: IRandom | undefined): void {
        return this._dart_shuffle(random);
    }
    public indexOf(element: IFloat64x2, start: number = 0): number {
        return this._dart_indexOf(element, start);
    }
    public indexWhere(
        test: (element: IFloat64x2) => boolean,
        start: number = 0
    ): number {
        return this._dart_indexWhere(test, start);
    }
    public lastIndexWhere(
        test: (element: IFloat64x2) => boolean,
        start?: number | undefined
    ): number {
        return this._dart_lastIndexWhere(test, start);
    }
    public lastIndexOf(
        element: IFloat64x2,
        start?: number | undefined
    ): number {
        return this._dart_lastIndexOf(element, start);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public insert(index: number, element: IFloat64x2): void {
        return this._dart_insert(index, element);
    }
    public insertAll(index: number, iterable: IIterable<IFloat64x2>): void {
        return this._dart_insertAll(index, iterable);
    }
    public setAll(index: number, iterable: IIterable<IFloat64x2>): void {
        return this._dart_setAll(index, iterable);
    }
    public remove(value?: Object | undefined): boolean {
        return this._dart_remove(value);
    }
    public removeAt(index: number): IFloat64x2 {
        return this._dart_removeAt(index);
    }
    public removeLast(): IFloat64x2 {
        return this._dart_removeLast();
    }
    public removeWhere(test: (element: IFloat64x2) => boolean): void {
        return this._dart_removeWhere(test);
    }
    public retainWhere(test: (element: IFloat64x2) => boolean): void {
        return this._dart_retainWhere(test);
    }
    public getRange(start: number, end: number): IIterable<IFloat64x2> {
        return this._dart_getRange(start, end);
    }
    public setRange(
        start: number,
        end: number,
        iterable: IIterable<IFloat64x2>,
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
        fillValue?: IFloat64x2 | undefined
    ): void {
        return this._dart_fillRange(start, end, fillValue);
    }
    public replaceRange(
        start: number,
        end: number,
        replacement: IIterable<IFloat64x2>
    ): void {
        return this._dart_replaceRange(start, end, replacement);
    }
    public asMap(): { [index: number]: IFloat64x2 } {
        return this._dart_asMap();
    }
    public setFirst(value: IFloat64x2): void {
        return this._dart_setFirst(value);
    }
    public setLast(value: IFloat64x2): void {
        return this._dart_setLast(value);
    }
    public getLength(): number {
        return this._dart_getLength();
    }
    public setLength(newLength: number): void {
        return this._dart_setLength(newLength);
    }
    public getReversed(): IIterable<IFloat64x2> {
        return this._dart_getReversed();
    }
    public followedBy(other: IIterable<IFloat64x2>): IIterable<IFloat64x2> {
        return this._dart_followedBy(other);
    }
    public map<T>(f: (e: IFloat64x2) => T): IIterable<T> {
        return this._dart_map(f);
    }
    public where(
        test: (element: IFloat64x2) => boolean
    ): IIterable<IFloat64x2> {
        return this._dart_where(test);
    }
    public whereType<T>(): IIterable<T> {
        return this._dart_whereType();
    }
    public expand<T>(f: (element: IFloat64x2) => IIterable<T>): IIterable<T> {
        return this._dart_expand(f);
    }
    public contains(element?: Object | undefined): boolean {
        return this._dart_contains(element);
    }
    public forEach(f: (element: IFloat64x2) => void): void {
        return this._dart_forEach(f);
    }
    public reduce(
        combine: (value: IFloat64x2, element: IFloat64x2) => IFloat64x2
    ): IFloat64x2 {
        return this._dart_reduce(combine);
    }
    public fold<T>(
        initialValue: T,
        combine: (previousValue: T, element: IFloat64x2) => T
    ): T {
        return this._dart_fold(initialValue, combine);
    }
    public every(test: (element: IFloat64x2) => boolean): boolean {
        return this._dart_every(test);
    }
    public join(separator: string = ""): string {
        return this._dart_join(separator);
    }
    public any(test: (element: IFloat64x2) => boolean): boolean {
        return this._dart_any(test);
    }
    public toList(props: { growable?: boolean }): IList<IFloat64x2> {
        return this._dart_toList({
            ...toListDefaultProps,
            ...props,
        });
    }
    public toSet(): ISet<IFloat64x2> {
        return this._dart_toSet();
    }
    public take(count: number): IIterable<IFloat64x2> {
        return this._dart_take(count);
    }
    public takeWhile(
        test: (value: IFloat64x2) => boolean
    ): IIterable<IFloat64x2> {
        return this._dart_takeWhile(test);
    }
    public skip(count: number): IIterable<IFloat64x2> {
        return this._dart_skip(count);
    }
    public skipWhile(
        test: (value: IFloat64x2) => boolean
    ): IIterable<IFloat64x2> {
        return this._dart_skipWhile(test);
    }
    public firstWhere(
        test: (element: IFloat64x2) => boolean,
        props: { orElse?: () => IFloat64x2 | undefined }
    ): IFloat64x2 {
        return this._dart_firstWhere(test, props);
    }
    public lastWhere(
        test: (element: IFloat64x2) => boolean,
        props: { orElse?: () => IFloat64x2 | undefined }
    ): IFloat64x2 {
        return this._dart_lastWhere(test, props);
    }
    public singleWhere(
        test: (element: IFloat64x2) => boolean,
        props: { orElse?: () => IFloat64x2 | undefined }
    ): IFloat64x2 {
        return this._dart_singleWhere(test, props);
    }
    public elementAt(index: number): IFloat64x2 {
        return this._dart_elementAt(index);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getIterator(): IIterator<IFloat64x2> {
        return this._dart_getIterator();
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getIsNotEmpty(): boolean {
        return this._dart_getIsNotEmpty();
    }
    public getFirst(): IFloat64x2 {
        return this._dart_getFirst();
    }
    public getLast(): IFloat64x2 {
        return this._dart_getLast();
    }
    public getSingle(): IFloat64x2 {
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
