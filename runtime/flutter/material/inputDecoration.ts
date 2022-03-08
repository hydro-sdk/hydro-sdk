import { IColor } from "../../dart/ui/color";
import { TextDirection } from "../../dart/ui/textDirection";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { ITextStyle } from "../painting/textStyle";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { IWidget } from "../widgets/widget";
import { FloatingLabelBehavior } from "./floatingLabelBehavior";
import { IInputBorder } from "./inputBorder";
import { IInputDecorationTheme } from "./inputDecorationTheme";
declare const flutter: {
    material: {
        inputDecoration: (
            this: void,
            inputDecoration: IInputDecoration,
            props: {
                alignLabelWithHint?: boolean | undefined;
                border?: IInputBorder | undefined;
                constraints?: IBoxConstraints | undefined;
                contentPadding?: IEdgeInsetsGeometry | undefined;
                counter?: IWidget | undefined;
                counterStyle?: ITextStyle | undefined;
                counterText?: string | undefined;
                disabledBorder?: IInputBorder | undefined;
                enabled: boolean;
                enabledBorder?: IInputBorder | undefined;
                errorBorder?: IInputBorder | undefined;
                errorMaxLines?: number | undefined;
                errorStyle?: ITextStyle | undefined;
                errorText?: string | undefined;
                fillColor?: IColor | undefined;
                filled?: boolean | undefined;
                floatingLabelBehavior?: FloatingLabelBehavior | undefined;
                floatingLabelStyle?: ITextStyle | undefined;
                focusColor?: IColor | undefined;
                focusedBorder?: IInputBorder | undefined;
                focusedErrorBorder?: IInputBorder | undefined;
                helperMaxLines?: number | undefined;
                helperStyle?: ITextStyle | undefined;
                helperText?: string | undefined;
                hintMaxLines?: number | undefined;
                hintStyle?: ITextStyle | undefined;
                hintText?: string | undefined;
                hintTextDirection?: TextDirection | undefined;
                hoverColor?: IColor | undefined;
                icon?: IWidget | undefined;
                iconColor?: IColor | undefined;
                isCollapsed: boolean;
                isDense?: boolean | undefined;
                label?: IWidget | undefined;
                labelStyle?: ITextStyle | undefined;
                labelText?: string | undefined;
                prefix?: IWidget | undefined;
                prefixIcon?: IWidget | undefined;
                prefixIconColor?: IColor | undefined;
                prefixIconConstraints?: IBoxConstraints | undefined;
                prefixStyle?: ITextStyle | undefined;
                prefixText?: string | undefined;
                semanticCounterText?: string | undefined;
                suffix?: IWidget | undefined;
                suffixIcon?: IWidget | undefined;
                suffixIconColor?: IColor | undefined;
                suffixIconConstraints?: IBoxConstraints | undefined;
                suffixStyle?: ITextStyle | undefined;
                suffixText?: string | undefined;
            }
        ) => IInputDecoration;
    };
};
export interface IInputDecoration {
    icon: IWidget | undefined;
    iconColor: IColor | undefined;
    label: IWidget | undefined;
    labelText: string | undefined;
    labelStyle: ITextStyle | undefined;
    floatingLabelStyle: ITextStyle | undefined;
    helperText: string | undefined;
    helperStyle: ITextStyle | undefined;
    helperMaxLines: number | undefined;
    hintText: string | undefined;
    hintStyle: ITextStyle | undefined;
    hintTextDirection: TextDirection | undefined;
    hintMaxLines: number | undefined;
    errorText: string | undefined;
    errorStyle: ITextStyle | undefined;
    errorMaxLines: number | undefined;
    floatingLabelBehavior: FloatingLabelBehavior | undefined;
    isDense: boolean | undefined;
    contentPadding: IEdgeInsetsGeometry | undefined;
    isCollapsed: boolean;
    prefixIcon: IWidget | undefined;
    prefixIconConstraints: IBoxConstraints | undefined;
    prefix: IWidget | undefined;
    prefixText: string | undefined;
    prefixStyle: ITextStyle | undefined;
    prefixIconColor: IColor | undefined;
    suffixIcon: IWidget | undefined;
    suffix: IWidget | undefined;
    suffixText: string | undefined;
    suffixStyle: ITextStyle | undefined;
    suffixIconColor: IColor | undefined;
    suffixIconConstraints: IBoxConstraints | undefined;
    counterText: string | undefined;
    counter: IWidget | undefined;
    counterStyle: ITextStyle | undefined;
    filled: boolean | undefined;
    fillColor: IColor | undefined;
    focusColor: IColor | undefined;
    hoverColor: IColor | undefined;
    errorBorder: IInputBorder | undefined;
    focusedBorder: IInputBorder | undefined;
    focusedErrorBorder: IInputBorder | undefined;
    disabledBorder: IInputBorder | undefined;
    enabledBorder: IInputBorder | undefined;
    border: IInputBorder | undefined;
    enabled: boolean;
    semanticCounterText: string | undefined;
    alignLabelWithHint: boolean | undefined;
    constraints: IBoxConstraints | undefined;
    copyWith: (props?: {
        alignLabelWithHint?: boolean | undefined;
        border?: IInputBorder | undefined;
        constraints?: IBoxConstraints | undefined;
        contentPadding?: IEdgeInsetsGeometry | undefined;
        counter?: IWidget | undefined;
        counterStyle?: ITextStyle | undefined;
        counterText?: string | undefined;
        disabledBorder?: IInputBorder | undefined;
        enabled?: boolean | undefined;
        enabledBorder?: IInputBorder | undefined;
        errorBorder?: IInputBorder | undefined;
        errorMaxLines?: number | undefined;
        errorStyle?: ITextStyle | undefined;
        errorText?: string | undefined;
        fillColor?: IColor | undefined;
        filled?: boolean | undefined;
        floatingLabelBehavior?: FloatingLabelBehavior | undefined;
        floatingLabelStyle?: ITextStyle | undefined;
        focusColor?: IColor | undefined;
        focusedBorder?: IInputBorder | undefined;
        focusedErrorBorder?: IInputBorder | undefined;
        helperMaxLines?: number | undefined;
        helperStyle?: ITextStyle | undefined;
        helperText?: string | undefined;
        hintMaxLines?: number | undefined;
        hintStyle?: ITextStyle | undefined;
        hintText?: string | undefined;
        hintTextDirection?: TextDirection | undefined;
        hoverColor?: IColor | undefined;
        icon?: IWidget | undefined;
        iconColor?: IColor | undefined;
        isCollapsed?: boolean | undefined;
        isDense?: boolean | undefined;
        label?: IWidget | undefined;
        labelStyle?: ITextStyle | undefined;
        labelText?: string | undefined;
        prefix?: IWidget | undefined;
        prefixIcon?: IWidget | undefined;
        prefixIconColor?: IColor | undefined;
        prefixIconConstraints?: IBoxConstraints | undefined;
        prefixStyle?: ITextStyle | undefined;
        prefixText?: string | undefined;
        semanticCounterText?: string | undefined;
        suffix?: IWidget | undefined;
        suffixIcon?: IWidget | undefined;
        suffixIconColor?: IColor | undefined;
        suffixIconConstraints?: IBoxConstraints | undefined;
        suffixStyle?: ITextStyle | undefined;
        suffixText?: string | undefined;
    }) => IInputDecoration;
    applyDefaults: (theme: IInputDecorationTheme) => IInputDecoration;
    getHashCode: () => number;
    toString: () => string;
}
export class InputDecoration {
    public readonly icon: IWidget | undefined = undefined as any;
    public readonly iconColor: IColor | undefined = undefined as any;
    public readonly label: IWidget | undefined = undefined as any;
    public readonly labelText: string | undefined = undefined as any;
    public readonly labelStyle: ITextStyle | undefined = undefined as any;
    public readonly floatingLabelStyle: ITextStyle | undefined =
        undefined as any;
    public readonly helperText: string | undefined = undefined as any;
    public readonly helperStyle: ITextStyle | undefined = undefined as any;
    public readonly helperMaxLines: number | undefined = undefined as any;
    public readonly hintText: string | undefined = undefined as any;
    public readonly hintStyle: ITextStyle | undefined = undefined as any;
    public readonly hintTextDirection: TextDirection | undefined =
        undefined as any;
    public readonly hintMaxLines: number | undefined = undefined as any;
    public readonly errorText: string | undefined = undefined as any;
    public readonly errorStyle: ITextStyle | undefined = undefined as any;
    public readonly errorMaxLines: number | undefined = undefined as any;
    public readonly floatingLabelBehavior: FloatingLabelBehavior | undefined =
        undefined as any;
    public readonly isDense: boolean | undefined = undefined as any;
    public readonly contentPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly isCollapsed: boolean = undefined as any;
    public readonly prefixIcon: IWidget | undefined = undefined as any;
    public readonly prefixIconConstraints: IBoxConstraints | undefined =
        undefined as any;
    public readonly prefix: IWidget | undefined = undefined as any;
    public readonly prefixText: string | undefined = undefined as any;
    public readonly prefixStyle: ITextStyle | undefined = undefined as any;
    public readonly prefixIconColor: IColor | undefined = undefined as any;
    public readonly suffixIcon: IWidget | undefined = undefined as any;
    public readonly suffix: IWidget | undefined = undefined as any;
    public readonly suffixText: string | undefined = undefined as any;
    public readonly suffixStyle: ITextStyle | undefined = undefined as any;
    public readonly suffixIconColor: IColor | undefined = undefined as any;
    public readonly suffixIconConstraints: IBoxConstraints | undefined =
        undefined as any;
    public readonly counterText: string | undefined = undefined as any;
    public readonly counter: IWidget | undefined = undefined as any;
    public readonly counterStyle: ITextStyle | undefined = undefined as any;
    public readonly filled: boolean | undefined = undefined as any;
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
    public readonly enabled: boolean = undefined as any;
    public readonly semanticCounterText: string | undefined = undefined as any;
    public readonly alignLabelWithHint: boolean | undefined = undefined as any;
    public readonly constraints: IBoxConstraints | undefined = undefined as any;
    public constructor(props: {
        alignLabelWithHint?: boolean | undefined;
        border?: IInputBorder | undefined;
        constraints?: IBoxConstraints | undefined;
        contentPadding?: IEdgeInsetsGeometry | undefined;
        counter?: IWidget | undefined;
        counterStyle?: ITextStyle | undefined;
        counterText?: string | undefined;
        disabledBorder?: IInputBorder | undefined;
        enabled?: boolean;
        enabledBorder?: IInputBorder | undefined;
        errorBorder?: IInputBorder | undefined;
        errorMaxLines?: number | undefined;
        errorStyle?: ITextStyle | undefined;
        errorText?: string | undefined;
        fillColor?: IColor | undefined;
        filled?: boolean | undefined;
        floatingLabelBehavior?: FloatingLabelBehavior | undefined;
        floatingLabelStyle?: ITextStyle | undefined;
        focusColor?: IColor | undefined;
        focusedBorder?: IInputBorder | undefined;
        focusedErrorBorder?: IInputBorder | undefined;
        helperMaxLines?: number | undefined;
        helperStyle?: ITextStyle | undefined;
        helperText?: string | undefined;
        hintMaxLines?: number | undefined;
        hintStyle?: ITextStyle | undefined;
        hintText?: string | undefined;
        hintTextDirection?: TextDirection | undefined;
        hoverColor?: IColor | undefined;
        icon?: IWidget | undefined;
        iconColor?: IColor | undefined;
        isCollapsed?: boolean;
        isDense?: boolean | undefined;
        label?: IWidget | undefined;
        labelStyle?: ITextStyle | undefined;
        labelText?: string | undefined;
        prefix?: IWidget | undefined;
        prefixIcon?: IWidget | undefined;
        prefixIconColor?: IColor | undefined;
        prefixIconConstraints?: IBoxConstraints | undefined;
        prefixStyle?: ITextStyle | undefined;
        prefixText?: string | undefined;
        semanticCounterText?: string | undefined;
        suffix?: IWidget | undefined;
        suffixIcon?: IWidget | undefined;
        suffixIconColor?: IColor | undefined;
        suffixIconConstraints?: IBoxConstraints | undefined;
        suffixStyle?: ITextStyle | undefined;
        suffixText?: string | undefined;
    }) {
        flutter.material.inputDecoration(this, {
            ...inputDecorationDefaultProps,
            ...props,
        });
    }
    private readonly _dart_copyWith: (props?: {
        alignLabelWithHint?: boolean | undefined;
        border?: IInputBorder | undefined;
        constraints?: IBoxConstraints | undefined;
        contentPadding?: IEdgeInsetsGeometry | undefined;
        counter?: IWidget | undefined;
        counterStyle?: ITextStyle | undefined;
        counterText?: string | undefined;
        disabledBorder?: IInputBorder | undefined;
        enabled?: boolean | undefined;
        enabledBorder?: IInputBorder | undefined;
        errorBorder?: IInputBorder | undefined;
        errorMaxLines?: number | undefined;
        errorStyle?: ITextStyle | undefined;
        errorText?: string | undefined;
        fillColor?: IColor | undefined;
        filled?: boolean | undefined;
        floatingLabelBehavior?: FloatingLabelBehavior | undefined;
        floatingLabelStyle?: ITextStyle | undefined;
        focusColor?: IColor | undefined;
        focusedBorder?: IInputBorder | undefined;
        focusedErrorBorder?: IInputBorder | undefined;
        helperMaxLines?: number | undefined;
        helperStyle?: ITextStyle | undefined;
        helperText?: string | undefined;
        hintMaxLines?: number | undefined;
        hintStyle?: ITextStyle | undefined;
        hintText?: string | undefined;
        hintTextDirection?: TextDirection | undefined;
        hoverColor?: IColor | undefined;
        icon?: IWidget | undefined;
        iconColor?: IColor | undefined;
        isCollapsed?: boolean | undefined;
        isDense?: boolean | undefined;
        label?: IWidget | undefined;
        labelStyle?: ITextStyle | undefined;
        labelText?: string | undefined;
        prefix?: IWidget | undefined;
        prefixIcon?: IWidget | undefined;
        prefixIconColor?: IColor | undefined;
        prefixIconConstraints?: IBoxConstraints | undefined;
        prefixStyle?: ITextStyle | undefined;
        prefixText?: string | undefined;
        semanticCounterText?: string | undefined;
        suffix?: IWidget | undefined;
        suffixIcon?: IWidget | undefined;
        suffixIconColor?: IColor | undefined;
        suffixIconConstraints?: IBoxConstraints | undefined;
        suffixStyle?: ITextStyle | undefined;
        suffixText?: string | undefined;
    }) => IInputDecoration = undefined as any;
    private readonly _dart_applyDefaults: (
        theme: IInputDecorationTheme
    ) => IInputDecoration = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public copyWith(props?: {
        alignLabelWithHint?: boolean | undefined;
        border?: IInputBorder | undefined;
        constraints?: IBoxConstraints | undefined;
        contentPadding?: IEdgeInsetsGeometry | undefined;
        counter?: IWidget | undefined;
        counterStyle?: ITextStyle | undefined;
        counterText?: string | undefined;
        disabledBorder?: IInputBorder | undefined;
        enabled?: boolean | undefined;
        enabledBorder?: IInputBorder | undefined;
        errorBorder?: IInputBorder | undefined;
        errorMaxLines?: number | undefined;
        errorStyle?: ITextStyle | undefined;
        errorText?: string | undefined;
        fillColor?: IColor | undefined;
        filled?: boolean | undefined;
        floatingLabelBehavior?: FloatingLabelBehavior | undefined;
        floatingLabelStyle?: ITextStyle | undefined;
        focusColor?: IColor | undefined;
        focusedBorder?: IInputBorder | undefined;
        focusedErrorBorder?: IInputBorder | undefined;
        helperMaxLines?: number | undefined;
        helperStyle?: ITextStyle | undefined;
        helperText?: string | undefined;
        hintMaxLines?: number | undefined;
        hintStyle?: ITextStyle | undefined;
        hintText?: string | undefined;
        hintTextDirection?: TextDirection | undefined;
        hoverColor?: IColor | undefined;
        icon?: IWidget | undefined;
        iconColor?: IColor | undefined;
        isCollapsed?: boolean | undefined;
        isDense?: boolean | undefined;
        label?: IWidget | undefined;
        labelStyle?: ITextStyle | undefined;
        labelText?: string | undefined;
        prefix?: IWidget | undefined;
        prefixIcon?: IWidget | undefined;
        prefixIconColor?: IColor | undefined;
        prefixIconConstraints?: IBoxConstraints | undefined;
        prefixStyle?: ITextStyle | undefined;
        prefixText?: string | undefined;
        semanticCounterText?: string | undefined;
        suffix?: IWidget | undefined;
        suffixIcon?: IWidget | undefined;
        suffixIconColor?: IColor | undefined;
        suffixIconConstraints?: IBoxConstraints | undefined;
        suffixStyle?: ITextStyle | undefined;
        suffixText?: string | undefined;
    }): IInputDecoration {
        return this._dart_copyWith(props);
    }
    public applyDefaults(theme: IInputDecorationTheme): IInputDecoration {
        return this._dart_applyDefaults(theme);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
const inputDecorationDefaultProps = {
    enabled: true,
    isCollapsed: false,
};
