export interface Iterator<E> {
    moveNext: () => boolean;
    getCurrent: () => E;
}
export interface IIterator<E> {
    moveNext: () => boolean;
    getCurrent: () => E;
}
