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
import { IFloat64x2 } from "./float64x2";
import { IFloat64x2List } from "./float64x2List";
import { ITypedData } from "./typedData";
export interface IUnmodifiableFloat64x2ListView {
    lastIndexOf: (
        element?: Object | undefined,
        start?: number | undefined
    ) => number;
    indexOf: (element: Object | undefined, start: number) => number;
    sublist: (start: number, end?: number | undefined) => IFloat64x2List;
    cast: <R>() => IList<R>;
    add: (value: IFloat64x2) => void;
    addAll: (iterable: IIterable<IFloat64x2>) => void;
    sort: (compare?: (a: IFloat64x2, b: IFloat64x2) => number) => void;
    shuffle: (random?: IRandom | undefined) => void;
    indexWhere: (
        test: (element: IFloat64x2) => boolean,
        start: number
    ) => number;
    lastIndexWhere: (
        test: (element: IFloat64x2) => boolean,
        start?: number | undefined
    ) => number;
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
        props?: { orElse?: () => IFloat64x2 | undefined }
    ) => IFloat64x2;
    lastWhere: (
        test: (element: IFloat64x2) => boolean,
        props?: { orElse?: () => IFloat64x2 | undefined }
    ) => IFloat64x2;
    singleWhere: (
        test: (element: IFloat64x2) => boolean,
        props?: { orElse?: () => IFloat64x2 | undefined }
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
