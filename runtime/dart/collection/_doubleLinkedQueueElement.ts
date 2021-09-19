import { I_DoubleLinkedQueueEntry } from "./_doubleLinkedQueueEntry";
import { IDoubleLinkedQueue } from "./doubleLinkedQueue";
import { IDoubleLinkedQueueEntry } from "./doubleLinkedQueueEntry";
declare const dart: {
    collection: {
        _doubleLinkedQueueElement: <E>(
            this: void,
            _doubleLinkedQueueElement: I_DoubleLinkedQueueElement<E>,
            element: E,
            queue?: IDoubleLinkedQueue<E> | undefined
        ) => I_DoubleLinkedQueueElement<E>;
    };
};
export interface I_DoubleLinkedQueueElement<E> {
    append: (e: E) => void;
    prepend: (e: E) => void;
    remove: () => E;
    nextEntry: () => IDoubleLinkedQueueEntry<E> | undefined;
    previousEntry: () => IDoubleLinkedQueueEntry<E> | undefined;
    getElement: () => E;
    setElement: (element: E) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _DoubleLinkedQueueElement<E>
    implements I_DoubleLinkedQueueEntry<E>
{
    public constructor(element: E, queue?: IDoubleLinkedQueue<E> | undefined) {
        dart.collection._doubleLinkedQueueElement(this, element, queue);
    }
    private readonly _dart_append: (e: E) => void = undefined as any;
    private readonly _dart_prepend: (e: E) => void = undefined as any;
    private readonly _dart_remove: () => E = undefined as any;
    private readonly _dart_nextEntry: () =>
        | IDoubleLinkedQueueEntry<E>
        | undefined = undefined as any;
    private readonly _dart_previousEntry: () =>
        | IDoubleLinkedQueueEntry<E>
        | undefined = undefined as any;
    private readonly _dart_getElement: () => E = undefined as any;
    private readonly _dart_setElement: (element: E) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public append(e: E): void {
        return this._dart_append(e);
    }
    public prepend(e: E): void {
        return this._dart_prepend(e);
    }
    public remove(): E {
        return this._dart_remove();
    }
    public nextEntry(): IDoubleLinkedQueueEntry<E> | undefined {
        return this._dart_nextEntry();
    }
    public previousEntry(): IDoubleLinkedQueueEntry<E> | undefined {
        return this._dart_previousEntry();
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
