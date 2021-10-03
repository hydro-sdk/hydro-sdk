import { IIterable } from "../core/iterable";
import { IMap } from "../core/map";
import { IMapEntry } from "../core/mapEntry";
declare const dart: {
    collection: {
        hashMap: <K, V>(
            this: void,
            hashMap: IHashMap<K, V>,
            props?: {
                equals?: (__: K) => boolean | undefined;
                hashCode?: (__: K) => number | undefined;
                isValidKey?: (__: any) => boolean | undefined;
            }
        ) => IHashMap<K, V>;
        hashMapIdentity: <K, V>() => IHashMap<K, V>;
        hashMapFrom: <K, V>(other: IMap<any, any>) => IHashMap<K, V>;
        hashMapOf: <K, V>(other: IMap<K, V>) => IHashMap<K, V>;
        hashMapFromIterable: <K, V>(
            iterable: IIterable<any>,
            props?: {
                key?: (element: any) => K | undefined;
                value?: (element: any) => V | undefined;
            }
        ) => IHashMap<K, V>;
        hashMapFromIterables: <K, V>(
            keys: IIterable<K>,
            values: IIterable<V>
        ) => IHashMap<K, V>;
        hashMapFromEntries: <K, V>(
            entries: IIterable<IMapEntry<K, V>>
        ) => IHashMap<K, V>;
    };
};
export interface IHashMap<K, V> {
    cast: <RK, RV>() => IMap<RK, RV>;
    containsValue: (value?: Object | undefined) => boolean;
    containsKey: (key?: Object | undefined) => boolean;
    map: <K2, V2>(
        convert: (key: K, value: V) => IMapEntry<K2, V2>
    ) => IMap<K2, V2>;
    addEntries: (newEntries: IIterable<IMapEntry<K, V>>) => void;
    update: (
        key: K,
        update: (value: V) => V,
        props?: { ifAbsent?: () => V | undefined }
    ) => V;
    updateAll: (update: (key: K, value: V) => V) => void;
    removeWhere: (test: (key: K, value: V) => boolean) => void;
    putIfAbsent: (key: K, ifAbsent: () => V) => V;
    addAll: (other: IMap<K, V>) => void;
    remove: (key?: Object | undefined) => V | undefined;
    clear: () => void;
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
export class HashMap<K, V> implements IMap<K, V> {
    public constructor(props?: {
        equals?: (__: K) => boolean | undefined;
        hashCode?: (__: K) => number | undefined;
        isValidKey?: (__: any) => boolean | undefined;
    }) {
        dart.collection.hashMap(this, props);
    }
    public static identity<K, V>(): IHashMap<K, V> {
        return dart.collection.hashMapIdentity();
    }
    public static from<K, V>(other: IMap<any, any>): IHashMap<K, V> {
        return dart.collection.hashMapFrom(other);
    }
    public static of<K, V>(other: IMap<K, V>): IHashMap<K, V> {
        return dart.collection.hashMapOf(other);
    }
    public static fromIterable<K, V>(
        iterable: IIterable<any>,
        props?: {
            key?: (element: any) => K | undefined;
            value?: (element: any) => V | undefined;
        }
    ): IHashMap<K, V> {
        return dart.collection.hashMapFromIterable(iterable, props);
    }
    public static fromIterables<K, V>(
        keys: IIterable<K>,
        values: IIterable<V>
    ): IHashMap<K, V> {
        return dart.collection.hashMapFromIterables(keys, values);
    }
    public static fromEntries<K, V>(
        entries: IIterable<IMapEntry<K, V>>
    ): IHashMap<K, V> {
        return dart.collection.hashMapFromEntries(entries);
    }
    private readonly _dart_cast: <RK, RV>() => IMap<RK, RV> = undefined as any;
    private readonly _dart_containsValue: (
        value?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_containsKey: (key?: Object | undefined) => boolean =
        undefined as any;
    private readonly _dart_map: <K2, V2>(
        convert: (key: K, value: V) => IMapEntry<K2, V2>
    ) => IMap<K2, V2> = undefined as any;
    private readonly _dart_addEntries: (
        newEntries: IIterable<IMapEntry<K, V>>
    ) => void = undefined as any;
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
    private readonly _dart_putIfAbsent: (key: K, ifAbsent: () => V) => V =
        undefined as any;
    private readonly _dart_addAll: (other: IMap<K, V>) => void =
        undefined as any;
    private readonly _dart_remove: (key?: Object | undefined) => V | undefined =
        undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
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
    public addEntries(newEntries: IIterable<IMapEntry<K, V>>): void {
        return this._dart_addEntries(newEntries);
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
    public putIfAbsent(key: K, ifAbsent: () => V): V {
        return this._dart_putIfAbsent(key, ifAbsent);
    }
    public addAll(other: IMap<K, V>): void {
        return this._dart_addAll(other);
    }
    public remove(key?: Object | undefined): V | undefined {
        return this._dart_remove(key);
    }
    public clear(): void {
        return this._dart_clear();
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
