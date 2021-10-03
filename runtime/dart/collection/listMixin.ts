import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { IRandom } from "../math/random";
export interface IListMixin<E> extends IList<E> {
    getIterator: () => IIterator<E>;
    elementAt: (index: number) => E;
    followedBy: (other: IIterable<E>) => IIterable<E>;
    forEach: (action: (element: E) => void) => void;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getFirst: () => E;
    setFirst: (value: E) => void;
    getLast: () => E;
    setLast: (value: E) => void;
    getSingle: () => E;
    contains: (element?: Object | undefined) => boolean;
    every: (test: (element: E) => boolean) => boolean;
    any: (test: (element: E) => boolean) => boolean;
    firstWhere: (
        test: (element: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    lastWhere: (
        test: (element: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    singleWhere: (
        test: (element: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    join: (separator: string) => string;
    where: (test: (element: E) => boolean) => IIterable<E>;
    whereType: <T>() => IIterable<T>;
    map: <T>(f: (element: E) => T) => IIterable<T>;
    expand: <T>(f: (element: E) => IIterable<T>) => IIterable<T>;
    reduce: (combine: (previousValue: E, element: E) => E) => E;
    fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: E) => T
    ) => T;
    skip: (count: number) => IIterable<E>;
    skipWhile: (test: (element: E) => boolean) => IIterable<E>;
    take: (count: number) => IIterable<E>;
    takeWhile: (test: (element: E) => boolean) => IIterable<E>;
    toList: (props: { growable: boolean }) => IList<E>;
    toSet: () => ISet<E>;
    add: (element: E) => void;
    addAll: (iterable: IIterable<E>) => void;
    remove: (element?: Object | undefined) => boolean;
    removeWhere: (test: (element: E) => boolean) => void;
    retainWhere: (test: (element: E) => boolean) => void;
    clear: () => void;
    cast: <R>() => IList<R>;
    removeLast: () => E;
    sort: (compare?: (a: E, b: E) => number) => void;
    shuffle: (random?: IRandom | undefined) => void;
    asMap: () => { [index: number]: E };
    sublist: (start: number, end?: number | undefined) => IList<E>;
    getRange: (start: number, end: number) => IIterable<E>;
    removeRange: (start: number, end: number) => void;
    fillRange: (start: number, end: number, fill?: E | undefined) => void;
    setRange: (
        start: number,
        end: number,
        iterable: IIterable<E>,
        skipCount: number
    ) => void;
    replaceRange: (
        start: number,
        end: number,
        newContents: IIterable<E>
    ) => void;
    indexOf: (element: Object | undefined, start: number) => number;
    indexWhere: (test: (element: E) => boolean, start: number) => number;
    lastIndexOf: (
        element?: Object | undefined,
        start?: number | undefined
    ) => number;
    lastIndexWhere: (
        test: (element: E) => boolean,
        start?: number | undefined
    ) => number;
    insert: (index: number, element: E) => void;
    removeAt: (index: number) => E;
    insertAll: (index: number, iterable: IIterable<E>) => void;
    setAll: (index: number, iterable: IIterable<E>) => void;
    getReversed: () => IIterable<E>;
    toString: () => string;
}
