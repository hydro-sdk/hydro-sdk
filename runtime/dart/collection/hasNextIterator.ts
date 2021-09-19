import { IIterator } from "../core/iterator";
declare const dart: {
    collection: {
        hasNextIterator: <E>(
            this: void,
            hasNextIterator: IHasNextIterator<E>,
            _iterator: IIterator<E>
        ) => IHasNextIterator<E>;
    };
};
export interface IHasNextIterator<E> {
    getHasNext: () => boolean;
    next: () => E;
}
export class HasNextIterator<E> {
    public static _HAS_NEXT_AND_NEXT_IN_CURRENT = 0;
    public static _NO_NEXT = 1;
    public static _NOT_MOVED_YET = 2;
    public constructor(_iterator: IIterator<E>) {
        dart.collection.hasNextIterator(this, _iterator);
    }
    private readonly _dart_getHasNext: () => boolean = undefined as any;
    private readonly _dart_next: () => E = undefined as any;
    public getHasNext(): boolean {
        return this._dart_getHasNext();
    }
    public next(): E {
        return this._dart_next();
    }
}
