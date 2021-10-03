import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
export interface ISetMixin<E> extends ISet<E> {
    add: (value: E) => boolean;
    contains: (element?: Object | undefined) => boolean;
    lookup: (element?: Object | undefined) => E | undefined;
    remove: (value?: Object | undefined) => boolean;
    getIterator: () => IIterator<E>;
    toSet: () => ISet<E>;
    getLength: () => number;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    cast: <R>() => ISet<R>;
    followedBy: (other: IIterable<E>) => IIterable<E>;
    whereType: <T>() => IIterable<T>;
    clear: () => void;
    addAll: (elements: IIterable<E>) => void;
    removeAll: (elements: IIterable<Object | undefined>) => void;
    retainAll: (elements: IIterable<Object | undefined>) => void;
    removeWhere: (test: (element: E) => boolean) => void;
    retainWhere: (test: (element: E) => boolean) => void;
    containsAll: (other: IIterable<Object | undefined>) => boolean;
    union: (other: ISet<E>) => ISet<E>;
    intersection: (other: ISet<Object | undefined>) => ISet<E>;
    difference: (other: ISet<Object | undefined>) => ISet<E>;
    toList: (props: { growable: boolean }) => IList<E>;
    map: <T>(f: (element: E) => T) => IIterable<T>;
    getSingle: () => E;
    toString: () => string;
    where: (f: (element: E) => boolean) => IIterable<E>;
    expand: <T>(f: (element: E) => IIterable<T>) => IIterable<T>;
    forEach: (f: (element: E) => void) => void;
    reduce: (combine: (value: E, element: E) => E) => E;
    fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: E) => T
    ) => T;
    every: (f: (element: E) => boolean) => boolean;
    join: (separator: string) => string;
    any: (test: (element: E) => boolean) => boolean;
    take: (n: number) => IIterable<E>;
    takeWhile: (test: (value: E) => boolean) => IIterable<E>;
    skip: (n: number) => IIterable<E>;
    skipWhile: (test: (value: E) => boolean) => IIterable<E>;
    getFirst: () => E;
    getLast: () => E;
    firstWhere: (
        test: (value: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    lastWhere: (
        test: (value: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    singleWhere: (
        test: (value: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    elementAt: (index: number) => E;
}
