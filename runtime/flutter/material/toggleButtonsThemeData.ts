import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IBorderRadius } from "../painting/borderRadius";
import { ITextStyle } from "../painting/textStyle";
import { IBoxConstraints } from "../rendering/boxConstraints";
declare const flutter: {
    material: {
        toggleButtonsThemeData: (
            this: void,
            toggleButtonsThemeData: IToggleButtonsThemeData,
            props?: {
                borderColor?: IColor | undefined;
                borderRadius?: IBorderRadius | undefined;
                borderWidth?: number | undefined;
                color?: IColor | undefined;
                constraints?: IBoxConstraints | undefined;
                disabledBorderColor?: IColor | undefined;
                disabledColor?: IColor | undefined;
                fillColor?: IColor | undefined;
                focusColor?: IColor | undefined;
                highlightColor?: IColor | undefined;
                hoverColor?: IColor | undefined;
                selectedBorderColor?: IColor | undefined;
                selectedColor?: IColor | undefined;
                splashColor?: IColor | undefined;
                textStyle?: ITextStyle | undefined;
            }
        ) => IToggleButtonsThemeData;
        toggleButtonsThemeDataLerp: (
            a: IToggleButtonsThemeData | undefined,
            b: IToggleButtonsThemeData | undefined,
            t: number
        ) => IToggleButtonsThemeData | undefined;
    };
};
export interface IToggleButtonsThemeData {
    textStyle: ITextStyle | undefined;
    constraints: IBoxConstraints | undefined;
    color: IColor | undefined;
    selectedColor: IColor | undefined;
    disabledColor: IColor | undefined;
    fillColor: IColor | undefined;
    focusColor: IColor | undefined;
    highlightColor: IColor | undefined;
    splashColor: IColor | undefined;
    hoverColor: IColor | undefined;
    borderColor: IColor | undefined;
    selectedBorderColor: IColor | undefined;
    disabledBorderColor: IColor | undefined;
    borderWidth: number | undefined;
    borderRadius: IBorderRadius | undefined;
    copyWith: (props?: {
        borderColor?: IColor | undefined;
        borderRadius?: IBorderRadius | undefined;
        borderWidth?: number | undefined;
        color?: IColor | undefined;
        constraints?: IBoxConstraints | undefined;
        disabledBorderColor?: IColor | undefined;
        disabledColor?: IColor | undefined;
        fillColor?: IColor | undefined;
        focusColor?: IColor | undefined;
        highlightColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        selectedBorderColor?: IColor | undefined;
        selectedColor?: IColor | undefined;
        splashColor?: IColor | undefined;
        textStyle?: ITextStyle | undefined;
    }) => IToggleButtonsThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class ToggleButtonsThemeData implements IDiagnosticable {
    public readonly textStyle: ITextStyle | undefined = undefined as any;
    public readonly constraints: IBoxConstraints | undefined = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly selectedColor: IColor | undefined = undefined as any;
    public readonly disabledColor: IColor | undefined = undefined as any;
    public readonly fillColor: IColor | undefined = undefined as any;
    public readonly focusColor: IColor | undefined = undefined as any;
    public readonly highlightColor: IColor | undefined = undefined as any;
    public readonly splashColor: IColor | undefined = undefined as any;
    public readonly hoverColor: IColor | undefined = undefined as any;
    public readonly borderColor: IColor | undefined = undefined as any;
    public readonly selectedBorderColor: IColor | undefined = undefined as any;
    public readonly disabledBorderColor: IColor | undefined = undefined as any;
    public readonly borderWidth: number | undefined = undefined as any;
    public readonly borderRadius: IBorderRadius | undefined = undefined as any;
    public constructor(props?: {
        borderColor?: IColor | undefined;
        borderRadius?: IBorderRadius | undefined;
        borderWidth?: number | undefined;
        color?: IColor | undefined;
        constraints?: IBoxConstraints | undefined;
        disabledBorderColor?: IColor | undefined;
        disabledColor?: IColor | undefined;
        fillColor?: IColor | undefined;
        focusColor?: IColor | undefined;
        highlightColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        selectedBorderColor?: IColor | undefined;
        selectedColor?: IColor | undefined;
        splashColor?: IColor | undefined;
        textStyle?: ITextStyle | undefined;
    }) {
        flutter.material.toggleButtonsThemeData(this, props);
    }
    public static lerp(
        a: IToggleButtonsThemeData | undefined,
        b: IToggleButtonsThemeData | undefined,
        t: number
    ): IToggleButtonsThemeData | undefined {
        return flutter.material.toggleButtonsThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        borderColor?: IColor | undefined;
        borderRadius?: IBorderRadius | undefined;
        borderWidth?: number | undefined;
        color?: IColor | undefined;
        constraints?: IBoxConstraints | undefined;
        disabledBorderColor?: IColor | undefined;
        disabledColor?: IColor | undefined;
        fillColor?: IColor | undefined;
        focusColor?: IColor | undefined;
        highlightColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        selectedBorderColor?: IColor | undefined;
        selectedColor?: IColor | undefined;
        splashColor?: IColor | undefined;
        textStyle?: ITextStyle | undefined;
    }) => IToggleButtonsThemeData = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    public copyWith(props?: {
        borderColor?: IColor | undefined;
        borderRadius?: IBorderRadius | undefined;
        borderWidth?: number | undefined;
        color?: IColor | undefined;
        constraints?: IBoxConstraints | undefined;
        disabledBorderColor?: IColor | undefined;
        disabledColor?: IColor | undefined;
        fillColor?: IColor | undefined;
        focusColor?: IColor | undefined;
        highlightColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        selectedBorderColor?: IColor | undefined;
        selectedColor?: IColor | undefined;
        splashColor?: IColor | undefined;
        textStyle?: ITextStyle | undefined;
    }): IToggleButtonsThemeData {
        return this._dart_copyWith(props);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
