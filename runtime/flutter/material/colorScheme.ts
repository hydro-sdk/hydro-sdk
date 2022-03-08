import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { Colors } from "./colors";
import { IMaterialColor } from "./materialColor";
declare const flutter: {
    material: {
        colorScheme: (
            this: void,
            colorScheme: IColorScheme,
            props: {
                background: IColor;
                brightness: Brightness;
                error: IColor;
                onBackground: IColor;
                onError: IColor;
                onPrimary: IColor;
                onSecondary: IColor;
                onSurface: IColor;
                primary: IColor;
                primaryVariant: IColor;
                secondary: IColor;
                secondaryVariant: IColor;
                surface: IColor;
            }
        ) => IColorScheme;
        colorSchemeFromSwatch: (props: {
            accentColor?: IColor | undefined;
            backgroundColor?: IColor | undefined;
            brightness: Brightness;
            cardColor?: IColor | undefined;
            errorColor?: IColor | undefined;
            primaryColorDark?: IColor | undefined;
            primarySwatch: IMaterialColor;
        }) => IColorScheme;
        colorSchemeLerp: (
            a: IColorScheme,
            b: IColorScheme,
            t: number
        ) => IColorScheme;
    };
};
export interface IColorScheme {
    primary: IColor;
    primaryVariant: IColor;
    secondary: IColor;
    secondaryVariant: IColor;
    surface: IColor;
    background: IColor;
    error: IColor;
    onPrimary: IColor;
    onSecondary: IColor;
    onSurface: IColor;
    onBackground: IColor;
    onError: IColor;
    brightness: Brightness;
    copyWith: (props?: {
        background?: IColor | undefined;
        brightness?: Brightness | undefined;
        error?: IColor | undefined;
        onBackground?: IColor | undefined;
        onError?: IColor | undefined;
        onPrimary?: IColor | undefined;
        onSecondary?: IColor | undefined;
        onSurface?: IColor | undefined;
        primary?: IColor | undefined;
        primaryVariant?: IColor | undefined;
        secondary?: IColor | undefined;
        secondaryVariant?: IColor | undefined;
        surface?: IColor | undefined;
    }) => IColorScheme;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class ColorScheme implements IDiagnosticable {
    public readonly primary: IColor = undefined as any;
    public readonly primaryVariant: IColor = undefined as any;
    public readonly secondary: IColor = undefined as any;
    public readonly secondaryVariant: IColor = undefined as any;
    public readonly surface: IColor = undefined as any;
    public readonly background: IColor = undefined as any;
    public readonly error: IColor = undefined as any;
    public readonly onPrimary: IColor = undefined as any;
    public readonly onSecondary: IColor = undefined as any;
    public readonly onSurface: IColor = undefined as any;
    public readonly onBackground: IColor = undefined as any;
    public readonly onError: IColor = undefined as any;
    public readonly brightness: Brightness = undefined as any;
    public constructor(props: {
        background: IColor;
        brightness: Brightness;
        error: IColor;
        onBackground: IColor;
        onError: IColor;
        onPrimary: IColor;
        onSecondary: IColor;
        onSurface: IColor;
        primary: IColor;
        primaryVariant: IColor;
        secondary: IColor;
        secondaryVariant: IColor;
        surface: IColor;
    }) {
        flutter.material.colorScheme(this, props);
    }
    public static fromSwatch(props: {
        accentColor?: IColor | undefined;
        backgroundColor?: IColor | undefined;
        brightness?: Brightness;
        cardColor?: IColor | undefined;
        errorColor?: IColor | undefined;
        primaryColorDark?: IColor | undefined;
        primarySwatch?: IMaterialColor;
    }): IColorScheme {
        return flutter.material.colorSchemeFromSwatch({
            ...fromSwatchDefaultProps,
            ...props,
        });
    }
    public static lerp(
        a: IColorScheme,
        b: IColorScheme,
        t: number
    ): IColorScheme {
        return flutter.material.colorSchemeLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        background?: IColor | undefined;
        brightness?: Brightness | undefined;
        error?: IColor | undefined;
        onBackground?: IColor | undefined;
        onError?: IColor | undefined;
        onPrimary?: IColor | undefined;
        onSecondary?: IColor | undefined;
        onSurface?: IColor | undefined;
        primary?: IColor | undefined;
        primaryVariant?: IColor | undefined;
        secondary?: IColor | undefined;
        secondaryVariant?: IColor | undefined;
        surface?: IColor | undefined;
    }) => IColorScheme = undefined as any;
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
        background?: IColor | undefined;
        brightness?: Brightness | undefined;
        error?: IColor | undefined;
        onBackground?: IColor | undefined;
        onError?: IColor | undefined;
        onPrimary?: IColor | undefined;
        onSecondary?: IColor | undefined;
        onSurface?: IColor | undefined;
        primary?: IColor | undefined;
        primaryVariant?: IColor | undefined;
        secondary?: IColor | undefined;
        secondaryVariant?: IColor | undefined;
        surface?: IColor | undefined;
    }): IColorScheme {
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
const fromSwatchDefaultProps = {
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
};
