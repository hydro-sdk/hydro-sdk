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
import { IFloat32x4 } from "./float32x4";
import { IFloat32x4List } from "./float32x4List";
import { ITypedData } from "./typedData";

export interface IUnmodifiableFloat32x4ListView {
    lastIndexOf: (
        element?: Object | undefined,
        start?: number | undefined
    ) => number;
    indexOf: (element: Object | undefined, start: number) => number;
    sublist: (start: number, end?: number | undefined) => IFloat32x4List;
    cast: <R>() => IList<R>;
    add: (value: IFloat32x4) => void;
    addAll: (iterable: IIterable<IFloat32x4>) => void;
    sort: (compare?: (a: IFloat32x4, b: IFloat32x4) => number) => void;
    shuffle: (random?: IRandom | undefined) => void;
    indexWhere: (
        test: (element: IFloat32x4) => boolean,
        start: number
    ) => number;
    lastIndexWhere: (
        test: (element: IFloat32x4) => boolean,
        start?: number | undefined
    ) => number;
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
        props?: { orElse?: () => IFloat32x4 | undefined }
    ) => IFloat32x4;
    lastWhere: (
        test: (element: IFloat32x4) => boolean,
        props?: { orElse?: () => IFloat32x4 | undefined }
    ) => IFloat32x4;
    singleWhere: (
        test: (element: IFloat32x4) => boolean,
        props?: { orElse?: () => IFloat32x4 | undefined }
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
