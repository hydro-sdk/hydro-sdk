import { IIterator } from "../core/iterator";
import { I_SplayTreeIterator } from "./_splayTreeIterator";
import { I_SplayTreeMapNode } from "./_splayTreeMapNode";
import { ISplayTreeMap } from "./splayTreeMap";
declare const dart: {
    collection: {
        _splayTreeValueIterator: <K, V>(
            this: void,
            _splayTreeValueIterator: I_SplayTreeValueIterator<K, V>,
            map: ISplayTreeMap<K, V>
        ) => I_SplayTreeValueIterator<K, V>;
    };
};
export interface I_SplayTreeValueIterator<K, V> {
    moveNext: () => boolean;
    getCurrent: () => V;
    toString: () => string;
    getHashCode: () => number;
}
export class _SplayTreeValueIterator<K, V>
    implements
        I_SplayTreeIterator<K, I_SplayTreeMapNode<K, V>, V>,
        IIterator<V>
{
    public constructor(map: ISplayTreeMap<K, V>) {
        dart.collection._splayTreeValueIterator(this, map);
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
