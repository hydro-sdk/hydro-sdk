import { IIterator } from "../core/iterator";
import { I_SplayTree } from "./_splayTree";
import { I_SplayTreeIterator } from "./_splayTreeIterator";
declare const dart: {
    collection: {
        _splayTreeKeyIterator: <K, Node>(
            this: void,
            _splayTreeKeyIterator: I_SplayTreeKeyIterator<K, Node>,
            map: I_SplayTree<K, Node>
        ) => I_SplayTreeKeyIterator<K, Node>;
    };
};
export interface I_SplayTreeKeyIterator<K, Node> {
    moveNext: () => boolean;
    getCurrent: () => K;
    toString: () => string;
    getHashCode: () => number;
}
export class _SplayTreeKeyIterator<K, Node>
    implements I_SplayTreeIterator<K, Node, K>, IIterator<K>
{
    public constructor(map: I_SplayTree<K, Node>) {
        dart.collection._splayTreeKeyIterator(this, map);
    }
    private readonly _dart_moveNext: () => boolean = undefined as any;
    private readonly _dart_getCurrent: () => K = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public moveNext(): boolean {
        return this._dart_moveNext();
    }
    public getCurrent(): K {
        return this._dart_getCurrent();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
