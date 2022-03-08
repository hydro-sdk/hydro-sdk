import { IColor } from "../../dart/ui/color";
import { ITextDecoration } from "../../dart/ui/textDecoration";
import { TextDecorationStyle } from "../../dart/ui/textDecorationStyle";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITextStyle } from "../painting/textStyle";
declare const flutter: {
    material: {
        textTheme: (
            this: void,
            textTheme: ITextTheme,
            props?: {
                bodyText1?: ITextStyle | undefined;
                bodyText2?: ITextStyle | undefined;
                button?: ITextStyle | undefined;
                caption?: ITextStyle | undefined;
                headline1?: ITextStyle | undefined;
                headline2?: ITextStyle | undefined;
                headline3?: ITextStyle | undefined;
                headline4?: ITextStyle | undefined;
                headline5?: ITextStyle | undefined;
                headline6?: ITextStyle | undefined;
                overline?: ITextStyle | undefined;
                subtitle1?: ITextStyle | undefined;
                subtitle2?: ITextStyle | undefined;
            }
        ) => ITextTheme;
        textThemeLerp: (
            a: ITextTheme | undefined,
            b: ITextTheme | undefined,
            t: number
        ) => ITextTheme;
    };
};
export interface ITextTheme {
    headline1: ITextStyle | undefined;
    headline2: ITextStyle | undefined;
    headline3: ITextStyle | undefined;
    headline4: ITextStyle | undefined;
    headline5: ITextStyle | undefined;
    headline6: ITextStyle | undefined;
    subtitle1: ITextStyle | undefined;
    subtitle2: ITextStyle | undefined;
    bodyText1: ITextStyle | undefined;
    bodyText2: ITextStyle | undefined;
    caption: ITextStyle | undefined;
    button: ITextStyle | undefined;
    overline: ITextStyle | undefined;
    copyWith: (props?: {
        bodyText1?: ITextStyle | undefined;
        bodyText2?: ITextStyle | undefined;
        button?: ITextStyle | undefined;
        caption?: ITextStyle | undefined;
        headline1?: ITextStyle | undefined;
        headline2?: ITextStyle | undefined;
        headline3?: ITextStyle | undefined;
        headline4?: ITextStyle | undefined;
        headline5?: ITextStyle | undefined;
        headline6?: ITextStyle | undefined;
        overline?: ITextStyle | undefined;
        subtitle1?: ITextStyle | undefined;
        subtitle2?: ITextStyle | undefined;
    }) => ITextTheme;
    merge: (other?: ITextTheme | undefined) => ITextTheme;
    apply: (props: {
        bodyColor?: IColor | undefined;
        decoration?: ITextDecoration | undefined;
        decorationColor?: IColor | undefined;
        decorationStyle?: TextDecorationStyle | undefined;
        displayColor?: IColor | undefined;
        fontFamily?: string | undefined;
        fontSizeDelta: number;
        fontSizeFactor: number;
    }) => ITextTheme;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class TextTheme implements IDiagnosticable {
    public readonly headline1: ITextStyle | undefined = undefined as any;
    public readonly headline2: ITextStyle | undefined = undefined as any;
    public readonly headline3: ITextStyle | undefined = undefined as any;
    public readonly headline4: ITextStyle | undefined = undefined as any;
    public readonly headline5: ITextStyle | undefined = undefined as any;
    public readonly headline6: ITextStyle | undefined = undefined as any;
    public readonly subtitle1: ITextStyle | undefined = undefined as any;
    public readonly subtitle2: ITextStyle | undefined = undefined as any;
    public readonly bodyText1: ITextStyle | undefined = undefined as any;
    public readonly bodyText2: ITextStyle | undefined = undefined as any;
    public readonly caption: ITextStyle | undefined = undefined as any;
    public readonly button: ITextStyle | undefined = undefined as any;
    public readonly overline: ITextStyle | undefined = undefined as any;
    public constructor(props?: {
        bodyText1?: ITextStyle | undefined;
        bodyText2?: ITextStyle | undefined;
        button?: ITextStyle | undefined;
        caption?: ITextStyle | undefined;
        headline1?: ITextStyle | undefined;
        headline2?: ITextStyle | undefined;
        headline3?: ITextStyle | undefined;
        headline4?: ITextStyle | undefined;
        headline5?: ITextStyle | undefined;
        headline6?: ITextStyle | undefined;
        overline?: ITextStyle | undefined;
        subtitle1?: ITextStyle | undefined;
        subtitle2?: ITextStyle | undefined;
    }) {
        flutter.material.textTheme(this, props);
    }
    public static lerp(
        a: ITextTheme | undefined,
        b: ITextTheme | undefined,
        t: number
    ): ITextTheme {
        return flutter.material.textThemeLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        bodyText1?: ITextStyle | undefined;
        bodyText2?: ITextStyle | undefined;
        button?: ITextStyle | undefined;
        caption?: ITextStyle | undefined;
        headline1?: ITextStyle | undefined;
        headline2?: ITextStyle | undefined;
        headline3?: ITextStyle | undefined;
        headline4?: ITextStyle | undefined;
        headline5?: ITextStyle | undefined;
        headline6?: ITextStyle | undefined;
        overline?: ITextStyle | undefined;
        subtitle1?: ITextStyle | undefined;
        subtitle2?: ITextStyle | undefined;
    }) => ITextTheme = undefined as any;
    private readonly _dart_merge: (
        other?: ITextTheme | undefined
    ) => ITextTheme = undefined as any;
    private readonly _dart_apply: (props: {
        bodyColor?: IColor | undefined;
        decoration?: ITextDecoration | undefined;
        decorationColor?: IColor | undefined;
        decorationStyle?: TextDecorationStyle | undefined;
        displayColor?: IColor | undefined;
        fontFamily?: string | undefined;
        fontSizeDelta: number;
        fontSizeFactor: number;
    }) => ITextTheme = undefined as any;
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
        bodyText1?: ITextStyle | undefined;
        bodyText2?: ITextStyle | undefined;
        button?: ITextStyle | undefined;
        caption?: ITextStyle | undefined;
        headline1?: ITextStyle | undefined;
        headline2?: ITextStyle | undefined;
        headline3?: ITextStyle | undefined;
        headline4?: ITextStyle | undefined;
        headline5?: ITextStyle | undefined;
        headline6?: ITextStyle | undefined;
        overline?: ITextStyle | undefined;
        subtitle1?: ITextStyle | undefined;
        subtitle2?: ITextStyle | undefined;
    }): ITextTheme {
        return this._dart_copyWith(props);
    }
    public merge(other?: ITextTheme | undefined): ITextTheme {
        return this._dart_merge(other);
    }
    public apply(props: {
        bodyColor?: IColor | undefined;
        decoration?: ITextDecoration | undefined;
        decorationColor?: IColor | undefined;
        decorationStyle?: TextDecorationStyle | undefined;
        displayColor?: IColor | undefined;
        fontFamily?: string | undefined;
        fontSizeDelta?: number;
        fontSizeFactor?: number;
    }): ITextTheme {
        return this._dart_apply({
            ...applyDefaultProps,
            ...props,
        });
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
const applyDefaultProps = {
    fontSizeDelta: 0.0,
    fontSizeFactor: 1.0,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
