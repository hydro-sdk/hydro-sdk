import { IIterable } from "../core/iterable";
import { ISet } from "../core/set";
export interface I_UnmodifiableSetMixin<E> extends ISet<E> {
    add: (value: E) => boolean;
    clear: () => void;
    addAll: (elements: IIterable<E>) => void;
    removeAll: (elements: IIterable<Object | undefined>) => void;
    retainAll: (elements: IIterable<Object | undefined>) => void;
    removeWhere: (test: (element: E) => boolean) => void;
    retainWhere: (test: (element: E) => boolean) => void;
    remove: (value?: Object | undefined) => boolean;
}
