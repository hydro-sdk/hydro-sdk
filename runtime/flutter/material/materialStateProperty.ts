import { ISet } from "../../dart/core/set";
import { MaterialState } from "./materialState";
declare const flutter: {
    material: {
        materialStateProperty: <T>(
            this: void,
            materialStateProperty: IMaterialStateProperty<T>
        ) => IMaterialStateProperty<T>;
        materialStatePropertyResolveAs: <T>(
            value: T,
            states: ISet<MaterialState>
        ) => T;
        materialStatePropertyResolveWith: <T>(
            callback: (states: ISet<MaterialState>) => T
        ) => IMaterialStateProperty<T>;
        materialStatePropertyAll: <T>(value: T) => IMaterialStateProperty<T>;
    };
};
export interface IMaterialStateProperty<T> {
    resolve: (states: ISet<MaterialState>) => T;
}
export class MaterialStateProperty<T> {
    public constructor() {
        flutter.material.materialStateProperty(this);
    }
    public static resolveAs<T>(value: T, states: ISet<MaterialState>): T {
        return flutter.material.materialStatePropertyResolveAs(value, states);
    }
    public static resolveWith<T>(
        callback: (states: ISet<MaterialState>) => T
    ): IMaterialStateProperty<T> {
        return flutter.material.materialStatePropertyResolveWith(callback);
    }
    public static all<T>(value: T): IMaterialStateProperty<T> {
        return flutter.material.materialStatePropertyAll(value);
    }
    private readonly _dart_resolve: (states: ISet<MaterialState>) => T =
        undefined as any;
    public resolve(states: ISet<MaterialState>): T {
        return this._dart_resolve(states);
    }
}
