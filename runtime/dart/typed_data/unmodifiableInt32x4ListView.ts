import { IEfficientLengthIterable } from "../_internal/efficientLengthIterable";
import { IUnmodifiableListBase } from "../_internal/unmodifiableListBase";
import { IUnmodifiableListMixin } from "../_internal/unmodifiableListMixin";
import { IListMixin } from "../collection/listMixin";
import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { IRandom } from "../math/random";
import { I_UnmodifiableListMixin } from "./_unmodifiableListMixin";
import { IByteBuffer } from "./byteBuffer";
import { IInt32x4 } from "./int32x4";
import { IInt32x4List } from "./int32x4List";
import { ITypedData } from "./typedData";
export interface IUnmodifiableInt32x4ListView {
    lastIndexOf: (
        element?: Object | undefined,
        start?: number | undefined
    ) => number;
    indexOf: (element: Object | undefined, start: number) => number;
    sublist: (start: number, end?: number | undefined) => IInt32x4List;
    cast: <R>() => IList<R>;
    add: (value: IInt32x4) => void;
    addAll: (iterable: IIterable<IInt32x4>) => void;
    sort: (compare?: (a: IInt32x4, b: IInt32x4) => number) => void;
    shuffle: (random?: IRandom | undefined) => void;
    indexWhere: (test: (element: IInt32x4) => boolean, start: number) => number;
    lastIndexWhere: (
        test: (element: IInt32x4) => boolean,
        start?: number | undefined
    ) => number;
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
    followedBy: (other: IIterable<IInt32x4>) => IIterable<IInt32x4>;
    map: <T>(f: (e: IInt32x4) => T) => IIterable<T>;
    where: (test: (element: IInt32x4) => boolean) => IIterable<IInt32x4>;
    whereType: <T>() => IIterable<T>;
    expand: <T>(f: (element: IInt32x4) => IIterable<T>) => IIterable<T>;
    contains: (element?: Object | undefined) => boolean;
    forEach: (f: (element: IInt32x4) => void) => void;
    reduce: (
        combine: (value: IInt32x4, element: IInt32x4) => IInt32x4
    ) => IInt32x4;
    fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: IInt32x4) => T
    ) => T;
    every: (test: (element: IInt32x4) => boolean) => boolean;
    join: (separator: string) => string;
    any: (test: (element: IInt32x4) => boolean) => boolean;
    toList: (props: { growable: boolean }) => IList<IInt32x4>;
    toSet: () => ISet<IInt32x4>;
    take: (count: number) => IIterable<IInt32x4>;
    takeWhile: (test: (value: IInt32x4) => boolean) => IIterable<IInt32x4>;
    skip: (count: number) => IIterable<IInt32x4>;
    skipWhile: (test: (value: IInt32x4) => boolean) => IIterable<IInt32x4>;
    firstWhere: (
        test: (element: IInt32x4) => boolean,
        props?: { orElse?: () => IInt32x4 | undefined }
    ) => IInt32x4;
    lastWhere: (
        test: (element: IInt32x4) => boolean,
        props?: { orElse?: () => IInt32x4 | undefined }
    ) => IInt32x4;
    singleWhere: (
        test: (element: IInt32x4) => boolean,
        props?: { orElse?: () => IInt32x4 | undefined }
    ) => IInt32x4;
    elementAt: (index: number) => IInt32x4;
    toString: () => string;
    getIterator: () => IIterator<IInt32x4>;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getFirst: () => IInt32x4;
    getLast: () => IInt32x4;
    getSingle: () => IInt32x4;
    getHashCode: () => number;
    getElementSizeInBytes: () => number;
    getOffsetInBytes: () => number;
    getLengthInBytes: () => number;
    getBuffer: () => IByteBuffer;
}
