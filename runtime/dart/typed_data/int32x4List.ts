import { IIterable } from "../core/iterable";
import { IList } from "../core/list";
import { IRandom } from "../math/random";
import { IByteBuffer } from "./byteBuffer";
import { IInt32x4 } from "./int32x4";
import { ITypedData } from "./typedData";
declare const dart: {
    typed_data: {
        int32x4List: (
            this: void,
            int32x4List: IInt32x4List,
            length: number
        ) => IInt32x4List;
        int32x4ListFromList: (elements: IList<IInt32x4>) => IInt32x4List;
        int32x4ListView: (
            buffer: IByteBuffer,
            offsetInBytes: number,
            length?: number | undefined
        ) => IInt32x4List;
        int32x4ListSublistView: (
            data: ITypedData,
            start: number,
            end?: number | undefined
        ) => IInt32x4List;
    };
};
export interface IInt32x4List {
    sublist: (start: number, end?: number | undefined) => IInt32x4List;
    cast: <R>() => IList<R>;
    add: (value: IInt32x4) => void;
    addAll: (iterable: IIterable<IInt32x4>) => void;
    sort: (compare?: (a: IInt32x4, b: IInt32x4) => number) => void;
    shuffle: (random?: IRandom | undefined) => void;
    indexOf: (element: IInt32x4, start: number) => number;
    indexWhere: (test: (element: IInt32x4) => boolean, start: number) => number;
    lastIndexWhere: (
        test: (element: IInt32x4) => boolean,
        start?: number | undefined
    ) => number;
    lastIndexOf: (element: IInt32x4, start?: number | undefined) => number;
    clear: () => void;
    insert: (index: number, element: IInt32x4) => void;
    insertAll: (index: number, iterable: IIterable<IInt32x4>) => void;
    setAll: (index: number, iterable: IIterable<IInt32x4>) => void;
    remove: (value?: Object | undefined) => boolean;
    removeAt: (index: number) => IInt32x4;
    removeLast: () => IInt32x4;
    removeWhere: (test: (element: IInt32x4) => boolean) => void;
    retainWhere: (test: (element: IInt32x4) => boolean) => void;
    getRange: (start: number, end: number) => IIterable<IInt32x4>;
    setRange: (
        start: number,
        end: number,
        iterable: IIterable<IInt32x4>,
        skipCount: number
    ) => void;
    removeRange: (start: number, end: number) => void;
    fillRange: (
        start: number,
        end: number,
        fillValue?: IInt32x4 | undefined
    ) => void;
    replaceRange: (
        start: number,
        end: number,
        replacement: IIterable<IInt32x4>
    ) => void;
    asMap: () => { [index: number]: IInt32x4 };
    setFirst: (value: IInt32x4) => void;
    setLast: (value: IInt32x4) => void;
    getLength: () => number;
    setLength: (newLength: number) => void;
    getReversed: () => IIterable<IInt32x4>;
    toString: () => string;
    getHashCode: () => number;
    getElementSizeInBytes: () => number;
    getOffsetInBytes: () => number;
    getLengthInBytes: () => number;
    getBuffer: () => IByteBuffer;
}
export class Int32x4List implements IList<Int32x4>, ITypedData {
    public static bytesPerElement = 16;
    public constructor(length: number) {
        dart.typed_data.int32x4List(this, length);
    }
    public static fromList(elements: IList<IInt32x4>): IInt32x4List {
        return dart.typed_data.int32x4ListFromList(elements);
    }
    public static view(
        buffer: IByteBuffer,
        offsetInBytes: number = 0,
        length?: number | undefined
    ): IInt32x4List {
        return dart.typed_data.int32x4ListView(buffer, offsetInBytes, length);
    }
    public static sublistView(
        data: ITypedData,
        start: number = 0,
        end?: number | undefined
    ): IInt32x4List {
        return dart.typed_data.int32x4ListSublistView(data, start, end);
    }
    private readonly _dart_sublist: (
        start: number,
        end?: number | undefined
    ) => IInt32x4List = undefined as any;
    private readonly _dart_cast: <R>() => IList<R> = undefined as any;
    private readonly _dart_add: (value: IInt32x4) => void = undefined as any;
    private readonly _dart_addAll: (
        iterable: IIterable<IInt32x4>
    ) => void = undefined as any;
    private readonly _dart_sort: (
        compare?: (a: IInt32x4, b: IInt32x4) => number
    ) => void = undefined as any;
    private readonly _dart_shuffle: (
        random?: IRandom | undefined
    ) => void = undefined as any;
    private readonly _dart_indexOf: (
        element: IInt32x4,
        start: number
    ) => number = undefined as any;
    private readonly _dart_indexWhere: (
        test: (element: IInt32x4) => boolean,
        start: number
    ) => number = undefined as any;
    private readonly _dart_lastIndexWhere: (
        test: (element: IInt32x4) => boolean,
        start?: number | undefined
    ) => number = undefined as any;
    private readonly _dart_lastIndexOf: (
        element: IInt32x4,
        start?: number | undefined
    ) => number = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_insert: (
        index: number,
        element: IInt32x4
    ) => void = undefined as any;
    private readonly _dart_insertAll: (
        index: number,
        iterable: IIterable<IInt32x4>
    ) => void = undefined as any;
    private readonly _dart_setAll: (
        index: number,
        iterable: IIterable<IInt32x4>
    ) => void = undefined as any;
    private readonly _dart_remove: (
        value?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_removeAt: (
        index: number
    ) => IInt32x4 = undefined as any;
    private readonly _dart_removeLast: () => IInt32x4 = undefined as any;
    private readonly _dart_removeWhere: (
        test: (element: IInt32x4) => boolean
    ) => void = undefined as any;
    private readonly _dart_retainWhere: (
        test: (element: IInt32x4) => boolean
    ) => void = undefined as any;
    private readonly _dart_getRange: (
        start: number,
        end: number
    ) => IIterable<IInt32x4> = undefined as any;
    private readonly _dart_setRange: (
        start: number,
        end: number,
        iterable: IIterable<IInt32x4>,
        skipCount: number
    ) => void = undefined as any;
    private readonly _dart_removeRange: (
        start: number,
        end: number
    ) => void = undefined as any;
    private readonly _dart_fillRange: (
        start: number,
        end: number,
        fillValue?: IInt32x4 | undefined
    ) => void = undefined as any;
    private readonly _dart_replaceRange: (
        start: number,
        end: number,
        replacement: IIterable<IInt32x4>
    ) => void = undefined as any;
    private readonly _dart_asMap: () => {
        [index: number]: IInt32x4;
    } = undefined as any;
    private readonly _dart_setFirst: (
        value: IInt32x4
    ) => void = undefined as any;
    private readonly _dart_setLast: (
        value: IInt32x4
    ) => void = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_setLength: (
        newLength: number
    ) => void = undefined as any;
    private readonly _dart_getReversed: () => IIterable<IInt32x4> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_getElementSizeInBytes: () => number = undefined as any;
    private readonly _dart_getOffsetInBytes: () => number = undefined as any;
    private readonly _dart_getLengthInBytes: () => number = undefined as any;
    private readonly _dart_getBuffer: () => IByteBuffer = undefined as any;
    public sublist(start: number, end?: number | undefined): IInt32x4List {
        return this._dart_sublist(start, end);
    }
    public cast<R>(): IList<R> {
        return this._dart_cast();
    }
    public add(value: IInt32x4): void {
        return this._dart_add(value);
    }
    public addAll(iterable: IIterable<IInt32x4>): void {
        return this._dart_addAll(iterable);
    }
    public sort(compare?: (a: IInt32x4, b: IInt32x4) => number): void {
        return this._dart_sort(compare);
    }
    public shuffle(random?: IRandom | undefined): void {
        return this._dart_shuffle(random);
    }
    public indexOf(element: IInt32x4, start: number): number {
        return this._dart_indexOf(element, start);
    }
    public indexWhere(
        test: (element: IInt32x4) => boolean,
        start: number
    ): number {
        return this._dart_indexWhere(test, start);
    }
    public lastIndexWhere(
        test: (element: IInt32x4) => boolean,
        start?: number | undefined
    ): number {
        return this._dart_lastIndexWhere(test, start);
    }
    public lastIndexOf(element: IInt32x4, start?: number | undefined): number {
        return this._dart_lastIndexOf(element, start);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public insert(index: number, element: IInt32x4): void {
        return this._dart_insert(index, element);
    }
    public insertAll(index: number, iterable: IIterable<IInt32x4>): void {
        return this._dart_insertAll(index, iterable);
    }
    public setAll(index: number, iterable: IIterable<IInt32x4>): void {
        return this._dart_setAll(index, iterable);
    }
    public remove(value?: Object | undefined): boolean {
        return this._dart_remove(value);
    }
    public removeAt(index: number): IInt32x4 {
        return this._dart_removeAt(index);
    }
    public removeLast(): IInt32x4 {
        return this._dart_removeLast();
    }
    public removeWhere(test: (element: IInt32x4) => boolean): void {
        return this._dart_removeWhere(test);
    }
    public retainWhere(test: (element: IInt32x4) => boolean): void {
        return this._dart_retainWhere(test);
    }
    public getRange(start: number, end: number): IIterable<IInt32x4> {
        return this._dart_getRange(start, end);
    }
    public setRange(
        start: number,
        end: number,
        iterable: IIterable<IInt32x4>,
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
        fillValue?: IInt32x4 | undefined
    ): void {
        return this._dart_fillRange(start, end, fillValue);
    }
    public replaceRange(
        start: number,
        end: number,
        replacement: IIterable<IInt32x4>
    ): void {
        return this._dart_replaceRange(start, end, replacement);
    }
    public asMap(): { [index: number]: IInt32x4 } {
        return this._dart_asMap();
    }
    public setFirst(value: IInt32x4): void {
        return this._dart_setFirst(value);
    }
    public setLast(value: IInt32x4): void {
        return this._dart_setLast(value);
    }
    public getLength(): number {
        return this._dart_getLength();
    }
    public setLength(newLength: number): void {
        return this._dart_setLength(newLength);
    }
    public getReversed(): IIterable<IInt32x4> {
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
