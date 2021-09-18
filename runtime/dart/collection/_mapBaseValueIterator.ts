import { IIterator } from "../core/iterator";
import { IMap } from "../core/map";
declare const dart: {
    collection: {
        _mapBaseValueIterator: <K, V>(
            this: void,
            _mapBaseValueIterator: I_MapBaseValueIterator<K, V>,
            map: IMap<K, V>
        ) => I_MapBaseValueIterator<K, V>;
    };
};
export interface I_MapBaseValueIterator<K, V> {
    moveNext: () => boolean;
    getCurrent: () => V;
    toString: () => string;
    getHashCode: () => number;
}
export class _MapBaseValueIterator<K, V> implements IIterator<V> {
    public constructor(map: IMap<K, V>) {
        dart.collection._mapBaseValueIterator(this, map);
    }
    private readonly _dart_moveNext: () => boolean = undefined as any;
    private readonly _dart_getCurrent: () => V = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public moveNext(): boolean {
        return this._dart_moveNext();
    }
    public getCurrent(): V {
        return this._dart_getCurrent();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
