export interface ISink<T> {
    add: (data: T) => void;
    close: () => void;
}
