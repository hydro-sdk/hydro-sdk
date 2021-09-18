import { IIterator } from "../core/iterator";
import { I_SplayTree } from "./_splayTree";
declare const dart: {
    collection: {
        _splayTreeIterator: <K, Node, T>(
            this: void,
            _splayTreeIterator: I_SplayTreeIterator<K, Node, T>,
            tree: I_SplayTree<K, Node>
        ) => I_SplayTreeIterator<K, Node, T>;
        _splayTreeIteratorStartAt: <K, Node, T>(
            tree: I_SplayTree<K, Node>,
            startKey: K
        ) => I_SplayTreeIterator<K, Node, T>;
    };
};
export interface I_SplayTreeIterator<K, Node, T> {
    getCurrent: () => T;
    moveNext: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _SplayTreeIterator<K, Node, T> implements IIterator<T> {
    public constructor(tree: I_SplayTree<K, Node>) {
        dart.collection._splayTreeIterator(this, tree);
    }
    public static startAt<K, Node, T>(
        tree: I_SplayTree<K, Node>,
        startKey: K
    ): I_SplayTreeIterator<K, Node, T> {
        return dart.collection._splayTreeIteratorStartAt(tree, startKey);
    }
    private readonly _dart_getCurrent: () => T = undefined as any;
    private readonly _dart_moveNext: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getCurrent(): T {
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
