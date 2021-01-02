import { IIterable } from "./../core/iterable";
export interface EfficientLengthIterable<T> extends IIterable<T> {
    getLength: () => number;
}
export interface IEfficientLengthIterable<T> extends IIterable<T> {
    getLength: () => number;
}
