import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
import { IEfficientLengthIterable } from "./efficientLengthIterable";
export interface IListIterable<E> extends IEfficientLengthIterable<E> {
    getLength: () => number;
    elementAt: (i: number) => E;
    getIterator: () => IIterator<E>;
    forEach: (action: (element: E) => void) => void;
    getIsEmpty: () => boolean;
    getFirst: () => E;
    getLast: () => E;
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
    map: <T>(f: (element: E) => T) => IIterable<T>;
    reduce: (combine: (value: E, element: E) => E) => E;
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
}
