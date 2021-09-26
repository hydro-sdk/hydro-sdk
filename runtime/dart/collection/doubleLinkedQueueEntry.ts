import { I_DoubleLink } from "./_doubleLink";
declare const dart: {
    collection: {
        doubleLinkedQueueEntry: <E>(
            this: void,
            doubleLinkedQueueEntry: IDoubleLinkedQueueEntry<E>,
            _element?: E | undefined
        ) => IDoubleLinkedQueueEntry<E>;
    };
};
export interface IDoubleLinkedQueueEntry<E> {
    getElement: () => E;
    setElement: (element: E) => void;
    append: (e: E) => void;
    prepend: (e: E) => void;
    remove: () => E;
    previousEntry: () => IDoubleLinkedQueueEntry<E> | undefined;
    nextEntry: () => IDoubleLinkedQueueEntry<E> | undefined;
    toString: () => string;
    getHashCode: () => number;
}
export class DoubleLinkedQueueEntry<E>
    implements I_DoubleLink<IDoubleLinkedQueueEntry<E>>
{
    public constructor(_element?: E | undefined) {
        dart.collection.doubleLinkedQueueEntry(this, _element);
    }
    private readonly _dart_getElement: () => E = undefined as any;
    private readonly _dart_setElement: (element: E) => void = undefined as any;
    private readonly _dart_append: (e: E) => void = undefined as any;
    private readonly _dart_prepend: (e: E) => void = undefined as any;
    private readonly _dart_remove: () => E = undefined as any;
    private readonly _dart_previousEntry: () =>
        | IDoubleLinkedQueueEntry<E>
        | undefined = undefined as any;
    private readonly _dart_nextEntry: () =>
        | IDoubleLinkedQueueEntry<E>
        | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getElement(): E {
        return this._dart_getElement();
    }
    public setElement(element: E): void {
        return this._dart_setElement(element);
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
    public previousEntry(): IDoubleLinkedQueueEntry<E> | undefined {
        return this._dart_previousEntry();
    }
    public nextEntry(): IDoubleLinkedQueueEntry<E> | undefined {
        return this._dart_nextEntry();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
