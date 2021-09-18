import { IIterator } from "../core/iterator";
import { I_DoubleLinkedQueueSentinel } from "./_doubleLinkedQueueSentinel";
declare const dart: {
    collection: {
        _doubleLinkedQueueIterator: <E>(
            this: void,
            _doubleLinkedQueueIterator: I_DoubleLinkedQueueIterator<E>,
            sentinel: I_DoubleLinkedQueueSentinel<E>
        ) => I_DoubleLinkedQueueIterator<E>;
    };
};
export interface I_DoubleLinkedQueueIterator<E> {
    moveNext: () => boolean;
    getCurrent: () => E;
    toString: () => string;
    getHashCode: () => number;
}
export class _DoubleLinkedQueueIterator<E> implements IIterator<E> {
    public constructor(sentinel: I_DoubleLinkedQueueSentinel<E>) {
        dart.collection._doubleLinkedQueueIterator(this, sentinel);
    }
    private readonly _dart_moveNext: () => boolean = undefined as any;
    private readonly _dart_getCurrent: () => E = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public moveNext(): boolean {
        return this._dart_moveNext();
    }
    public getCurrent(): E {
        return this._dart_getCurrent();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
