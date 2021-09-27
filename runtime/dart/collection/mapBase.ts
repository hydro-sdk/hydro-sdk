import { IIterable } from "../core/iterable";
import { IMap } from "../core/map";
import { IMapEntry } from "../core/mapEntry";
import { IMapMixin } from "./mapMixin";
declare const dart: {
    collection: {
        mapBaseMapToString: (
            m: IMap<Object | undefined, Object | undefined>
        ) => string;
    };
};
export interface IMapBase<K, V> {
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
    map: <K2, V2>(
        transform: (key: K, value: V) => IMapEntry<K2, V2>
    ) => IMap<K2, V2>;
    addEntries: (newEntries: IIterable<IMapEntry<K, V>>) => void;
    removeWhere: (test: (key: K, value: V) => boolean) => void;
    containsKey: (key?: Object | undefined) => boolean;
    toString: () => string;
    getKeys: () => IIterable<K>;
    getEntries: () => IIterable<IMapEntry<K, V>>;
    getLength: () => number;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    getValues: () => IIterable<V>;
    getHashCode: () => number;
}
export class MapBase<K, V> implements IMapMixin<K, V>, IMap<K, V> {
    public static mapToString(
        m: IMap<Object | undefined, Object | undefined>
    ): string {
        return dart.collection.mapBaseMapToString(m);
    }
    private readonly _dart_remove: (key?: Object | undefined) => V | undefined =
        undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_cast: <RK, RV>() => IMap<RK, RV> = undefined as any;
    private readonly _dart_forEach: (
        action: (key: K, value: V) => void
    ) => void = undefined as any;
    private readonly _dart_addAll: (other: IMap<K, V>) => void =
        undefined as any;
    private readonly _dart_containsValue: (
        value?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_putIfAbsent: (key: K, ifAbsent: () => V) => V =
        undefined as any;
    private readonly _dart_update: (
        key: K,
        update: (value: V) => V,
        props?: { ifAbsent?: () => V | undefined }
    ) => V = undefined as any;
    private readonly _dart_updateAll: (
        update: (key: K, value: V) => V
    ) => void = undefined as any;
    private readonly _dart_map: <K2, V2>(
        transform: (key: K, value: V) => IMapEntry<K2, V2>
    ) => IMap<K2, V2> = undefined as any;
    private readonly _dart_addEntries: (
        newEntries: IIterable<IMapEntry<K, V>>
    ) => void = undefined as any;
    private readonly _dart_removeWhere: (
        test: (key: K, value: V) => boolean
    ) => void = undefined as any;
    private readonly _dart_containsKey: (key?: Object | undefined) => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getKeys: () => IIterable<K> = undefined as any;
    private readonly _dart_getEntries: () => IIterable<IMapEntry<K, V>> =
        undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getValues: () => IIterable<V> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public remove(key?: Object | undefined): V | undefined {
        return this._dart_remove(key);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public cast<RK, RV>(): IMap<RK, RV> {
        return this._dart_cast();
    }
    public forEach(action: (key: K, value: V) => void): void {
        return this._dart_forEach(action);
    }
    public addAll(other: IMap<K, V>): void {
        return this._dart_addAll(other);
    }
    public containsValue(value?: Object | undefined): boolean {
        return this._dart_containsValue(value);
    }
    public putIfAbsent(key: K, ifAbsent: () => V): V {
        return this._dart_putIfAbsent(key, ifAbsent);
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
    public map<K2, V2>(
        transform: (key: K, value: V) => IMapEntry<K2, V2>
    ): IMap<K2, V2> {
        return this._dart_map(transform);
    }
    public addEntries(newEntries: IIterable<IMapEntry<K, V>>): void {
        return this._dart_addEntries(newEntries);
    }
    public removeWhere(test: (key: K, value: V) => boolean): void {
        return this._dart_removeWhere(test);
    }
    public containsKey(key?: Object | undefined): boolean {
        return this._dart_containsKey(key);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getKeys(): IIterable<K> {
        return this._dart_getKeys();
    }
    public getEntries(): IIterable<IMapEntry<K, V>> {
        return this._dart_getEntries();
    }
    public getLength(): number {
        return this._dart_getLength();
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getIsNotEmpty(): boolean {
        return this._dart_getIsNotEmpty();
    }
    public getValues(): IIterable<V> {
        return this._dart_getValues();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
