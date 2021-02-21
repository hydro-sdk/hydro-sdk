import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { IRandom } from "../math/random";
import { IByteBuffer } from "./byteBuffer";
import { IFloat32x4 } from "./float32x4";
import { ITypedData } from "./typedData";
declare const dart: {
    typed_data: {
        float32x4List: (
            this: void,
            float32x4List: IFloat32x4List,
            length: number
        ) => IFloat32x4List;
        float32x4ListFromList: (elements: IList<IFloat32x4>) => IFloat32x4List;
        float32x4ListView: (
            buffer: IByteBuffer,
            offsetInBytes: number,
            length?: number | undefined
        ) => IFloat32x4List;
        float32x4ListSublistView: (
            data: ITypedData,
            start: number,
            end?: number | undefined
        ) => IFloat32x4List;
    };
};
const toListDefaultProps = {
    growable: true,
};
export interface IFloat32x4List {
    sublist: (start: number, end?: number | undefined) => IFloat32x4List;
    cast: <R>() => IList<R>;
    add: (value: IFloat32x4) => void;
    addAll: (iterable: IIterable<IFloat32x4>) => void;
    sort: (compare?: (a: IFloat32x4, b: IFloat32x4) => number) => void;
    shuffle: (random?: IRandom | undefined) => void;
    indexOf: (element: IFloat32x4, start: number) => number;
    indexWhere: (
        test: (element: IFloat32x4) => boolean,
        start: number
    ) => number;
    lastIndexWhere: (
        test: (element: IFloat32x4) => boolean,
        start?: number | undefined
    ) => number;
    lastIndexOf: (element: IFloat32x4, start?: number | undefined) => number;
    clear: () => void;
    insert: (index: number, element: IFloat32x4) => void;
    insertAll: (index: number, iterable: IIterable<IFloat32x4>) => void;
    setAll: (index: number, iterable: IIterable<IFloat32x4>) => void;
    remove: (value?: Object | undefined) => boolean;
    removeAt: (index: number) => IFloat32x4;
    removeLast: () => IFloat32x4;
    removeWhere: (test: (element: IFloat32x4) => boolean) => void;
    retainWhere: (test: (element: IFloat32x4) => boolean) => void;
    getRange: (start: number, end: number) => IIterable<IFloat32x4>;
    setRange: (
        start: number,
        end: number,
        iterable: IIterable<IFloat32x4>,
        skipCount: number
    ) => void;
    removeRange: (start: number, end: number) => void;
    fillRange: (
        start: number,
        end: number,
        fillValue?: IFloat32x4 | undefined
    ) => void;
    replaceRange: (
        start: number,
        end: number,
        replacement: IIterable<IFloat32x4>
    ) => void;
    asMap: () => { [index: number]: IFloat32x4 };
    setFirst: (value: IFloat32x4) => void;
    setLast: (value: IFloat32x4) => void;
    getLength: () => number;
    setLength: (newLength: number) => void;
    getReversed: () => IIterable<IFloat32x4>;
    followedBy: (other: IIterable<IFloat32x4>) => IIterable<IFloat32x4>;
    map: <T>(f: (e: IFloat32x4) => T) => IIterable<T>;
    where: (test: (element: IFloat32x4) => boolean) => IIterable<IFloat32x4>;
    whereType: <T>() => IIterable<T>;
    expand: <T>(f: (element: IFloat32x4) => IIterable<T>) => IIterable<T>;
    contains: (element?: Object | undefined) => boolean;
    forEach: (f: (element: IFloat32x4) => void) => void;
    reduce: (
        combine: (value: IFloat32x4, element: IFloat32x4) => IFloat32x4
    ) => IFloat32x4;
    fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: IFloat32x4) => T
    ) => T;
    every: (test: (element: IFloat32x4) => boolean) => boolean;
    join: (separator: string) => string;
    any: (test: (element: IFloat32x4) => boolean) => boolean;
    toList: (props: { growable: boolean }) => IList<IFloat32x4>;
    toSet: () => ISet<IFloat32x4>;
    take: (count: number) => IIterable<IFloat32x4>;
    takeWhile: (test: (value: IFloat32x4) => boolean) => IIterable<IFloat32x4>;
    skip: (count: number) => IIterable<IFloat32x4>;
    skipWhile: (test: (value: IFloat32x4) => boolean) => IIterable<IFloat32x4>;
    firstWhere: (
        test: (element: IFloat32x4) => boolean,
        props: { orElse?: () => IFloat32x4 | undefined }
    ) => IFloat32x4;
    lastWhere: (
        test: (element: IFloat32x4) => boolean,
        props: { orElse?: () => IFloat32x4 | undefined }
    ) => IFloat32x4;
    singleWhere: (
        test: (element: IFloat32x4) => boolean,
        props: { orElse?: () => IFloat32x4 | undefined }
    ) => IFloat32x4;
    elementAt: (index: number) => IFloat32x4;
    toString: () => string;
    getIterator: () => IIterator<IFloat32x4>;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getFirst: () => IFloat32x4;
    getLast: () => IFloat32x4;
    getSingle: () => IFloat32x4;
    getHashCode: () => number;
    getElementSizeInBytes: () => number;
    getOffsetInBytes: () => number;
    getLengthInBytes: () => number;
    getBuffer: () => IByteBuffer;
}
export class Float32x4List implements IList<IFloat32x4>, ITypedData {
    public static bytesPerElement = 16;
    public constructor(length: number) {
        dart.typed_data.float32x4List(this, length);
    }
    public static fromList(elements: IList<IFloat32x4>): IFloat32x4List {
        return dart.typed_data.float32x4ListFromList(elements);
    }
    public static view(
        buffer: IByteBuffer,
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IFloat32x4List {
        return dart.typed_data.float32x4ListView(buffer, offsetInBytes, length);
    }
    public static sublistView(
        data: ITypedData,
        start: number = 0,
        end?: number | undefined
    ): IFloat32x4List {
        return dart.typed_data.float32x4ListSublistView(data, start, end);
    }
    private readonly _dart_sublist: (
        start: number,
        end?: number | undefined
    ) => IFloat32x4List = undefined as any;
    private readonly _dart_cast: <R>() => IList<R> = undefined as any;
    private readonly _dart_add: (value: IFloat32x4) => void = undefined as any;
    private readonly _dart_addAll: (
        iterable: IIterable<IFloat32x4>
    ) => void = undefined as any;
    private readonly _dart_sort: (
        compare?: (a: IFloat32x4, b: IFloat32x4) => number
    ) => void = undefined as any;
    private readonly _dart_shuffle: (
        random?: IRandom | undefined
    ) => void = undefined as any;
    private readonly _dart_indexOf: (
        element: IFloat32x4,
        start: number
    ) => number = undefined as any;
    private readonly _dart_indexWhere: (
        test: (element: IFloat32x4) => boolean,
        start: number
    ) => number = undefined as any;
    private readonly _dart_lastIndexWhere: (
        test: (element: IFloat32x4) => boolean,
        start?: number | undefined
    ) => number = undefined as any;
    private readonly _dart_lastIndexOf: (
        element: IFloat32x4,
        start?: number | undefined
    ) => number = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_insert: (
        index: number,
        element: IFloat32x4
    ) => void = undefined as any;
    private readonly _dart_insertAll: (
        index: number,
        iterable: IIterable<IFloat32x4>
    ) => void = undefined as any;
    private readonly _dart_setAll: (
        index: number,
        iterable: IIterable<IFloat32x4>
    ) => void = undefined as any;
    private readonly _dart_remove: (
        value?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_removeAt: (
        index: number
    ) => IFloat32x4 = undefined as any;
    private readonly _dart_removeLast: () => IFloat32x4 = undefined as any;
    private readonly _dart_removeWhere: (
        test: (element: IFloat32x4) => boolean
    ) => void = undefined as any;
    private readonly _dart_retainWhere: (
        test: (element: IFloat32x4) => boolean
    ) => void = undefined as any;
    private readonly _dart_getRange: (
        start: number,
        end: number
    ) => IIterable<IFloat32x4> = undefined as any;
    private readonly _dart_setRange: (
        start: number,
        end: number,
        iterable: IIterable<IFloat32x4>,
        skipCount: number
    ) => void = undefined as any;
    private readonly _dart_removeRange: (
        start: number,
        end: number
    ) => void = undefined as any;
    private readonly _dart_fillRange: (
        start: number,
        end: number,
        fillValue?: IFloat32x4 | undefined
    ) => void = undefined as any;
    private readonly _dart_replaceRange: (
        start: number,
        end: number,
        replacement: IIterable<IFloat32x4>
    ) => void = undefined as any;
    private readonly _dart_asMap: () => {
        [index: number]: IFloat32x4;
    } = undefined as any;
    private readonly _dart_setFirst: (
        value: IFloat32x4
    ) => void = undefined as any;
    private readonly _dart_setLast: (
        value: IFloat32x4
    ) => void = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_setLength: (
        newLength: number
    ) => void = undefined as any;
    private readonly _dart_getReversed: () => IIterable<IFloat32x4> = undefined as any;
    private readonly _dart_followedBy: (
        other: IIterable<IFloat32x4>
    ) => IIterable<IFloat32x4> = undefined as any;
    private readonly _dart_map: <T>(
        f: (e: IFloat32x4) => T
    ) => IIterable<T> = undefined as any;
    private readonly _dart_where: (
        test: (element: IFloat32x4) => boolean
    ) => IIterable<IFloat32x4> = undefined as any;
    private readonly _dart_whereType: <T>() => IIterable<T> = undefined as any;
    private readonly _dart_expand: <T>(
        f: (element: IFloat32x4) => IIterable<T>
    ) => IIterable<T> = undefined as any;
    private readonly _dart_contains: (
        element?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_forEach: (
        f: (element: IFloat32x4) => void
    ) => void = undefined as any;
    private readonly _dart_reduce: (
        combine: (value: IFloat32x4, element: IFloat32x4) => IFloat32x4
    ) => IFloat32x4 = undefined as any;
    private readonly _dart_fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: IFloat32x4) => T
    ) => T = undefined as any;
    private readonly _dart_every: (
        test: (element: IFloat32x4) => boolean
    ) => boolean = undefined as any;
    private readonly _dart_join: (
        separator: string
    ) => string = undefined as any;
    private readonly _dart_any: (
        test: (element: IFloat32x4) => boolean
    ) => boolean = undefined as any;
    private readonly _dart_toList: (props: {
        growable: boolean;
    }) => IList<IFloat32x4> = undefined as any;
    private readonly _dart_toSet: () => ISet<IFloat32x4> = undefined as any;
    private readonly _dart_take: (
        count: number
    ) => IIterable<IFloat32x4> = undefined as any;
    private readonly _dart_takeWhile: (
        test: (value: IFloat32x4) => boolean
    ) => IIterable<IFloat32x4> = undefined as any;
    private readonly _dart_skip: (
        count: number
    ) => IIterable<IFloat32x4> = undefined as any;
    private readonly _dart_skipWhile: (
        test: (value: IFloat32x4) => boolean
    ) => IIterable<IFloat32x4> = undefined as any;
    private readonly _dart_firstWhere: (
        test: (element: IFloat32x4) => boolean,
        props: { orElse?: () => IFloat32x4 | undefined }
    ) => IFloat32x4 = undefined as any;
    private readonly _dart_lastWhere: (
        test: (element: IFloat32x4) => boolean,
        props: { orElse?: () => IFloat32x4 | undefined }
    ) => IFloat32x4 = undefined as any;
    private readonly _dart_singleWhere: (
        test: (element: IFloat32x4) => boolean,
        props: { orElse?: () => IFloat32x4 | undefined }
    ) => IFloat32x4 = undefined as any;
    private readonly _dart_elementAt: (
        index: number
    ) => IFloat32x4 = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getIterator: () => IIterator<IFloat32x4> = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getFirst: () => IFloat32x4 = undefined as any;
    private readonly _dart_getLast: () => IFloat32x4 = undefined as any;
    private readonly _dart_getSingle: () => IFloat32x4 = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_getElementSizeInBytes: () => number = undefined as any;
    private readonly _dart_getOffsetInBytes: () => number = undefined as any;
    private readonly _dart_getLengthInBytes: () => number = undefined as any;
    private readonly _dart_getBuffer: () => IByteBuffer = undefined as any;
    public sublist(start: number, end?: number | undefined): IFloat32x4List {
        return this._dart_sublist(start, end);
    }
    public cast<R>(): IList<R> {
        return this._dart_cast();
    }
    public add(value: IFloat32x4): void {
        return this._dart_add(value);
    }
    public addAll(iterable: IIterable<IFloat32x4>): void {
        return this._dart_addAll(iterable);
    }
    public sort(compare?: (a: IFloat32x4, b: IFloat32x4) => number): void {
        return this._dart_sort(compare);
    }
    public shuffle(random?: IRandom | undefined): void {
        return this._dart_shuffle(random);
    }
    public indexOf(element: IFloat32x4, start: number = 0): number {
        return this._dart_indexOf(element, start);
    }
    public indexWhere(
        test: (element: IFloat32x4) => boolean,
        start: number = 0
    ): number {
        return this._dart_indexWhere(test, start);
    }
    public lastIndexWhere(
        test: (element: IFloat32x4) => boolean,
        start?: number | undefined
    ): number {
        return this._dart_lastIndexWhere(test, start);
    }
    public lastIndexOf(
        element: IFloat32x4,
        start?: number | undefined
    ): number {
        return this._dart_lastIndexOf(element, start);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public insert(index: number, element: IFloat32x4): void {
        return this._dart_insert(index, element);
    }
    public insertAll(index: number, iterable: IIterable<IFloat32x4>): void {
        return this._dart_insertAll(index, iterable);
    }
    public setAll(index: number, iterable: IIterable<IFloat32x4>): void {
        return this._dart_setAll(index, iterable);
    }
    public remove(value?: Object | undefined): boolean {
        return this._dart_remove(value);
    }
    public removeAt(index: number): IFloat32x4 {
        return this._dart_removeAt(index);
    }
    public removeLast(): IFloat32x4 {
        return this._dart_removeLast();
    }
    public removeWhere(test: (element: IFloat32x4) => boolean): void {
        return this._dart_removeWhere(test);
    }
    public retainWhere(test: (element: IFloat32x4) => boolean): void {
        return this._dart_retainWhere(test);
    }
    public getRange(start: number, end: number): IIterable<IFloat32x4> {
        return this._dart_getRange(start, end);
    }
    public setRange(
        start: number,
        end: number,
        iterable: IIterable<IFloat32x4>,
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
        fillValue?: IFloat32x4 | undefined
    ): void {
        return this._dart_fillRange(start, end, fillValue);
    }
    public replaceRange(
        start: number,
        end: number,
        replacement: IIterable<IFloat32x4>
    ): void {
        return this._dart_replaceRange(start, end, replacement);
    }
    public asMap(): { [index: number]: IFloat32x4 } {
        return this._dart_asMap();
    }
    public setFirst(value: IFloat32x4): void {
        return this._dart_setFirst(value);
    }
    public setLast(value: IFloat32x4): void {
        return this._dart_setLast(value);
    }
    public getLength(): number {
        return this._dart_getLength();
    }
    public setLength(newLength: number): void {
        return this._dart_setLength(newLength);
    }
    public getReversed(): IIterable<IFloat32x4> {
        return this._dart_getReversed();
    }
    public followedBy(other: IIterable<IFloat32x4>): IIterable<IFloat32x4> {
        return this._dart_followedBy(other);
    }
    public map<T>(f: (e: IFloat32x4) => T): IIterable<T> {
        return this._dart_map(f);
    }
    public where(
        test: (element: IFloat32x4) => boolean
    ): IIterable<IFloat32x4> {
        return this._dart_where(test);
    }
    public whereType<T>(): IIterable<T> {
        return this._dart_whereType();
    }
    public expand<T>(f: (element: IFloat32x4) => IIterable<T>): IIterable<T> {
        return this._dart_expand(f);
    }
    public contains(element?: Object | undefined): boolean {
        return this._dart_contains(element);
    }
    public forEach(f: (element: IFloat32x4) => void): void {
        return this._dart_forEach(f);
    }
    public reduce(
        combine: (value: IFloat32x4, element: IFloat32x4) => IFloat32x4
    ): IFloat32x4 {
        return this._dart_reduce(combine);
    }
    public fold<T>(
        initialValue: T,
        combine: (previousValue: T, element: IFloat32x4) => T
    ): T {
        return this._dart_fold(initialValue, combine);
    }
    public every(test: (element: IFloat32x4) => boolean): boolean {
        return this._dart_every(test);
    }
    public join(separator: string = ""): string {
        return this._dart_join(separator);
    }
    public any(test: (element: IFloat32x4) => boolean): boolean {
        return this._dart_any(test);
    }
    public toList(props: { growable?: boolean }): IList<IFloat32x4> {
        return this._dart_toList({
            ...toListDefaultProps,
            ...props,
        });
    }
    public toSet(): ISet<IFloat32x4> {
        return this._dart_toSet();
    }
    public take(count: number): IIterable<IFloat32x4> {
        return this._dart_take(count);
    }
    public takeWhile(
        test: (value: IFloat32x4) => boolean
    ): IIterable<IFloat32x4> {
        return this._dart_takeWhile(test);
    }
    public skip(count: number): IIterable<IFloat32x4> {
        return this._dart_skip(count);
    }
    public skipWhile(
        test: (value: IFloat32x4) => boolean
    ): IIterable<IFloat32x4> {
        return this._dart_skipWhile(test);
    }
    public firstWhere(
        test: (element: IFloat32x4) => boolean,
        props: { orElse?: () => IFloat32x4 | undefined }
    ): IFloat32x4 {
        return this._dart_firstWhere(test, props);
    }
    public lastWhere(
        test: (element: IFloat32x4) => boolean,
        props: { orElse?: () => IFloat32x4 | undefined }
    ): IFloat32x4 {
        return this._dart_lastWhere(test, props);
    }
    public singleWhere(
        test: (element: IFloat32x4) => boolean,
        props: { orElse?: () => IFloat32x4 | undefined }
    ): IFloat32x4 {
        return this._dart_singleWhere(test, props);
    }
    public elementAt(index: number): IFloat32x4 {
        return this._dart_elementAt(index);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getIterator(): IIterator<IFloat32x4> {
        return this._dart_getIterator();
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getIsNotEmpty(): boolean {
        return this._dart_getIsNotEmpty();
    }
    public getFirst(): IFloat32x4 {
        return this._dart_getFirst();
    }
    public getLast(): IFloat32x4 {
        return this._dart_getLast();
    }
    public getSingle(): IFloat32x4 {
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
