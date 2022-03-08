import { ISet } from "../../dart/core/set";
import { IOutlinedBorder } from "../painting/outlinedBorder";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        _lerpShapes: (
            this: void,
            _lerpShapes: I_LerpShapes,
            a: IMaterialStateProperty<IOutlinedBorder | undefined> | undefined,
            b: IMaterialStateProperty<IOutlinedBorder | undefined> | undefined,
            t: number
        ) => I_LerpShapes;
    };
};
export interface I_LerpShapes {
    a: IMaterialStateProperty<IOutlinedBorder | undefined> | undefined;
    b: IMaterialStateProperty<IOutlinedBorder | undefined> | undefined;
    t: number;
    resolve: (states: ISet<MaterialState>) => IOutlinedBorder | undefined;
}
export class _LerpShapes implements IMaterialStateProperty<?IOutlinedBorder> {
    public readonly a:
        | IMaterialStateProperty<IOutlinedBorder | undefined>
        | undefined = undefined as any;
    public readonly b:
        | IMaterialStateProperty<IOutlinedBorder | undefined>
        | undefined = undefined as any;
    public readonly t: number = undefined as any;
    public constructor(
        a: IMaterialStateProperty<IOutlinedBorder | undefined> | undefined,
        b: IMaterialStateProperty<IOutlinedBorder | undefined> | undefined,
        t: number
    ) {
        flutter.material._lerpShapes(this, a, b, t);
    }
    private readonly _dart_resolve: (
        states: ISet<MaterialState>
    ) => IOutlinedBorder | undefined = undefined as any;
    public resolve(states: ISet<MaterialState>): IOutlinedBorder | undefined {
        return this._dart_resolve(states);
    }
}
