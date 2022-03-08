import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { ITextStyle } from "../painting/textStyle";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { FloatingLabelBehavior } from "./floatingLabelBehavior";
import { IInputBorder } from "./inputBorder";
declare const flutter: {
    material: {
        inputDecorationTheme: (
            this: void,
            inputDecorationTheme: IInputDecorationTheme,
            props: {
                alignLabelWithHint: boolean;
                border?: IInputBorder | undefined;
                constraints?: IBoxConstraints | undefined;
                contentPadding?: IEdgeInsetsGeometry | undefined;
                counterStyle?: ITextStyle | undefined;
                disabledBorder?: IInputBorder | undefined;
                enabledBorder?: IInputBorder | undefined;
                errorBorder?: IInputBorder | undefined;
                errorMaxLines?: number | undefined;
                errorStyle?: ITextStyle | undefined;
                fillColor?: IColor | undefined;
                filled: boolean;
                floatingLabelBehavior: FloatingLabelBehavior;
                floatingLabelStyle?: ITextStyle | undefined;
                focusColor?: IColor | undefined;
                focusedBorder?: IInputBorder | undefined;
                focusedErrorBorder?: IInputBorder | undefined;
                helperMaxLines?: number | undefined;
                helperStyle?: ITextStyle | undefined;
                hintStyle?: ITextStyle | undefined;
                hoverColor?: IColor | undefined;
                iconColor?: IColor | undefined;
                isCollapsed: boolean;
                isDense: boolean;
                labelStyle?: ITextStyle | undefined;
                prefixIconColor?: IColor | undefined;
                prefixStyle?: ITextStyle | undefined;
                suffixIconColor?: IColor | undefined;
                suffixStyle?: ITextStyle | undefined;
            }
        ) => IInputDecorationTheme;
    };
};
export interface IInputDecorationTheme {
    labelStyle: ITextStyle | undefined;
    floatingLabelStyle: ITextStyle | undefined;
    helperStyle: ITextStyle | undefined;
    helperMaxLines: number | undefined;
    hintStyle: ITextStyle | undefined;
    errorStyle: ITextStyle | undefined;
    errorMaxLines: number | undefined;
    floatingLabelBehavior: FloatingLabelBehavior;
    isDense: boolean;
    contentPadding: IEdgeInsetsGeometry | undefined;
    isCollapsed: boolean;
    iconColor: IColor | undefined;
    prefixStyle: ITextStyle | undefined;
    prefixIconColor: IColor | undefined;
    suffixStyle: ITextStyle | undefined;
    suffixIconColor: IColor | undefined;
    counterStyle: ITextStyle | undefined;
    filled: boolean;
    fillColor: IColor | undefined;
    focusColor: IColor | undefined;
    hoverColor: IColor | undefined;
    errorBorder: IInputBorder | undefined;
    focusedBorder: IInputBorder | undefined;
    focusedErrorBorder: IInputBorder | undefined;
    disabledBorder: IInputBorder | undefined;
    enabledBorder: IInputBorder | undefined;
    border: IInputBorder | undefined;
    alignLabelWithHint: boolean;
    constraints: IBoxConstraints | undefined;
    copyWith: (props?: {
        alignLabelWithHint?: boolean | undefined;
        border?: IInputBorder | undefined;
        constraints?: IBoxConstraints | undefined;
        contentPadding?: IEdgeInsetsGeometry | undefined;
        counterStyle?: ITextStyle | undefined;
        disabledBorder?: IInputBorder | undefined;
        enabledBorder?: IInputBorder | undefined;
        errorBorder?: IInputBorder | undefined;
        errorMaxLines?: number | undefined;
        errorStyle?: ITextStyle | undefined;
        fillColor?: IColor | undefined;
        filled?: boolean | undefined;
        floatingLabelBehavior?: FloatingLabelBehavior | undefined;
        floatingLabelStyle?: ITextStyle | undefined;
        focusColor?: IColor | undefined;
        focusedBorder?: IInputBorder | undefined;
        focusedErrorBorder?: IInputBorder | undefined;
        helperMaxLines?: number | undefined;
        helperStyle?: ITextStyle | undefined;
        hintStyle?: ITextStyle | undefined;
        hoverColor?: IColor | undefined;
        iconColor?: IColor | undefined;
        isCollapsed?: boolean | undefined;
        isDense?: boolean | undefined;
        labelStyle?: ITextStyle | undefined;
        prefixIconColor?: IColor | undefined;
        prefixStyle?: ITextStyle | undefined;
        suffixIconColor?: IColor | undefined;
        suffixStyle?: ITextStyle | undefined;
    }) => IInputDecorationTheme;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class InputDecorationTheme implements IDiagnosticable {
    public readonly labelStyle: ITextStyle | undefined = undefined as any;
    public readonly floatingLabelStyle: ITextStyle | undefined =
        undefined as any;
    public readonly helperStyle: ITextStyle | undefined = undefined as any;
    public readonly helperMaxLines: number | undefined = undefined as any;
    public readonly hintStyle: ITextStyle | undefined = undefined as any;
    public readonly errorStyle: ITextStyle | undefined = undefined as any;
    public readonly errorMaxLines: number | undefined = undefined as any;
    public readonly floatingLabelBehavior: FloatingLabelBehavior =
        undefined as any;
    public readonly isDense: boolean = undefined as any;
    public readonly contentPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly isCollapsed: boolean = undefined as any;
    public readonly iconColor: IColor | undefined = undefined as any;
    public readonly prefixStyle: ITextStyle | undefined = undefined as any;
    public readonly prefixIconColor: IColor | undefined = undefined as any;
    public readonly suffixStyle: ITextStyle | undefined = undefined as any;
    public readonly suffixIconColor: IColor | undefined = undefined as any;
    public readonly counterStyle: ITextStyle | undefined = undefined as any;
    public readonly filled: boolean = undefined as any;
    public readonly fillColor: IColor | undefined = undefined as any;
    public readonly focusColor: IColor | undefined = undefined as any;
    public readonly hoverColor: IColor | undefined = undefined as any;
    public readonly errorBorder: IInputBorder | undefined = undefined as any;
    public readonly focusedBorder: IInputBorder | undefined = undefined as any;
    public readonly focusedErrorBorder: IInputBorder | undefined =
        undefined as any;
    public readonly disabledBorder: IInputBorder | undefined = undefined as any;
    public readonly enabledBorder: IInputBorder | undefined = undefined as any;
    public readonly border: IInputBorder | undefined = undefined as any;
    public readonly alignLabelWithHint: boolean = undefined as any;
    public readonly constraints: IBoxConstraints | undefined = undefined as any;
    public constructor(props: {
        alignLabelWithHint?: boolean;
        border?: IInputBorder | undefined;
        constraints?: IBoxConstraints | undefined;
        contentPadding?: IEdgeInsetsGeometry | undefined;
        counterStyle?: ITextStyle | undefined;
        disabledBorder?: IInputBorder | undefined;
        enabledBorder?: IInputBorder | undefined;
        errorBorder?: IInputBorder | undefined;
        errorMaxLines?: number | undefined;
        errorStyle?: ITextStyle | undefined;
        fillColor?: IColor | undefined;
        filled?: boolean;
        floatingLabelBehavior?: FloatingLabelBehavior;
        floatingLabelStyle?: ITextStyle | undefined;
        focusColor?: IColor | undefined;
        focusedBorder?: IInputBorder | undefined;
        focusedErrorBorder?: IInputBorder | undefined;
        helperMaxLines?: number | undefined;
        helperStyle?: ITextStyle | undefined;
        hintStyle?: ITextStyle | undefined;
        hoverColor?: IColor | undefined;
        iconColor?: IColor | undefined;
        isCollapsed?: boolean;
        isDense?: boolean;
        labelStyle?: ITextStyle | undefined;
        prefixIconColor?: IColor | undefined;
        prefixStyle?: ITextStyle | undefined;
        suffixIconColor?: IColor | undefined;
        suffixStyle?: ITextStyle | undefined;
    }) {
        flutter.material.inputDecorationTheme(this, {
            ...inputDecorationThemeDefaultProps,
            ...props,
        });
    }
    private readonly _dart_copyWith: (props?: {
        alignLabelWithHint?: boolean | undefined;
        border?: IInputBorder | undefined;
        constraints?: IBoxConstraints | undefined;
        contentPadding?: IEdgeInsetsGeometry | undefined;
        counterStyle?: ITextStyle | undefined;
        disabledBorder?: IInputBorder | undefined;
        enabledBorder?: IInputBorder | undefined;
        errorBorder?: IInputBorder | undefined;
        errorMaxLines?: number | undefined;
        errorStyle?: ITextStyle | undefined;
        fillColor?: IColor | undefined;
        filled?: boolean | undefined;
        floatingLabelBehavior?: FloatingLabelBehavior | undefined;
        floatingLabelStyle?: ITextStyle | undefined;
        focusColor?: IColor | undefined;
        focusedBorder?: IInputBorder | undefined;
        focusedErrorBorder?: IInputBorder | undefined;
        helperMaxLines?: number | undefined;
        helperStyle?: ITextStyle | undefined;
        hintStyle?: ITextStyle | undefined;
        hoverColor?: IColor | undefined;
        iconColor?: IColor | undefined;
        isCollapsed?: boolean | undefined;
        isDense?: boolean | undefined;
        labelStyle?: ITextStyle | undefined;
        prefixIconColor?: IColor | undefined;
        prefixStyle?: ITextStyle | undefined;
        suffixIconColor?: IColor | undefined;
        suffixStyle?: ITextStyle | undefined;
    }) => IInputDecorationTheme = undefined as any;
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
        alignLabelWithHint?: boolean | undefined;
        border?: IInputBorder | undefined;
        constraints?: IBoxConstraints | undefined;
        contentPadding?: IEdgeInsetsGeometry | undefined;
        counterStyle?: ITextStyle | undefined;
        disabledBorder?: IInputBorder | undefined;
        enabledBorder?: IInputBorder | undefined;
        errorBorder?: IInputBorder | undefined;
        errorMaxLines?: number | undefined;
        errorStyle?: ITextStyle | undefined;
        fillColor?: IColor | undefined;
        filled?: boolean | undefined;
        floatingLabelBehavior?: FloatingLabelBehavior | undefined;
        floatingLabelStyle?: ITextStyle | undefined;
        focusColor?: IColor | undefined;
        focusedBorder?: IInputBorder | undefined;
        focusedErrorBorder?: IInputBorder | undefined;
        helperMaxLines?: number | undefined;
        helperStyle?: ITextStyle | undefined;
        hintStyle?: ITextStyle | undefined;
        hoverColor?: IColor | undefined;
        iconColor?: IColor | undefined;
        isCollapsed?: boolean | undefined;
        isDense?: boolean | undefined;
        labelStyle?: ITextStyle | undefined;
        prefixIconColor?: IColor | undefined;
        prefixStyle?: ITextStyle | undefined;
        suffixIconColor?: IColor | undefined;
        suffixStyle?: ITextStyle | undefined;
    }): IInputDecorationTheme {
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
const inputDecorationThemeDefaultProps = {
    alignLabelWithHint: false,
    filled: false,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    isCollapsed: false,
    isDense: false,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
