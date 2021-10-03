import { FontStyle } from "./fontStyle";
import { IFontWeight } from "./fontWeight";
import { ILocale } from "./locale";
import { IStrutStyle } from "./strutStyle";
import { TextAlign } from "./textAlign";
import { TextDirection } from "./textDirection";
import { ITextHeightBehavior } from "./textHeightBehavior";
declare const dart: {
    ui: {
        paragraphStyle: (
            this: void,
            paragraphStyle: IParagraphStyle,
            props?: {
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
            }
        ) => IParagraphStyle;
    };
};
export interface IParagraphStyle {
    getHashCode: () => number;
    toString: () => string;
}
export class ParagraphStyle {
    public constructor(props?: {
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
    }) {
        dart.ui.paragraphStyle(this, props);
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
