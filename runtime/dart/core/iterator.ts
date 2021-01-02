export interface Iterator<E> {
    moveNext: () => boolean;
    getCurrent: () => E;
}
