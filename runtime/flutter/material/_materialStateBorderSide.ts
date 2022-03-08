import { ISet } from "../../dart/core/set";
import { IColor } from "../../dart/ui/color";
import { IPaint } from "../../dart/ui/paint";
import { IBorderSide } from "../painting/borderSide";
import { BorderStyle } from "../painting/borderStyle";
import { MaterialState } from "./materialState";
import { IMaterialStateBorderSide } from "./materialStateBorderSide";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        _materialStateBorderSide: (
            this: void,
            _materialStateBorderSide: I_MaterialStateBorderSide,
            _resolve: (states: ISet<MaterialState>) => IBorderSide | undefined
        ) => I_MaterialStateBorderSide;
    };
};
export interface I_MaterialStateBorderSide {
    color: IColor;
    width: number;
    style: BorderStyle;
    resolve: (states: ISet<MaterialState>) => IBorderSide | undefined;
    copyWith: (props?: {
        color?: IColor | undefined;
        style?: BorderStyle | undefined;
        width?: number | undefined;
    }) => IBorderSide;
    scale: (t: number) => IBorderSide;
    toPaint: () => IPaint;
    toString: () => string;
    getHashCode: () => number;
}
export class _MaterialStateBorderSide
    implements IMaterialStateBorderSide, IMaterialStateProperty<?IBorderSide>
{
    public readonly color: IColor = undefined as any;
    public readonly width: number = undefined as any;
    public readonly style: BorderStyle = undefined as any;
    public constructor(
        _resolve: (states: ISet<MaterialState>) => IBorderSide | undefined
    ) {
        flutter.material._materialStateBorderSide(this, _resolve);
    }
    private readonly _dart_resolve: (
        states: ISet<MaterialState>
    ) => IBorderSide | undefined = undefined as any;
    private readonly _dart_copyWith: (props?: {
        color?: IColor | undefined;
        style?: BorderStyle | undefined;
        width?: number | undefined;
    }) => IBorderSide = undefined as any;
    private readonly _dart_scale: (t: number) => IBorderSide = undefined as any;
    private readonly _dart_toPaint: () => IPaint = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public resolve(states: ISet<MaterialState>): IBorderSide | undefined {
        return this._dart_resolve(states);
    }
    public copyWith(props?: {
        color?: IColor | undefined;
        style?: BorderStyle | undefined;
        width?: number | undefined;
    }): IBorderSide {
        return this._dart_copyWith(props);
    }
    public scale(t: number): IBorderSide {
        return this._dart_scale(t);
    }
    public toPaint(): IPaint {
        return this._dart_toPaint();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
