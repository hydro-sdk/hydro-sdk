import { IIterable } from "../core/iterable";
export interface IEfficientLengthIterable<T> extends IIterable<T> {
    getLength: () => number;
}
