import { IList } from "../core/list";
import { IColor } from "./color";
import { IFontFeature } from "./fontFeature";
import { FontStyle } from "./fontStyle";
import { IFontWeight } from "./fontWeight";
import { ILocale } from "./locale";
import { IPaint } from "./paint";
import { IShadow } from "./shadow";
import { TextBaseline } from "./textBaseline";
import { ITextDecoration } from "./textDecoration";
import { TextDecorationStyle } from "./textDecorationStyle";
declare const dart: {
    ui: {
        textStyle: (
            this: void,
            textStyle: ITextStyle,
            props?: {
                background?: IPaint | undefined;
                color?: IColor | undefined;
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
                letterSpacing?: number | undefined;
                locale?: ILocale | undefined;
                shadows?: IList<IShadow> | undefined;
                textBaseline?: TextBaseline | undefined;
                wordSpacing?: number | undefined;
            }
        ) => ITextStyle;
    };
};
export interface ITextStyle {
    getHashCode: () => number;
    toString: () => string;
}
export class TextStyle {
    public constructor(props?: {
        background?: IPaint | undefined;
        color?: IColor | undefined;
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
        letterSpacing?: number | undefined;
        locale?: ILocale | undefined;
        shadows?: IList<IShadow> | undefined;
        textBaseline?: TextBaseline | undefined;
        wordSpacing?: number | undefined;
    }) {
        dart.ui.textStyle(this, props);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
