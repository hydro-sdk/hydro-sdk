export interface Iterator<E> {
    moveNext: () => boolean;
    current: () => E;
}
