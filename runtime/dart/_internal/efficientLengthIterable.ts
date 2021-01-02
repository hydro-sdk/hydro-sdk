import { IIterable } from "./../core/iterable";
export interface EfficientLengthIterable<T> extends IIterable<T> {
    getLength: () => number;
}
