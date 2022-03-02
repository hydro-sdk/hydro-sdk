import { IList } from "../../dart/core/list";
import { IPageStorageKey } from "./pageStorageKey";
declare const flutter: {
    widgets: {
        _storageEntryIdentifier: (
            this: void,
            _storageEntryIdentifier: I_StorageEntryIdentifier,
            keys: IList<IPageStorageKey<any>>
        ) => I_StorageEntryIdentifier;
    };
};
export interface I_StorageEntryIdentifier {
    keys: IList<IPageStorageKey<any>>;
    getIsNotEmpty: () => boolean;
    getHashCode: () => number;
    toString: () => string;
}
export class _StorageEntryIdentifier {
    public readonly keys: IList<IPageStorageKey<any>> = undefined as any;
    public constructor(keys: IList<IPageStorageKey<any>>) {
        flutter.widgets._storageEntryIdentifier(this, keys);
    }
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getIsNotEmpty(): boolean {
        return this._dart_getIsNotEmpty();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
