import { IList } from "../../dart/core/list";
import { ISet } from "../../dart/core/set";
import { IColor } from "../../dart/ui/color";
import { IFontFeature } from "../../dart/ui/fontFeature";
import { FontStyle } from "../../dart/ui/fontStyle";
import { IFontWeight } from "../../dart/ui/fontWeight";
import { ILocale } from "../../dart/ui/locale";
import { IPaint } from "../../dart/ui/paint";
import { IParagraphStyle } from "../../dart/ui/paragraphStyle";
import { IShadow } from "../../dart/ui/shadow";
import { TextAlign } from "../../dart/ui/textAlign";
import { TextBaseline } from "../../dart/ui/textBaseline";
import { ITextDecoration } from "../../dart/ui/textDecoration";
import { TextDecorationStyle } from "../../dart/ui/textDecorationStyle";
import { TextDirection } from "../../dart/ui/textDirection";
import { ITextHeightBehavior } from "../../dart/ui/textHeightBehavior";
import { TextLeadingDistribution } from "../../dart/ui/textLeadingDistribution";
import { ITextStyle } from "../../dart/ui/textStyle";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { RenderComparison } from "../painting/renderComparison";
import { IStrutStyle } from "../painting/strutStyle";
import { TextOverflow } from "../painting/textOverflow";
import { ITextStyle } from "../painting/textStyle";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
import { IMaterialStateTextStyle } from "./materialStateTextStyle";
declare const flutter: {
    material: {
        _materialStateTextStyle: (
            this: void,
            _materialStateTextStyle: I_MaterialStateTextStyle,
            _resolve: (states: ISet<MaterialState>) => ITextStyle
        ) => I_MaterialStateTextStyle;
    };
};
export interface I_MaterialStateTextStyle {
    inherit: boolean;
    color: IColor | undefined;
    backgroundColor: IColor | undefined;
    fontFamily: string | undefined;
    fontSize: number | undefined;
    fontWeight: IFontWeight | undefined;
    fontStyle: FontStyle | undefined;
    letterSpacing: number | undefined;
    wordSpacing: number | undefined;
    textBaseline: TextBaseline | undefined;
    height: number | undefined;
    leadingDistribution: TextLeadingDistribution | undefined;
    locale: ILocale | undefined;
    foreground: IPaint | undefined;
    background: IPaint | undefined;
    decoration: ITextDecoration | undefined;
    decorationColor: IColor | undefined;
    decorationStyle: TextDecorationStyle | undefined;
    decorationThickness: number | undefined;
    debugLabel: string | undefined;
    shadows: IList<IShadow> | undefined;
    fontFeatures: IList<IFontFeature> | undefined;
    overflow: TextOverflow | undefined;
    resolve: (states: ISet<MaterialState>) => ITextStyle;
    copyWith: (props?: {
        background?: IPaint | undefined;
        backgroundColor?: IColor | undefined;
        color?: IColor | undefined;
        debugLabel?: string | undefined;
        decoration?: ITextDecoration | undefined;
        decorationColor?: IColor | undefined;
        decorationStyle?: TextDecorationStyle | undefined;
        decorationThickness?: number | undefined;
        fontFamily?: string | undefined;
        fontFamilyFallback?: IList<string> | undefined;
        fontFeatures?: IList<IFontFeature> | undefined;
        fontSize?: number | undefined;
        fontStyle?: FontStyle | undefined;
        fontWeight?: IFontWeight | undefined;
        foreground?: IPaint | undefined;
        height?: number | undefined;
        inherit?: boolean | undefined;
        leadingDistribution?: TextLeadingDistribution | undefined;
        letterSpacing?: number | undefined;
        locale?: ILocale | undefined;
        overflow?: TextOverflow | undefined;
        package?: string | undefined;
        shadows?: IList<IShadow> | undefined;
        textBaseline?: TextBaseline | undefined;
        wordSpacing?: number | undefined;
    }) => ITextStyle;
    apply: (props: {
        backgroundColor?: IColor | undefined;
        color?: IColor | undefined;
        decoration?: ITextDecoration | undefined;
        decorationColor?: IColor | undefined;
        decorationStyle?: TextDecorationStyle | undefined;
        decorationThicknessDelta: number;
        decorationThicknessFactor: number;
        fontFamily?: string | undefined;
        fontFamilyFallback?: IList<string> | undefined;
        fontFeatures?: IList<IFontFeature> | undefined;
        fontSizeDelta: number;
        fontSizeFactor: number;
        fontStyle?: FontStyle | undefined;
        fontWeightDelta: number;
        heightDelta: number;
        heightFactor: number;
        leadingDistribution?: TextLeadingDistribution | undefined;
        letterSpacingDelta: number;
        letterSpacingFactor: number;
        locale?: ILocale | undefined;
        overflow?: TextOverflow | undefined;
        package?: string | undefined;
        shadows?: IList<IShadow> | undefined;
        textBaseline?: TextBaseline | undefined;
        wordSpacingDelta: number;
        wordSpacingFactor: number;
    }) => ITextStyle;
    merge: (other?: ITextStyle | undefined) => ITextStyle;
    getTextStyle: (props: { textScaleFactor: number }) => ITextStyle;
    getParagraphStyle: (props: {
        ellipsis?: string | undefined;
        fontFamily?: string | undefined;
        fontSize?: number | undefined;
        fontStyle?: FontStyle | undefined;
        fontWeight?: IFontWeight | undefined;
        height?: number | undefined;
        locale?: ILocale | undefined;
        maxLines?: number | undefined;
        strutStyle?: IStrutStyle | undefined;
        textAlign?: TextAlign | undefined;
        textDirection?: TextDirection | undefined;
        textHeightBehavior?: ITextHeightBehavior | undefined;
        textScaleFactor: number;
    }) => IParagraphStyle;
    compareTo: (other: ITextStyle) => RenderComparison;
    toStringShort: () => string;
    debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder,
        props: { prefix: string }
    ) => void;
    getFontFamilyFallback: () => IList<string> | undefined;
    getHashCode: () => number;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class _MaterialStateTextStyle
    implements
        IMaterialStateTextStyle,
        IDiagnosticable,
        IMaterialStateProperty<ITextStyle>
{
    public readonly inherit: boolean = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly fontFamily: string | undefined = undefined as any;
    public readonly fontSize: number | undefined = undefined as any;
    public readonly fontWeight: IFontWeight | undefined = undefined as any;
    public readonly fontStyle: FontStyle | undefined = undefined as any;
    public readonly letterSpacing: number | undefined = undefined as any;
    public readonly wordSpacing: number | undefined = undefined as any;
    public readonly textBaseline: TextBaseline | undefined = undefined as any;
    public readonly height: number | undefined = undefined as any;
    public readonly leadingDistribution: TextLeadingDistribution | undefined =
        undefined as any;
    public readonly locale: ILocale | undefined = undefined as any;
    public readonly foreground: IPaint | undefined = undefined as any;
    public readonly background: IPaint | undefined = undefined as any;
    public readonly decoration: ITextDecoration | undefined = undefined as any;
    public readonly decorationColor: IColor | undefined = undefined as any;
    public readonly decorationStyle: TextDecorationStyle | undefined =
        undefined as any;
    public readonly decorationThickness: number | undefined = undefined as any;
    public readonly debugLabel: string | undefined = undefined as any;
    public readonly shadows: IList<IShadow> | undefined = undefined as any;
    public readonly fontFeatures: IList<IFontFeature> | undefined =
        undefined as any;
    public readonly overflow: TextOverflow | undefined = undefined as any;
    public constructor(_resolve: (states: ISet<MaterialState>) => ITextStyle) {
        flutter.material._materialStateTextStyle(this, _resolve);
    }
    private readonly _dart_resolve: (
        states: ISet<MaterialState>
    ) => ITextStyle = undefined as any;
    private readonly _dart_copyWith: (props?: {
        background?: IPaint | undefined;
        backgroundColor?: IColor | undefined;
        color?: IColor | undefined;
        debugLabel?: string | undefined;
        decoration?: ITextDecoration | undefined;
        decorationColor?: IColor | undefined;
        decorationStyle?: TextDecorationStyle | undefined;
        decorationThickness?: number | undefined;
        fontFamily?: string | undefined;
        fontFamilyFallback?: IList<string> | undefined;
        fontFeatures?: IList<IFontFeature> | undefined;
        fontSize?: number | undefined;
        fontStyle?: FontStyle | undefined;
        fontWeight?: IFontWeight | undefined;
        foreground?: IPaint | undefined;
        height?: number | undefined;
        inherit?: boolean | undefined;
        leadingDistribution?: TextLeadingDistribution | undefined;
        letterSpacing?: number | undefined;
        locale?: ILocale | undefined;
        overflow?: TextOverflow | undefined;
        package?: string | undefined;
        shadows?: IList<IShadow> | undefined;
        textBaseline?: TextBaseline | undefined;
        wordSpacing?: number | undefined;
    }) => ITextStyle = undefined as any;
    private readonly _dart_apply: (props: {
        backgroundColor?: IColor | undefined;
        color?: IColor | undefined;
        decoration?: ITextDecoration | undefined;
        decorationColor?: IColor | undefined;
        decorationStyle?: TextDecorationStyle | undefined;
        decorationThicknessDelta: number;
        decorationThicknessFactor: number;
        fontFamily?: string | undefined;
        fontFamilyFallback?: IList<string> | undefined;
        fontFeatures?: IList<IFontFeature> | undefined;
        fontSizeDelta: number;
        fontSizeFactor: number;
        fontStyle?: FontStyle | undefined;
        fontWeightDelta: number;
        heightDelta: number;
        heightFactor: number;
        leadingDistribution?: TextLeadingDistribution | undefined;
        letterSpacingDelta: number;
        letterSpacingFactor: number;
        locale?: ILocale | undefined;
        overflow?: TextOverflow | undefined;
        package?: string | undefined;
        shadows?: IList<IShadow> | undefined;
        textBaseline?: TextBaseline | undefined;
        wordSpacingDelta: number;
        wordSpacingFactor: number;
    }) => ITextStyle = undefined as any;
    private readonly _dart_merge: (
        other?: ITextStyle | undefined
    ) => ITextStyle = undefined as any;
    private readonly _dart_getTextStyle: (props: {
        textScaleFactor: number;
    }) => ITextStyle = undefined as any;
    private readonly _dart_getParagraphStyle: (props: {
        ellipsis?: string | undefined;
        fontFamily?: string | undefined;
        fontSize?: number | undefined;
        fontStyle?: FontStyle | undefined;
        fontWeight?: IFontWeight | undefined;
        height?: number | undefined;
        locale?: ILocale | undefined;
        maxLines?: number | undefined;
        strutStyle?: IStrutStyle | undefined;
        textAlign?: TextAlign | undefined;
        textDirection?: TextDirection | undefined;
        textHeightBehavior?: ITextHeightBehavior | undefined;
        textScaleFactor: number;
    }) => IParagraphStyle = undefined as any;
    private readonly _dart_compareTo: (other: ITextStyle) => RenderComparison =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder,
        props: { prefix: string }
    ) => void = undefined as any;
    private readonly _dart_getFontFamilyFallback: () =>
        | IList<string>
        | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    public resolve(states: ISet<MaterialState>): ITextStyle {
        return this._dart_resolve(states);
    }
    public copyWith(props?: {
        background?: IPaint | undefined;
        backgroundColor?: IColor | undefined;
        color?: IColor | undefined;
        debugLabel?: string | undefined;
        decoration?: ITextDecoration | undefined;
        decorationColor?: IColor | undefined;
        decorationStyle?: TextDecorationStyle | undefined;
        decorationThickness?: number | undefined;
        fontFamily?: string | undefined;
        fontFamilyFallback?: IList<string> | undefined;
        fontFeatures?: IList<IFontFeature> | undefined;
        fontSize?: number | undefined;
        fontStyle?: FontStyle | undefined;
        fontWeight?: IFontWeight | undefined;
        foreground?: IPaint | undefined;
        height?: number | undefined;
        inherit?: boolean | undefined;
        leadingDistribution?: TextLeadingDistribution | undefined;
        letterSpacing?: number | undefined;
        locale?: ILocale | undefined;
        overflow?: TextOverflow | undefined;
        package?: string | undefined;
        shadows?: IList<IShadow> | undefined;
        textBaseline?: TextBaseline | undefined;
        wordSpacing?: number | undefined;
    }): ITextStyle {
        return this._dart_copyWith(props);
    }
    public apply(props: {
        backgroundColor?: IColor | undefined;
        color?: IColor | undefined;
        decoration?: ITextDecoration | undefined;
        decorationColor?: IColor | undefined;
        decorationStyle?: TextDecorationStyle | undefined;
        decorationThicknessDelta?: number;
        decorationThicknessFactor?: number;
        fontFamily?: string | undefined;
        fontFamilyFallback?: IList<string> | undefined;
        fontFeatures?: IList<IFontFeature> | undefined;
        fontSizeDelta?: number;
        fontSizeFactor?: number;
        fontStyle?: FontStyle | undefined;
        fontWeightDelta?: number;
        heightDelta?: number;
        heightFactor?: number;
        leadingDistribution?: TextLeadingDistribution | undefined;
        letterSpacingDelta?: number;
        letterSpacingFactor?: number;
        locale?: ILocale | undefined;
        overflow?: TextOverflow | undefined;
        package?: string | undefined;
        shadows?: IList<IShadow> | undefined;
        textBaseline?: TextBaseline | undefined;
        wordSpacingDelta?: number;
        wordSpacingFactor?: number;
    }): ITextStyle {
        return this._dart_apply({
            ...applyDefaultProps,
            ...props,
        });
    }
    public merge(other?: ITextStyle | undefined): ITextStyle {
        return this._dart_merge(other);
    }
    public getTextStyle(props: { textScaleFactor?: number }): ITextStyle {
        return this._dart_getTextStyle({
            ...getTextStyleDefaultProps,
            ...props,
        });
    }
    public getParagraphStyle(props: {
        ellipsis?: string | undefined;
        fontFamily?: string | undefined;
        fontSize?: number | undefined;
        fontStyle?: FontStyle | undefined;
        fontWeight?: IFontWeight | undefined;
        height?: number | undefined;
        locale?: ILocale | undefined;
        maxLines?: number | undefined;
        strutStyle?: IStrutStyle | undefined;
        textAlign?: TextAlign | undefined;
        textDirection?: TextDirection | undefined;
        textHeightBehavior?: ITextHeightBehavior | undefined;
        textScaleFactor?: number;
    }): IParagraphStyle {
        return this._dart_getParagraphStyle({
            ...getParagraphStyleDefaultProps,
            ...props,
        });
    }
    public compareTo(other: ITextStyle): RenderComparison {
        return this._dart_compareTo(other);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public debugFillProperties(
        properties: IDiagnosticPropertiesBuilder,
        props: { prefix?: string }
    ): void {
        return this._dart_debugFillProperties(properties, {
            ...debugFillPropertiesDefaultProps,
            ...props,
        });
    }
    public getFontFamilyFallback(): IList<string> | undefined {
        return this._dart_getFontFamilyFallback();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
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
    decorationThicknessDelta: 0.0,
    decorationThicknessFactor: 1.0,
    fontSizeDelta: 0.0,
    fontSizeFactor: 1.0,
    fontWeightDelta: 0,
    heightDelta: 0.0,
    heightFactor: 1.0,
    letterSpacingDelta: 0.0,
    letterSpacingFactor: 1.0,
    wordSpacingDelta: 0.0,
    wordSpacingFactor: 1.0,
};
const getTextStyleDefaultProps = {
    textScaleFactor: 1.0,
};
const getParagraphStyleDefaultProps = {
    textScaleFactor: 1.0,
};
const debugFillPropertiesDefaultProps = {
    prefix: "",
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
