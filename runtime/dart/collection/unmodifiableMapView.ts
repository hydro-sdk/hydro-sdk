import { IIterable } from "../core/iterable";
import { IMap } from "../core/map";
import { IMapEntry } from "../core/mapEntry";
import { I_UnmodifiableMapMixin } from "./_unmodifiableMapMixin";
import { IMapView } from "./mapView";
declare const dart: {
    collection: {
        unmodifiableMapView: <K, V>(
            this: void,
            unmodifiableMapView: IUnmodifiableMapView<K, V>,
            map: IMap<K, V>
        ) => IUnmodifiableMapView<K, V>;
    };
};
export interface IUnmodifiableMapView<K, V> {
    cast: <RK, RV>() => IMap<RK, RV>;
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
    containsValue: (value?: Object | undefined) => boolean;
    containsKey: (key?: Object | undefined) => boolean;
    map: <K2, V2>(
        convert: (key: K, value: V) => IMapEntry<K2, V2>
    ) => IMap<K2, V2>;
    forEach: (action: (key: K, value: V) => void) => void;
    getEntries: () => IIterable<IMapEntry<K, V>>;
    getKeys: () => IIterable<K>;
    getValues: () => IIterable<V>;
    getLength: () => number;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class UnmodifiableMapView<K, V>
    implements IMapView<K, V>, I_UnmodifiableMapMixin<K, V>, IMap<K, V>
{
    public constructor(map: IMap<K, V>) {
        dart.collection.unmodifiableMapView(this, map);
    }
    private readonly _dart_cast: <RK, RV>() => IMap<RK, RV> = undefined as any;
    private readonly _dart_addAll: (other: IMap<K, V>) => void =
        undefined as any;
    private readonly _dart_addEntries: (
        entries: IIterable<IMapEntry<K, V>>
    ) => void = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_remove: (key?: Object | undefined) => V | undefined =
        undefined as any;
    private readonly _dart_removeWhere: (
        test: (key: K, value: V) => boolean
    ) => void = undefined as any;
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
    private readonly _dart_containsValue: (
        value?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_containsKey: (key?: Object | undefined) => boolean =
        undefined as any;
    private readonly _dart_map: <K2, V2>(
        convert: (key: K, value: V) => IMapEntry<K2, V2>
    ) => IMap<K2, V2> = undefined as any;
    private readonly _dart_forEach: (
        action: (key: K, value: V) => void
    ) => void = undefined as any;
    private readonly _dart_getEntries: () => IIterable<IMapEntry<K, V>> =
        undefined as any;
    private readonly _dart_getKeys: () => IIterable<K> = undefined as any;
    private readonly _dart_getValues: () => IIterable<V> = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public cast<RK, RV>(): IMap<RK, RV> {
        return this._dart_cast();
    }
    public addAll(other: IMap<K, V>): void {
        return this._dart_addAll(other);
    }
    public addEntries(entries: IIterable<IMapEntry<K, V>>): void {
        return this._dart_addEntries(entries);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public remove(key?: Object | undefined): V | undefined {
        return this._dart_remove(key);
    }
    public removeWhere(test: (key: K, value: V) => boolean): void {
        return this._dart_removeWhere(test);
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
    public containsValue(value?: Object | undefined): boolean {
        return this._dart_containsValue(value);
    }
    public containsKey(key?: Object | undefined): boolean {
        return this._dart_containsKey(key);
    }
    public map<K2, V2>(
        convert: (key: K, value: V) => IMapEntry<K2, V2>
    ): IMap<K2, V2> {
        return this._dart_map(convert);
    }
    public forEach(action: (key: K, value: V) => void): void {
        return this._dart_forEach(action);
    }
    public getEntries(): IIterable<IMapEntry<K, V>> {
        return this._dart_getEntries();
    }
    public getKeys(): IIterable<K> {
        return this._dart_getKeys();
    }
    public getValues(): IIterable<V> {
        return this._dart_getValues();
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
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
