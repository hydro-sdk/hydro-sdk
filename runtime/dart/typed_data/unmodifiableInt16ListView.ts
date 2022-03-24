import { IEfficientLengthIterable } from "../_internal/efficientLengthIterable";
import { IUnmodifiableListBase } from "../_internal/unmodifiableListBase";
import { IUnmodifiableListMixin } from "../_internal/unmodifiableListMixin";
import { IListMixin } from "../collection/listMixin";
import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { IRandom } from "../math/random";
import { I_TypedIntList } from "./_typedIntList";
import { I_UnmodifiableListMixin } from "./_unmodifiableListMixin";
import { IByteBuffer } from "./byteBuffer";
import { IInt16List } from "./int16List";

export interface IUnmodifiableInt16ListView {
    lastIndexOf: (
        element?: Object | undefined,
        start?: number | undefined
    ) => number;
    indexOf: (element: Object | undefined, start: number) => number;
    sublist: (start: number, end?: number | undefined) => IInt16List;
    cast: <R>() => IList<R>;
    add: (value: number) => void;
    addAll: (iterable: IIterable<number>) => void;
    sort: (compare?: (a: number, b: number) => number) => void;
    shuffle: (random?: IRandom | undefined) => void;
    indexWhere: (test: (element: number) => boolean, start: number) => number;
    lastIndexWhere: (
        test: (element: number) => boolean,
        start?: number | undefined
    ) => number;
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
        props?: { orElse?: () => number | undefined }
    ) => number;
    lastWhere: (
        test: (element: number) => boolean,
        props?: { orElse?: () => number | undefined }
    ) => number;
    singleWhere: (
        test: (element: number) => boolean,
        props?: { orElse?: () => number | undefined }
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
