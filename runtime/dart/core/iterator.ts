export interface IIterator<E> {
    moveNext: () => boolean;
    getCurrent: () => E;
}
