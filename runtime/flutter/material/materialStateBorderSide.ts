import { ISet } from "../../dart/core/set";
import { IColor } from "../../dart/ui/color";
import { IPaint } from "../../dart/ui/paint";
import { IBorderSide } from "../painting/borderSide";
import { BorderStyle } from "../painting/borderStyle";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        materialStateBorderSide: (
            this: void,
            materialStateBorderSide: IMaterialStateBorderSide
        ) => IMaterialStateBorderSide;
        materialStateBorderSideResolveWith: (
            callback: (states: ISet<MaterialState>) => IBorderSide | undefined
        ) => IMaterialStateBorderSide;
    };
};
export interface IMaterialStateBorderSide {
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
export class MaterialStateBorderSide
    implements IBorderSide, IMaterialStateProperty<?IBorderSide>
{
    public readonly color: IColor = undefined as any;
    public readonly width: number = undefined as any;
    public readonly style: BorderStyle = undefined as any;
    public constructor() {
        flutter.material.materialStateBorderSide(this);
    }
    public static resolveWith(
        callback: (states: ISet<MaterialState>) => IBorderSide | undefined
    ): IMaterialStateBorderSide {
        return flutter.material.materialStateBorderSideResolveWith(callback);
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
