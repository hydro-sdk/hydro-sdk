import { ISet } from "../../dart/core/set";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        _materialStatePropertyAll: <T>(
            this: void,
            _materialStatePropertyAll: I_MaterialStatePropertyAll<T>,
            value: T
        ) => I_MaterialStatePropertyAll<T>;
    };
};
export interface I_MaterialStatePropertyAll<T> {
    resolve: (states: ISet<MaterialState>) => T;
    toString: () => string;
}
export class _MaterialStatePropertyAll<T> implements IMaterialStateProperty<T> {
    public constructor(value: T) {
        flutter.material._materialStatePropertyAll(this, value);
    }
    private readonly _dart_resolve: (states: ISet<MaterialState>) => T =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public resolve(states: ISet<MaterialState>): T {
        return this._dart_resolve(states);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
