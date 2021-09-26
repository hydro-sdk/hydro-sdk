import { IIterable } from "../core/iterable";
import { IIterator } from "../core/iterator";
import { IList } from "../core/list";
import { ISet } from "../core/set";
export interface IEfficientLengthIterable<T> extends IIterable<T> {
    getLength: () => number;
}
