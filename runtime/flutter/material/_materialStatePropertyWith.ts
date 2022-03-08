import { ISet } from "../../dart/core/set";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        _materialStatePropertyWith: <T>(
            this: void,
            _materialStatePropertyWith: I_MaterialStatePropertyWith<T>,
            _resolve: (states: ISet<MaterialState>) => T
        ) => I_MaterialStatePropertyWith<T>;
    };
};
export interface I_MaterialStatePropertyWith<T> {
    resolve: (states: ISet<MaterialState>) => T;
}
export class _MaterialStatePropertyWith<T>
    implements IMaterialStateProperty<T>
{
    public constructor(_resolve: (states: ISet<MaterialState>) => T) {
        flutter.material._materialStatePropertyWith(this, _resolve);
    }
    private readonly _dart_resolve: (states: ISet<MaterialState>) => T =
        undefined as any;
    public resolve(states: ISet<MaterialState>): T {
        return this._dart_resolve(states);
    }
}
