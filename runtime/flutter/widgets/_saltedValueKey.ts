import { IKey } from "../foundation/key";
import { IValueKey } from "../foundation/valueKey";
declare const flutter: {
    widgets: {
        _saltedValueKey: (
            this: void,
            _saltedValueKey: I_SaltedValueKey,
            key: IKey
        ) => I_SaltedValueKey;
    };
};
export interface I_SaltedValueKey {
    value: IKey;
    toString: () => string;
    getHashCode: () => number;
}
export class _SaltedValueKey implements IValueKey<IKey> {
    public readonly value: IKey = undefined as any;
    public constructor(key: IKey) {
        flutter.widgets._saltedValueKey(this, key);
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
