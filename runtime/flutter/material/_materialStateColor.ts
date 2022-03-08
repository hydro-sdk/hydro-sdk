import { ISet } from "../../dart/core/set";
import { IColor } from "../../dart/ui/color";
import { MaterialState } from "./materialState";
import { IMaterialStateColor } from "./materialStateColor";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        _materialStateColor: (
            this: void,
            _materialStateColor: I_MaterialStateColor,
            _resolve: (states: ISet<MaterialState>) => IColor
        ) => I_MaterialStateColor;
    };
};
export interface I_MaterialStateColor {
    value: number;
    resolve: (states: ISet<MaterialState>) => IColor;
    withAlpha: (a: number) => IColor;
    withOpacity: (opacity: number) => IColor;
    withRed: (r: number) => IColor;
    withGreen: (g: number) => IColor;
    withBlue: (b: number) => IColor;
    computeLuminance: () => number;
    toString: () => string;
    getAlpha: () => number;
    getOpacity: () => number;
    getRed: () => number;
    getGreen: () => number;
    getBlue: () => number;
    getHashCode: () => number;
}
export class _MaterialStateColor
    implements IMaterialStateColor, IMaterialStateProperty<IColor>
{
    public static _defaultStates = Unknown;
    public readonly value: number = undefined as any;
    public constructor(_resolve: (states: ISet<MaterialState>) => IColor) {
        flutter.material._materialStateColor(this, _resolve);
    }
    private readonly _dart_resolve: (states: ISet<MaterialState>) => IColor =
        undefined as any;
    private readonly _dart_withAlpha: (a: number) => IColor = undefined as any;
    private readonly _dart_withOpacity: (opacity: number) => IColor =
        undefined as any;
    private readonly _dart_withRed: (r: number) => IColor = undefined as any;
    private readonly _dart_withGreen: (g: number) => IColor = undefined as any;
    private readonly _dart_withBlue: (b: number) => IColor = undefined as any;
    private readonly _dart_computeLuminance: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getAlpha: () => number = undefined as any;
    private readonly _dart_getOpacity: () => number = undefined as any;
    private readonly _dart_getRed: () => number = undefined as any;
    private readonly _dart_getGreen: () => number = undefined as any;
    private readonly _dart_getBlue: () => number = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public resolve(states: ISet<MaterialState>): IColor {
        return this._dart_resolve(states);
    }
    public withAlpha(a: number): IColor {
        return this._dart_withAlpha(a);
    }
    public withOpacity(opacity: number): IColor {
        return this._dart_withOpacity(opacity);
    }
    public withRed(r: number): IColor {
        return this._dart_withRed(r);
    }
    public withGreen(g: number): IColor {
        return this._dart_withGreen(g);
    }
    public withBlue(b: number): IColor {
        return this._dart_withBlue(b);
    }
    public computeLuminance(): number {
        return this._dart_computeLuminance();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getAlpha(): number {
        return this._dart_getAlpha();
    }
    public getOpacity(): number {
        return this._dart_getOpacity();
    }
    public getRed(): number {
        return this._dart_getRed();
    }
    public getGreen(): number {
        return this._dart_getGreen();
    }
    public getBlue(): number {
        return this._dart_getBlue();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
