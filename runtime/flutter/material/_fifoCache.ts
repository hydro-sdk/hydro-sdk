declare const flutter: {
    material: {
        _fifoCache: <K, V>(
            this: void,
            _fifoCache: I_FifoCache<K, V>,
            _maximumSize: number
        ) => I_FifoCache<K, V>;
    };
};
export interface I_FifoCache<K, V> {
    putIfAbsent: (key: K, loader: () => V) => V;
}
export class _FifoCache<K, V> {
    public constructor(_maximumSize: number) {
        flutter.material._fifoCache(this, _maximumSize);
    }
    private readonly _dart_putIfAbsent: (key: K, loader: () => V) => V =
        undefined as any;
    public putIfAbsent(key: K, loader: () => V): V {
        return this._dart_putIfAbsent(key, loader);
    }
}
