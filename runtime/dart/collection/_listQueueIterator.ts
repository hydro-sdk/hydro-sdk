import { IIterator } from "../core/iterator";
import { IListQueue } from "./listQueue";
declare const dart: {
    collection: {
        _listQueueIterator: <E>(
            this: void,
            _listQueueIterator: I_ListQueueIterator<E>,
            queue: IListQueue<E>
        ) => I_ListQueueIterator<E>;
    };
};
export interface I_ListQueueIterator<E> {
    getCurrent: () => E;
    moveNext: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _ListQueueIterator<E> implements IIterator<E> {
    public constructor(queue: IListQueue<E>) {
        dart.collection._listQueueIterator(this, queue);
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
