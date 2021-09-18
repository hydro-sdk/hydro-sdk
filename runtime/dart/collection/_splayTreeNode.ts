declare const dart: {
    collection: {
        _splayTreeNode: <K, Node>(
            this: void,
            _splayTreeNode: I_SplayTreeNode<K, Node>,
            key: K
        ) => I_SplayTreeNode<K, Node>;
    };
};
export interface I_SplayTreeNode<K, Node> {}
export class _SplayTreeNode<K, Node> {
    public constructor(key: K) {
        dart.collection._splayTreeNode(this, key);
    }
}
