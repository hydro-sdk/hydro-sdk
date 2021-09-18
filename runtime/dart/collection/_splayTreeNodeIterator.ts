import { IIterator } from "../core/iterator";
import { I_SplayTree } from "./_splayTree";
import { I_SplayTreeIterator } from "./_splayTreeIterator";
declare const dart: {
    collection: {
        _splayTreeNodeIterator: <K, Node>(
            this: void,
            _splayTreeNodeIterator: I_SplayTreeNodeIterator<K, Node>,
            tree: I_SplayTree<K, Node>
        ) => I_SplayTreeNodeIterator<K, Node>;
        _splayTreeNodeIteratorStartAt: <K, Node>(
            tree: I_SplayTree<K, Node>,
            startKey: K
        ) => I_SplayTreeNodeIterator<K, Node>;
    };
};
export interface I_SplayTreeNodeIterator<K, Node> {
    moveNext: () => boolean;
    getCurrent: () => Node;
    toString: () => string;
    getHashCode: () => number;
}
export class _SplayTreeNodeIterator<K, Node>
    implements I_SplayTreeIterator<K, Node, Node>, IIterator<Node>
{
    public constructor(tree: I_SplayTree<K, Node>) {
        dart.collection._splayTreeNodeIterator(this, tree);
    }
    public static startAt<K, Node>(
        tree: I_SplayTree<K, Node>,
        startKey: K
    ): I_SplayTreeNodeIterator<K, Node> {
        return dart.collection._splayTreeNodeIteratorStartAt(tree, startKey);
    }
    private readonly _dart_moveNext: () => boolean = undefined as any;
    private readonly _dart_getCurrent: () => Node = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public moveNext(): boolean {
        return this._dart_moveNext();
    }
    public getCurrent(): Node {
        return this._dart_getCurrent();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
