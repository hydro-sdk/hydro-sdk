import { ISet } from "../../dart/core/set";
import { IColor } from "../../dart/ui/color";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        _textButtonDefaultForeground: (
            this: void,
            _textButtonDefaultForeground: I_TextButtonDefaultForeground,
            primary?: IColor | undefined,
            onSurface?: IColor | undefined
        ) => I_TextButtonDefaultForeground;
    };
};
export interface I_TextButtonDefaultForeground {
    primary: IColor | undefined;
    onSurface: IColor | undefined;
    resolve: (states: ISet<MaterialState>) => IColor | undefined;
    toString: () => string;
    getHashCode: () => number;
}
export class _TextButtonDefaultForeground
    implements IMaterialStateProperty<?IColor>
{
    public readonly primary: IColor | undefined = undefined as any;
    public readonly onSurface: IColor | undefined = undefined as any;
    public constructor(
        primary?: IColor | undefined,
        onSurface?: IColor | undefined
    ) {
        flutter.material._textButtonDefaultForeground(this, primary, onSurface);
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
