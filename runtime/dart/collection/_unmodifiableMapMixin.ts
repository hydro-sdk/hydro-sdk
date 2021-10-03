import { IIterable } from "../core/iterable";
import { IMap } from "../core/map";
import { IMapEntry } from "../core/mapEntry";
export interface I_UnmodifiableMapMixin<K, V> extends IMap<K, V> {
    addAll: (other: IMap<K, V>) => void;
    addEntries: (entries: IIterable<IMapEntry<K, V>>) => void;
    clear: () => void;
    remove: (key?: Object | undefined) => V | undefined;
    removeWhere: (test: (key: K, value: V) => boolean) => void;
    putIfAbsent: (key: K, ifAbsent: () => V) => V;
    update: (
        key: K,
        update: (value: V) => V,
        props?: { ifAbsent?: () => V | undefined }
    ) => V;
    updateAll: (update: (key: K, value: V) => V) => void;
}
