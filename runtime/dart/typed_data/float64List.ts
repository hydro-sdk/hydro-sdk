import { IIterable } from "../core/iterable";
import { IList } from "../core/list";
import { IRandom } from "../math/random";
import { IByteBuffer } from "./byteBuffer";
import { ITypedData } from "./typedData";
import { I_TypedFloatList } from "./typedFloatList";
declare const dart: {
    typed_data: {
        float64List: (
            this: void,
            float64List: IFloat64List,
            length: number
        ) => IFloat64List;
        float64ListFromList: (elements: IList<number>) => IFloat64List;
        float64ListView: (
            buffer: IByteBuffer,
            offsetInBytes: number,
            length?: number | undefined
        ) => IFloat64List;
        float64ListSublistView: (
            data: ITypedData,
            start: number,
            end?: number | undefined
        ) => IFloat64List;
    };
};
export interface IFloat64List {
    sublist: (start: number, end?: number | undefined) => IFloat64List;
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
    toString: () => string;
    getHashCode: () => number;
    getElementSizeInBytes: () => number;
    getOffsetInBytes: () => number;
    getLengthInBytes: () => number;
    getBuffer: () => IByteBuffer;
}
export class Float64List implements IList<double>, I_TypedFloatList {
    public static bytesPerElement = 8;
    public constructor(length: number) {
        dart.typed_data.float64List(this, length);
    }
    public static fromList(elements: IList<number>): IFloat64List {
        return dart.typed_data.float64ListFromList(elements);
    }
    public static view(
        buffer: IByteBuffer,
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IFloat64List {
        return dart.typed_data.float64ListView(buffer, offsetInBytes, length);
    }
    public static sublistView(
        data: ITypedData,
        start: number = 0,
        end?: number | undefined
    ): IFloat64List {
        return dart.typed_data.float64ListSublistView(data, start, end);
    }
    private readonly _dart_sublist: (
        start: number,
        end?: number | undefined
    ) => IFloat64List = undefined as any;
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
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_getElementSizeInBytes: () => number = undefined as any;
    private readonly _dart_getOffsetInBytes: () => number = undefined as any;
    private readonly _dart_getLengthInBytes: () => number = undefined as any;
    private readonly _dart_getBuffer: () => IByteBuffer = undefined as any;
    public sublist(start: number, end?: number | undefined): IFloat64List {
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
    public indexOf(element: number, start: number): number {
        return this._dart_indexOf(element, start);
    }
    public indexWhere(
        test: (element: number) => boolean,
        start: number
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
        skipCount: number
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
    public toString(): string {
        return this._dart_toString();
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
