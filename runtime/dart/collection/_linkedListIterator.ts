import { IIterator } from "../core/iterator";
import { ILinkedList } from "./linkedList";
declare const dart: {
    collection: {
        _linkedListIterator: <E>(
            this: void,
            _linkedListIterator: I_LinkedListIterator<E>,
            list: ILinkedList<E>
        ) => I_LinkedListIterator<E>;
    };
};
export interface I_LinkedListIterator<E> {
    getCurrent: () => E;
    moveNext: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _LinkedListIterator<E> implements IIterator<E> {
    public constructor(list: ILinkedList<E>) {
        dart.collection._linkedListIterator(this, list);
    }
    private readonly _dart_getCurrent: () => E = undefined as any;
    private readonly _dart_moveNext: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getCurrent(): E {
        return this._dart_getCurrent();
    }
    public moveNext(): boolean {
        return this._dart_moveNext();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
