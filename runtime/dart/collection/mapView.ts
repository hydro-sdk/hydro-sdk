import { IIterable } from "../core/iterable";
import { IMap } from "../core/map";
import { IMapEntry } from "../core/mapEntry";
declare const dart: {
    collection: {
        mapView: <K, V>(
            this: void,
            mapView: IMapView<K, V>,
            map: IMap<K, V>
        ) => IMapView<K, V>;
    };
};
export interface IMapView<K, V> {
    cast: <RK, RV>() => IMap<RK, RV>;
    addAll: (other: IMap<K, V>) => void;
    clear: () => void;
    putIfAbsent: (key: K, ifAbsent: () => V) => V;
    containsKey: (key?: Object | undefined) => boolean;
    containsValue: (value?: Object | undefined) => boolean;
    forEach: (action: (key: K, value: V) => void) => void;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getLength: () => number;
    getKeys: () => IIterable<K>;
    remove: (key?: Object | undefined) => V | undefined;
    toString: () => string;
    getValues: () => IIterable<V>;
    getEntries: () => IIterable<IMapEntry<K, V>>;
    addEntries: (entries: IIterable<IMapEntry<K, V>>) => void;
    map: <K2, V2>(
        transform: (key: K, value: V) => IMapEntry<K2, V2>
    ) => IMap<K2, V2>;
    update: (
        key: K,
        update: (value: V) => V,
        props?: { ifAbsent?: () => V | undefined }
    ) => V;
    updateAll: (update: (key: K, value: V) => V) => void;
    removeWhere: (test: (key: K, value: V) => boolean) => void;
    getHashCode: () => number;
}
export class MapView<K, V> implements IMap<K, V> {
    public constructor(map: IMap<K, V>) {
        dart.collection.mapView(this, map);
    }
    private readonly _dart_cast: <RK, RV>() => IMap<RK, RV> = undefined as any;
    private readonly _dart_addAll: (other: IMap<K, V>) => void =
        undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_putIfAbsent: (key: K, ifAbsent: () => V) => V =
        undefined as any;
    private readonly _dart_containsKey: (key?: Object | undefined) => boolean =
        undefined as any;
    private readonly _dart_containsValue: (
        value?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_forEach: (
        action: (key: K, value: V) => void
    ) => void = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_getKeys: () => IIterable<K> = undefined as any;
    private readonly _dart_remove: (key?: Object | undefined) => V | undefined =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getValues: () => IIterable<V> = undefined as any;
    private readonly _dart_getEntries: () => IIterable<IMapEntry<K, V>> =
        undefined as any;
    private readonly _dart_addEntries: (
        entries: IIterable<IMapEntry<K, V>>
    ) => void = undefined as any;
    private readonly _dart_map: <K2, V2>(
        transform: (key: K, value: V) => IMapEntry<K2, V2>
    ) => IMap<K2, V2> = undefined as any;
    private readonly _dart_update: (
        key: K,
        update: (value: V) => V,
        props?: { ifAbsent?: () => V | undefined }
    ) => V = undefined as any;
    private readonly _dart_updateAll: (
        update: (key: K, value: V) => V
    ) => void = undefined as any;
    private readonly _dart_removeWhere: (
        test: (key: K, value: V) => boolean
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public cast<RK, RV>(): IMap<RK, RV> {
        return this._dart_cast();
    }
    public addAll(other: IMap<K, V>): void {
        return this._dart_addAll(other);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public putIfAbsent(key: K, ifAbsent: () => V): V {
        return this._dart_putIfAbsent(key, ifAbsent);
    }
    public containsKey(key?: Object | undefined): boolean {
        return this._dart_containsKey(key);
    }
    public containsValue(value?: Object | undefined): boolean {
        return this._dart_containsValue(value);
    }
    public forEach(action: (key: K, value: V) => void): void {
        return this._dart_forEach(action);
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getIsNotEmpty(): boolean {
        return this._dart_getIsNotEmpty();
    }
    public getLength(): number {
        return this._dart_getLength();
    }
    public getKeys(): IIterable<K> {
        return this._dart_getKeys();
    }
    public remove(key?: Object | undefined): V | undefined {
        return this._dart_remove(key);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getValues(): IIterable<V> {
        return this._dart_getValues();
    }
    public getEntries(): IIterable<IMapEntry<K, V>> {
        return this._dart_getEntries();
    }
    public addEntries(entries: IIterable<IMapEntry<K, V>>): void {
        return this._dart_addEntries(entries);
    }
    public map<K2, V2>(
        transform: (key: K, value: V) => IMapEntry<K2, V2>
    ): IMap<K2, V2> {
        return this._dart_map(transform);
    }
    public update(
        key: K,
        update: (value: V) => V,
        props?: { ifAbsent?: () => V | undefined }
    ): V {
        return this._dart_update(key, update, props);
    }
    public updateAll(update: (key: K, value: V) => V): void {
        return this._dart_updateAll(update);
    }
    public removeWhere(test: (key: K, value: V) => boolean): void {
        return this._dart_removeWhere(test);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
