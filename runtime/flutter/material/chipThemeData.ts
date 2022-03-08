import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IBorderSide } from "../painting/borderSide";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IOutlinedBorder } from "../painting/outlinedBorder";
import { ITextStyle } from "../painting/textStyle";
declare const flutter: {
    material: {
        chipThemeData: (
            this: void,
            chipThemeData: IChipThemeData,
            props: {
                checkmarkColor?: IColor | undefined;
                deleteIconColor?: IColor | undefined;
                elevation?: number | undefined;
                labelPadding?: IEdgeInsetsGeometry | undefined;
                pressElevation?: number | undefined;
                selectedShadowColor?: IColor | undefined;
                shadowColor?: IColor | undefined;
                shape?: IOutlinedBorder | undefined;
                showCheckmark?: boolean | undefined;
                side?: IBorderSide | undefined;
                backgroundColor: IColor;
                brightness: Brightness;
                disabledColor: IColor;
                labelStyle: ITextStyle;
                padding: IEdgeInsetsGeometry;
                secondaryLabelStyle: ITextStyle;
                secondarySelectedColor: IColor;
                selectedColor: IColor;
            }
        ) => IChipThemeData;
        chipThemeDataFromDefaults: (props: {
            brightness?: Brightness | undefined;
            primaryColor?: IColor | undefined;
            labelStyle: ITextStyle;
            secondaryColor: IColor;
        }) => IChipThemeData;
        chipThemeDataLerp: (
            a: IChipThemeData | undefined,
            b: IChipThemeData | undefined,
            t: number
        ) => IChipThemeData | undefined;
    };
};
export interface IChipThemeData {
    backgroundColor: IColor;
    deleteIconColor: IColor | undefined;
    disabledColor: IColor;
    selectedColor: IColor;
    secondarySelectedColor: IColor;
    shadowColor: IColor | undefined;
    selectedShadowColor: IColor | undefined;
    showCheckmark: boolean | undefined;
    checkmarkColor: IColor | undefined;
    labelPadding: IEdgeInsetsGeometry | undefined;
    padding: IEdgeInsetsGeometry;
    side: IBorderSide | undefined;
    shape: IOutlinedBorder | undefined;
    labelStyle: ITextStyle;
    secondaryLabelStyle: ITextStyle;
    brightness: Brightness;
    elevation: number | undefined;
    pressElevation: number | undefined;
    copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        brightness?: Brightness | undefined;
        checkmarkColor?: IColor | undefined;
        deleteIconColor?: IColor | undefined;
        disabledColor?: IColor | undefined;
        elevation?: number | undefined;
        labelPadding?: IEdgeInsetsGeometry | undefined;
        labelStyle?: ITextStyle | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        pressElevation?: number | undefined;
        secondaryLabelStyle?: ITextStyle | undefined;
        secondarySelectedColor?: IColor | undefined;
        selectedColor?: IColor | undefined;
        selectedShadowColor?: IColor | undefined;
        shadowColor?: IColor | undefined;
        shape?: IOutlinedBorder | undefined;
        side?: IBorderSide | undefined;
    }) => IChipThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class ChipThemeData implements IDiagnosticable {
    public readonly backgroundColor: IColor = undefined as any;
    public readonly deleteIconColor: IColor | undefined = undefined as any;
    public readonly disabledColor: IColor = undefined as any;
    public readonly selectedColor: IColor = undefined as any;
    public readonly secondarySelectedColor: IColor = undefined as any;
    public readonly shadowColor: IColor | undefined = undefined as any;
    public readonly selectedShadowColor: IColor | undefined = undefined as any;
    public readonly showCheckmark: boolean | undefined = undefined as any;
    public readonly checkmarkColor: IColor | undefined = undefined as any;
    public readonly labelPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly padding: IEdgeInsetsGeometry = undefined as any;
    public readonly side: IBorderSide | undefined = undefined as any;
    public readonly shape: IOutlinedBorder | undefined = undefined as any;
    public readonly labelStyle: ITextStyle = undefined as any;
    public readonly secondaryLabelStyle: ITextStyle = undefined as any;
    public readonly brightness: Brightness = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly pressElevation: number | undefined = undefined as any;
    public constructor(props: {
        checkmarkColor?: IColor | undefined;
        deleteIconColor?: IColor | undefined;
        elevation?: number | undefined;
        labelPadding?: IEdgeInsetsGeometry | undefined;
        pressElevation?: number | undefined;
        selectedShadowColor?: IColor | undefined;
        shadowColor?: IColor | undefined;
        shape?: IOutlinedBorder | undefined;
        showCheckmark?: boolean | undefined;
        side?: IBorderSide | undefined;
        backgroundColor: IColor;
        brightness: Brightness;
        disabledColor: IColor;
        labelStyle: ITextStyle;
        padding: IEdgeInsetsGeometry;
        secondaryLabelStyle: ITextStyle;
        secondarySelectedColor: IColor;
        selectedColor: IColor;
    }) {
        flutter.material.chipThemeData(this, props);
    }
    public static fromDefaults(props: {
        brightness?: Brightness | undefined;
        primaryColor?: IColor | undefined;
        labelStyle: ITextStyle;
        secondaryColor: IColor;
    }): IChipThemeData {
        return flutter.material.chipThemeDataFromDefaults(props);
    }
    public static lerp(
        a: IChipThemeData | undefined,
        b: IChipThemeData | undefined,
        t: number
    ): IChipThemeData | undefined {
        return flutter.material.chipThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        brightness?: Brightness | undefined;
        checkmarkColor?: IColor | undefined;
        deleteIconColor?: IColor | undefined;
        disabledColor?: IColor | undefined;
        elevation?: number | undefined;
        labelPadding?: IEdgeInsetsGeometry | undefined;
        labelStyle?: ITextStyle | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        pressElevation?: number | undefined;
        secondaryLabelStyle?: ITextStyle | undefined;
        secondarySelectedColor?: IColor | undefined;
        selectedColor?: IColor | undefined;
        selectedShadowColor?: IColor | undefined;
        shadowColor?: IColor | undefined;
        shape?: IOutlinedBorder | undefined;
        side?: IBorderSide | undefined;
    }) => IChipThemeData = undefined as any;
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
        backgroundColor?: IColor | undefined;
        brightness?: Brightness | undefined;
        checkmarkColor?: IColor | undefined;
        deleteIconColor?: IColor | undefined;
        disabledColor?: IColor | undefined;
        elevation?: number | undefined;
        labelPadding?: IEdgeInsetsGeometry | undefined;
        labelStyle?: ITextStyle | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        pressElevation?: number | undefined;
        secondaryLabelStyle?: ITextStyle | undefined;
        secondarySelectedColor?: IColor | undefined;
        selectedColor?: IColor | undefined;
        selectedShadowColor?: IColor | undefined;
        shadowColor?: IColor | undefined;
        shape?: IOutlinedBorder | undefined;
        side?: IBorderSide | undefined;
    }): IChipThemeData {
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
