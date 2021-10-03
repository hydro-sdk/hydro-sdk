import { IIterable } from "../core/iterable";
import { IMap } from "../core/map";
import { IMapEntry } from "../core/mapEntry";
export interface IMapMixin<K, V> extends IMap<K, V> {
    getKeys: () => IIterable<K>;
    remove: (key?: Object | undefined) => V | undefined;
    clear: () => void;
    cast: <RK, RV>() => IMap<RK, RV>;
    forEach: (action: (key: K, value: V) => void) => void;
    addAll: (other: IMap<K, V>) => void;
    containsValue: (value?: Object | undefined) => boolean;
    putIfAbsent: (key: K, ifAbsent: () => V) => V;
    update: (
        key: K,
        update: (value: V) => V,
        props?: { ifAbsent?: () => V | undefined }
    ) => V;
    updateAll: (update: (key: K, value: V) => V) => void;
    getEntries: () => IIterable<IMapEntry<K, V>>;
    map: <K2, V2>(
        transform: (key: K, value: V) => IMapEntry<K2, V2>
    ) => IMap<K2, V2>;
    addEntries: (newEntries: IIterable<IMapEntry<K, V>>) => void;
    removeWhere: (test: (key: K, value: V) => boolean) => void;
    containsKey: (key?: Object | undefined) => boolean;
    getLength: () => number;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getValues: () => IIterable<V>;
    toString: () => string;
}
