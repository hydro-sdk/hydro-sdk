import { I_SplayTreeNode } from "./_splayTreeNode";
declare const dart: {
    collection: {
        _splayTreeMapNode: <K, V>(
            this: void,
            _splayTreeMapNode: I_SplayTreeMapNode<K, V>,
            key: K,
            value: V
        ) => I_SplayTreeMapNode<K, V>;
    };
};
export interface I_SplayTreeMapNode<K, V> {
    getKey: () => K;
    getLeft: () => I_SplayTreeMapNode<K, V> | undefined;
    setLeft: (_left?: I_SplayTreeMapNode<K, V> | undefined) => void;
    getRight: () => I_SplayTreeMapNode<K, V> | undefined;
    setRight: (_right?: I_SplayTreeMapNode<K, V> | undefined) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _SplayTreeMapNode<K, V>
    implements
        Omit<
            I_SplayTreeNode<K, I_SplayTreeMapNode<K, V>>,
            "key" | "left" | "left=" | "right" | "right="
        >
{
    public constructor(key: K, value: V) {
        dart.collection._splayTreeMapNode(this, key, value);
    }
    private readonly _dart_getKey: () => K = undefined as any;
    private readonly _dart_getLeft: () => I_SplayTreeMapNode<K, V> | undefined =
        undefined as any;
    private readonly _dart_setLeft: (
        _left?: I_SplayTreeMapNode<K, V> | undefined
    ) => void = undefined as any;
    private readonly _dart_getRight: () =>
        | I_SplayTreeMapNode<K, V>
        | undefined = undefined as any;
    private readonly _dart_setRight: (
        _right?: I_SplayTreeMapNode<K, V> | undefined
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getKey(): K {
        return this._dart_getKey();
    }
    public getLeft(): I_SplayTreeMapNode<K, V> | undefined {
        return this._dart_getLeft();
    }
    public setLeft(_left?: I_SplayTreeMapNode<K, V> | undefined): void {
        return this._dart_setLeft(_left);
    }
    public getRight(): I_SplayTreeMapNode<K, V> | undefined {
        return this._dart_getRight();
    }
    public setRight(_right?: I_SplayTreeMapNode<K, V> | undefined): void {
        return this._dart_setRight(_right);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
