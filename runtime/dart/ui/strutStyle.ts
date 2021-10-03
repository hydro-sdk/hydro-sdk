import { IList } from "../core/list";
import { FontStyle } from "./fontStyle";
import { IFontWeight } from "./fontWeight";
declare const dart: {
    ui: {
        strutStyle: (
            this: void,
            strutStyle: IStrutStyle,
            props?: {
                fontFamily?: string | undefined;
                fontFamilyFallback?: IList<string> | undefined;
                fontSize?: number | undefined;
                fontStyle?: FontStyle | undefined;
                fontWeight?: IFontWeight | undefined;
                forceStrutHeight?: boolean | undefined;
                height?: number | undefined;
                leading?: number | undefined;
            }
        ) => IStrutStyle;
    };
};
export interface IStrutStyle {
    getHashCode: () => number;
}
export class StrutStyle {
    public constructor(props?: {
        fontFamily?: string | undefined;
        fontFamilyFallback?: IList<string> | undefined;
        fontSize?: number | undefined;
        fontStyle?: FontStyle | undefined;
        fontWeight?: IFontWeight | undefined;
        forceStrutHeight?: boolean | undefined;
        height?: number | undefined;
        leading?: number | undefined;
    }) {
        dart.ui.strutStyle(this, props);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
