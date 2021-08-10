declare const dart: {
    core: {
        mapEntry: <K, V>(
            this: void,
            mapEntry: IMapEntry<K, V>,
            key: K,
            value: V
        ) => IMapEntry<K, V>;
    };
};
export interface IMapEntry<K, V> {
    toString: () => string;
}
export class MapEntry<K, V> {
    public constructor(key: K, value: V) {
        dart.core.mapEntry(this, key, value);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
