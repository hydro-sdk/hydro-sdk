import { IElement } from "./element";
declare const flutter: {
    widgets: {
        indexedSlot: <T>(
            this: void,
            indexedSlot: IIndexedSlot<T>,
            index: number,
            value: T
        ) => IIndexedSlot<T>;
    };
};
export interface IIndexedSlot<T> {
    index: number;
    getHashCode: () => number;
}
export class IndexedSlot<T> {
    public readonly index: number = undefined as any;
    public constructor(index: number, value: T) {
        flutter.widgets.indexedSlot(this, index, value);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
