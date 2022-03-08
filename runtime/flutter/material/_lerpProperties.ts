import { ISet } from "../../dart/core/set";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        _lerpProperties: <T>(
            this: void,
            _lerpProperties: I_LerpProperties<T>,
            a: IMaterialStateProperty<T> | undefined,
            b: IMaterialStateProperty<T> | undefined,
            t: number,
            lerpFunction: (__: number) => T | undefined
        ) => I_LerpProperties<T>;
    };
};
export interface I_LerpProperties<T> {
    a: IMaterialStateProperty<T> | undefined;
    b: IMaterialStateProperty<T> | undefined;
    t: number;
    resolve: (states: ISet<MaterialState>) => T | undefined;
}
export class _LerpProperties<T> implements IMaterialStateProperty<?T> {
    public readonly a: IMaterialStateProperty<T> | undefined = undefined as any;
    public readonly b: IMaterialStateProperty<T> | undefined = undefined as any;
    public readonly t: number = undefined as any;
    public constructor(
        a: IMaterialStateProperty<T> | undefined,
        b: IMaterialStateProperty<T> | undefined,
        t: number,
        lerpFunction: (__: number) => T | undefined
    ) {
        flutter.material._lerpProperties(this, a, b, t, lerpFunction);
    }
    private readonly _dart_resolve: (
        states: ISet<MaterialState>
    ) => T | undefined = undefined as any;
    public resolve(states: ISet<MaterialState>): T | undefined {
        return this._dart_resolve(states);
    }
}
