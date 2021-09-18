import { IDoubleLinkedQueue } from "./doubleLinkedQueue";
import { IDoubleLinkedQueueEntry } from "./doubleLinkedQueueEntry";
declare const dart: {
    collection: {
        _doubleLinkedQueueEntry: <E>(
            this: void,
            _doubleLinkedQueueEntry: I_DoubleLinkedQueueEntry<E>,
            element?: E | undefined,
            _queue?: IDoubleLinkedQueue<E> | undefined
        ) => I_DoubleLinkedQueueEntry<E>;
    };
};
export interface I_DoubleLinkedQueueEntry<E> {
    nextEntry: () => IDoubleLinkedQueueEntry<E> | undefined;
    previousEntry: () => IDoubleLinkedQueueEntry<E> | undefined;
    append: (e: E) => void;
    prepend: (e: E) => void;
    remove: () => E;
    getElement: () => E;
    setElement: (element: E) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _DoubleLinkedQueueEntry<E> implements IDoubleLinkedQueueEntry<E> {
    public constructor(
        element?: E | undefined,
        _queue?: IDoubleLinkedQueue<E> | undefined
    ) {
        dart.collection._doubleLinkedQueueEntry(this, element, _queue);
    }
    private readonly _dart_nextEntry: () =>
        | IDoubleLinkedQueueEntry<E>
        | undefined = undefined as any;
    private readonly _dart_previousEntry: () =>
        | IDoubleLinkedQueueEntry<E>
        | undefined = undefined as any;
    private readonly _dart_append: (e: E) => void = undefined as any;
    private readonly _dart_prepend: (e: E) => void = undefined as any;
    private readonly _dart_remove: () => E = undefined as any;
    private readonly _dart_getElement: () => E = undefined as any;
    private readonly _dart_setElement: (element: E) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public nextEntry(): IDoubleLinkedQueueEntry<E> | undefined {
        return this._dart_nextEntry();
    }
    public previousEntry(): IDoubleLinkedQueueEntry<E> | undefined {
        return this._dart_previousEntry();
    }
    public append(e: E): void {
        return this._dart_append(e);
    }
    public prepend(e: E): void {
        return this._dart_prepend(e);
    }
    public remove(): E {
        return this._dart_remove();
    }
    public getElement(): E {
        return this._dart_getElement();
    }
    public setElement(element: E): void {
        return this._dart_setElement(element);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
