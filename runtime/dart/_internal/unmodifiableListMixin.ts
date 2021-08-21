import { IIterable } from "../core/iterable";
import { IList } from "../core/list";
import { IRandom } from "../math/random";
export interface IUnmodifiableListMixin<E> extends IList<E> {
    setLength: (newLength: number) => void;
    setFirst: (element: E) => void;
    setLast: (element: E) => void;
    setAll: (at: number, iterable: IIterable<E>) => void;
    add: (value: E) => void;
    insert: (index: number, element: E) => void;
    insertAll: (at: number, iterable: IIterable<E>) => void;
    addAll: (iterable: IIterable<E>) => void;
    remove: (element?: Object | undefined) => boolean;
    removeWhere: (test: (element: E) => boolean) => void;
    retainWhere: (test: (element: E) => boolean) => void;
    sort: (compare?: (a: E, b: E) => number) => void;
    shuffle: (random?: IRandom | undefined) => void;
    clear: () => void;
    removeAt: (index: number) => E;
    removeLast: () => E;
    setRange: (
        start: number,
        end: number,
        iterable: IIterable<E>,
        skipCount: number
    ) => void;
    removeRange: (start: number, end: number) => void;
    replaceRange: (start: number, end: number, iterable: IIterable<E>) => void;
    fillRange: (start: number, end: number, fillValue?: E | undefined) => void;
}
