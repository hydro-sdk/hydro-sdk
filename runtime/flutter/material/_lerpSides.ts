import { ISet } from "../../dart/core/set";
import { IBorderSide } from "../painting/borderSide";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        _lerpSides: (
            this: void,
            _lerpSides: I_LerpSides,
            a: IMaterialStateProperty<IBorderSide | undefined> | undefined,
            b: IMaterialStateProperty<IBorderSide | undefined> | undefined,
            t: number
        ) => I_LerpSides;
    };
};
export interface I_LerpSides {
    a: IMaterialStateProperty<IBorderSide | undefined> | undefined;
    b: IMaterialStateProperty<IBorderSide | undefined> | undefined;
    t: number;
    resolve: (states: ISet<MaterialState>) => IBorderSide | undefined;
}
export class _LerpSides implements IMaterialStateProperty<?IBorderSide> {
    public readonly a:
        | IMaterialStateProperty<IBorderSide | undefined>
        | undefined = undefined as any;
    public readonly b:
        | IMaterialStateProperty<IBorderSide | undefined>
        | undefined = undefined as any;
    public readonly t: number = undefined as any;
    public constructor(
        a: IMaterialStateProperty<IBorderSide | undefined> | undefined,
        b: IMaterialStateProperty<IBorderSide | undefined> | undefined,
        t: number
    ) {
        flutter.material._lerpSides(this, a, b, t);
    }
    private readonly _dart_resolve: (
        states: ISet<MaterialState>
    ) => IBorderSide | undefined = undefined as any;
    public resolve(states: ISet<MaterialState>): IBorderSide | undefined {
        return this._dart_resolve(states);
    }
}
