import { ILocalKey } from "../foundation/localKey";
declare const flutter: {
    material: {
        _saltedKey: <S, V>(
            this: void,
            _saltedKey: I_SaltedKey<S, V>,
            salt: S,
            value: V
        ) => I_SaltedKey<S, V>;
    };
};
export interface I_SaltedKey<S, V> {
    getHashCode: () => number;
    toString: () => string;
}
export class _SaltedKey<S, V> implements ILocalKey {
    public constructor(salt: S, value: V) {
        flutter.material._saltedKey(this, salt, value);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
