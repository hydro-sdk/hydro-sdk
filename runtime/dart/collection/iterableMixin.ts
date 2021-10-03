import { IIterable } from "../core/iterable";
import { IList } from "../core/list";
import { ISet } from "../core/set";
export interface IIterableMixin<E> extends IIterable<E> {
    cast: <R>() => IIterable<R>;
    map: <T>(f: (element: E) => T) => IIterable<T>;
    where: (f: (element: E) => boolean) => IIterable<E>;
    whereType: <T>() => IIterable<T>;
    expand: <T>(f: (element: E) => IIterable<T>) => IIterable<T>;
    followedBy: (other: IIterable<E>) => IIterable<E>;
    contains: (element?: Object | undefined) => boolean;
    forEach: (f: (element: E) => void) => void;
    reduce: (combine: (value: E, element: E) => E) => E;
    fold: <T>(
        initialValue: T,
        combine: (previousValue: T, element: E) => T
    ) => T;
    every: (f: (element: E) => boolean) => boolean;
    join: (separator: string) => string;
    any: (test: (element: E) => boolean) => boolean;
    toList: (props: { growable: boolean }) => IList<E>;
    toSet: () => ISet<E>;
    getLength: () => number;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    take: (count: number) => IIterable<E>;
    takeWhile: (test: (value: E) => boolean) => IIterable<E>;
    skip: (count: number) => IIterable<E>;
    skipWhile: (test: (value: E) => boolean) => IIterable<E>;
    getFirst: () => E;
    getLast: () => E;
    getSingle: () => E;
    firstWhere: (
        test: (value: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    lastWhere: (
        test: (value: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    singleWhere: (
        test: (element: E) => boolean,
        props?: { orElse?: () => E | undefined }
    ) => E;
    elementAt: (index: number) => E;
    toString: () => string;
}
