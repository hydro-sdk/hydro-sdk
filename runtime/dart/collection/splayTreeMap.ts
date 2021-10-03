import { IIterable } from "../core/iterable";
import { IMap } from "../core/map";
import { IMapEntry } from "../core/mapEntry";
import { I_SplayTree } from "./_splayTree";
import { I_SplayTreeMapNode } from "./_splayTreeMapNode";
import { IMapMixin } from "./mapMixin";
declare const dart: {
    collection: {
        splayTreeMap: <K, V>(
            this: void,
            splayTreeMap: ISplayTreeMap<K, V>,
            compare?: (key1: K, key2: K) => number,
            isValidKey?: (potentialKey: any) => boolean
        ) => ISplayTreeMap<K, V>;
        splayTreeMapFrom: <K, V>(
            other: IMap<any, any>,
            compare?: (key1: K, key2: K) => number,
            isValidKey?: (potentialKey: any) => boolean
        ) => ISplayTreeMap<K, V>;
        splayTreeMapOf: <K, V>(
            other: IMap<K, V>,
            compare?: (key1: K, key2: K) => number,
            isValidKey?: (potentialKey: any) => boolean
        ) => ISplayTreeMap<K, V>;
        splayTreeMapFromIterable: <K, V>(
            iterable: IIterable<any>,
            props?: {
                compare?: (key1: K, key2: K) => number | undefined;
                isValidKey?: (potentialKey: any) => boolean | undefined;
                key?: (element: any) => K | undefined;
                value?: (element: any) => V | undefined;
            }
        ) => ISplayTreeMap<K, V>;
        splayTreeMapFromIterables: <K, V>(
            keys: IIterable<K>,
            values: IIterable<V>,
            compare?: (key1: K, key2: K) => number,
            isValidKey?: (potentialKey: any) => boolean
        ) => ISplayTreeMap<K, V>;
    };
};
export interface ISplayTreeMap<K, V> {
    remove: (key?: Object | undefined) => V | undefined;
    putIfAbsent: (key: K, ifAbsent: () => V) => V;
    addAll: (other: IMap<K, V>) => void;
    getIsEmpty: () => boolean;
    getIsNotEmpty: () => boolean;
    forEach: (f: (key: K, value: V) => void) => void;
    getLength: () => number;
    clear: () => void;
    containsKey: (key?: Object | undefined) => boolean;
    containsValue: (value?: Object | undefined) => boolean;
    getKeys: () => IIterable<K>;
    getValues: () => IIterable<V>;
    firstKey: () => K | undefined;
    lastKey: () => K | undefined;
    lastKeyBefore: (key: K) => K | undefined;
    firstKeyAfter: (key: K) => K | undefined;
    cast: <RK, RV>() => IMap<RK, RV>;
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
    toString: () => string;
    getEntries: () => IIterable<IMapEntry<K, V>>;
    getHashCode: () => number;
}
export class SplayTreeMap<K, V>
    implements
        I_SplayTree<K, I_SplayTreeMapNode<K, V>>,
        IMapMixin<K, V>,
        IMap<K, V>
{
    public constructor(
        compare?: (key1: K, key2: K) => number,
        isValidKey?: (potentialKey: any) => boolean
    ) {
        dart.collection.splayTreeMap(this, compare, isValidKey);
    }
    public static from<K, V>(
        other: IMap<any, any>,
        compare?: (key1: K, key2: K) => number,
        isValidKey?: (potentialKey: any) => boolean
    ): ISplayTreeMap<K, V> {
        return dart.collection.splayTreeMapFrom(other, compare, isValidKey);
    }
    public static of<K, V>(
        other: IMap<K, V>,
        compare?: (key1: K, key2: K) => number,
        isValidKey?: (potentialKey: any) => boolean
    ): ISplayTreeMap<K, V> {
        return dart.collection.splayTreeMapOf(other, compare, isValidKey);
    }
    public static fromIterable<K, V>(
        iterable: IIterable<any>,
        props?: {
            compare?: (key1: K, key2: K) => number | undefined;
            isValidKey?: (potentialKey: any) => boolean | undefined;
            key?: (element: any) => K | undefined;
            value?: (element: any) => V | undefined;
        }
    ): ISplayTreeMap<K, V> {
        return dart.collection.splayTreeMapFromIterable(iterable, props);
    }
    public static fromIterables<K, V>(
        keys: IIterable<K>,
        values: IIterable<V>,
        compare?: (key1: K, key2: K) => number,
        isValidKey?: (potentialKey: any) => boolean
    ): ISplayTreeMap<K, V> {
        return dart.collection.splayTreeMapFromIterables(
            keys,
            values,
            compare,
            isValidKey
        );
    }
    private readonly _dart_remove: (key?: Object | undefined) => V | undefined =
        undefined as any;
    private readonly _dart_putIfAbsent: (key: K, ifAbsent: () => V) => V =
        undefined as any;
    private readonly _dart_addAll: (other: IMap<K, V>) => void =
        undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_forEach: (f: (key: K, value: V) => void) => void =
        undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_containsKey: (key?: Object | undefined) => boolean =
        undefined as any;
    private readonly _dart_containsValue: (
        value?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_getKeys: () => IIterable<K> = undefined as any;
    private readonly _dart_getValues: () => IIterable<V> = undefined as any;
    private readonly _dart_firstKey: () => K | undefined = undefined as any;
    private readonly _dart_lastKey: () => K | undefined = undefined as any;
    private readonly _dart_lastKeyBefore: (key: K) => K | undefined =
        undefined as any;
    private readonly _dart_firstKeyAfter: (key: K) => K | undefined =
        undefined as any;
    private readonly _dart_cast: <RK, RV>() => IMap<RK, RV> = undefined as any;
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
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getEntries: () => IIterable<IMapEntry<K, V>> =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public remove(key?: Object | undefined): V | undefined {
        return this._dart_remove(key);
    }
    public putIfAbsent(key: K, ifAbsent: () => V): V {
        return this._dart_putIfAbsent(key, ifAbsent);
    }
    public addAll(other: IMap<K, V>): void {
        return this._dart_addAll(other);
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public getIsNotEmpty(): boolean {
        return this._dart_getIsNotEmpty();
    }
    public forEach(f: (key: K, value: V) => void): void {
        return this._dart_forEach(f);
    }
    public getLength(): number {
        return this._dart_getLength();
    }
    public clear(): void {
        return this._dart_clear();
    }
    public containsKey(key?: Object | undefined): boolean {
        return this._dart_containsKey(key);
    }
    public containsValue(value?: Object | undefined): boolean {
        return this._dart_containsValue(value);
    }
    public getKeys(): IIterable<K> {
        return this._dart_getKeys();
    }
    public getValues(): IIterable<V> {
        return this._dart_getValues();
    }
    public firstKey(): K | undefined {
        return this._dart_firstKey();
    }
    public lastKey(): K | undefined {
        return this._dart_lastKey();
    }
    public lastKeyBefore(key: K): K | undefined {
        return this._dart_lastKeyBefore(key);
    }
    public firstKeyAfter(key: K): K | undefined {
        return this._dart_firstKeyAfter(key);
    }
    public cast<RK, RV>(): IMap<RK, RV> {
        return this._dart_cast();
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
    public toString(): string {
        return this._dart_toString();
    }
    public getEntries(): IIterable<IMapEntry<K, V>> {
        return this._dart_getEntries();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
