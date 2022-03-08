import { ISet } from "../../dart/core/set";
import { IColor } from "../../dart/ui/color";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        _textButtonDefaultOverlay: (
            this: void,
            _textButtonDefaultOverlay: I_TextButtonDefaultOverlay,
            primary: IColor
        ) => I_TextButtonDefaultOverlay;
    };
};
export interface I_TextButtonDefaultOverlay {
    primary: IColor;
    resolve: (states: ISet<MaterialState>) => IColor | undefined;
    toString: () => string;
    getHashCode: () => number;
}
export class _TextButtonDefaultOverlay
    implements IMaterialStateProperty<?IColor>
{
    public readonly primary: IColor = undefined as any;
    public constructor(primary: IColor) {
        flutter.material._textButtonDefaultOverlay(this, primary);
    }
    private readonly _dart_resolve: (
        states: ISet<MaterialState>
    ) => IColor | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public resolve(states: ISet<MaterialState>): IColor | undefined {
        return this._dart_resolve(states);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
