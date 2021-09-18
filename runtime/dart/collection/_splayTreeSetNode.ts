import { I_SplayTreeNode } from "./_splayTreeNode";
declare const dart: {
    collection: {
        _splayTreeSetNode: <K>(
            this: void,
            _splayTreeSetNode: I_SplayTreeSetNode<K>,
            key: K
        ) => I_SplayTreeSetNode<K>;
    };
};
export interface I_SplayTreeSetNode<K> {
    getKey: () => K;
    getLeft: () => I_SplayTreeSetNode<K> | undefined;
    setLeft: (_left?: I_SplayTreeSetNode<K> | undefined) => void;
    getRight: () => I_SplayTreeSetNode<K> | undefined;
    setRight: (_right?: I_SplayTreeSetNode<K> | undefined) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _SplayTreeSetNode<K>
    implements
        Omit<
            I_SplayTreeNode<K, I_SplayTreeSetNode<K>>,
            "key" | "left" | "left=" | "right" | "right="
        >
{
    public constructor(key: K) {
        dart.collection._splayTreeSetNode(this, key);
    }
    private readonly _dart_getKey: () => K = undefined as any;
    private readonly _dart_getLeft: () => I_SplayTreeSetNode<K> | undefined =
        undefined as any;
    private readonly _dart_setLeft: (
        _left?: I_SplayTreeSetNode<K> | undefined
    ) => void = undefined as any;
    private readonly _dart_getRight: () => I_SplayTreeSetNode<K> | undefined =
        undefined as any;
    private readonly _dart_setRight: (
        _right?: I_SplayTreeSetNode<K> | undefined
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getKey(): K {
        return this._dart_getKey();
    }
    public getLeft(): I_SplayTreeSetNode<K> | undefined {
        return this._dart_getLeft();
    }
    public setLeft(_left?: I_SplayTreeSetNode<K> | undefined): void {
        return this._dart_setLeft(_left);
    }
    public getRight(): I_SplayTreeSetNode<K> | undefined {
        return this._dart_getRight();
    }
    public setRight(_right?: I_SplayTreeSetNode<K> | undefined): void {
        return this._dart_setRight(_right);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
