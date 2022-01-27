import { IList } from "../../dart/core/list";
import { FontStyle } from "../../dart/ui/fontStyle";
import { IFontWeight } from "../../dart/ui/fontWeight";
import { TextLeadingDistribution } from "../../dart/ui/textLeadingDistribution";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { RenderComparison } from "./renderComparison";
import { ITextStyle } from "./textStyle";
declare const flutter: {
    painting: {
        strutStyle: (
            this: void,
            strutStyle: IStrutStyle,
            props?: {
                debugLabel?: string | undefined;
                fontFamily?: string | undefined;
                fontFamilyFallback?: IList<string> | undefined;
                fontSize?: number | undefined;
                fontStyle?: FontStyle | undefined;
                fontWeight?: IFontWeight | undefined;
                forceStrutHeight?: boolean | undefined;
                height?: number | undefined;
                leading?: number | undefined;
                leadingDistribution?: TextLeadingDistribution | undefined;
                package?: string | undefined;
            }
        ) => IStrutStyle;
    };
};
export interface IStrutStyle {
    fontFamily: string | undefined;
    fontSize: number | undefined;
    height: number | undefined;
    leadingDistribution: TextLeadingDistribution | undefined;
    fontWeight: IFontWeight | undefined;
    fontStyle: FontStyle | undefined;
    leading: number | undefined;
    forceStrutHeight: boolean | undefined;
    debugLabel: string | undefined;
    getFontFamilyFallback: () => IList<string> | undefined;
    compareTo: (other: IStrutStyle) => RenderComparison;
    inheritFromTextStyle: (other?: ITextStyle | undefined) => IStrutStyle;
    getHashCode: () => number;
    toStringShort: () => string;
    debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder,
        props: { prefix: string }
    ) => void;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class StrutStyle implements IDiagnosticable {
    public static disabled = new StrutStyle();
    public readonly fontFamily: string | undefined = undefined as any;
    public readonly fontSize: number | undefined = undefined as any;
    public readonly height: number | undefined = undefined as any;
    public readonly leadingDistribution: TextLeadingDistribution | undefined =
        undefined as any;
    public readonly fontWeight: IFontWeight | undefined = undefined as any;
    public readonly fontStyle: FontStyle | undefined = undefined as any;
    public readonly leading: number | undefined = undefined as any;
    public readonly forceStrutHeight: boolean | undefined = undefined as any;
    public readonly debugLabel: string | undefined = undefined as any;
    public constructor(props?: {
        debugLabel?: string | undefined;
        fontFamily?: string | undefined;
        fontFamilyFallback?: IList<string> | undefined;
        fontSize?: number | undefined;
        fontStyle?: FontStyle | undefined;
        fontWeight?: IFontWeight | undefined;
        forceStrutHeight?: boolean | undefined;
        height?: number | undefined;
        leading?: number | undefined;
        leadingDistribution?: TextLeadingDistribution | undefined;
        package?: string | undefined;
    }) {
        flutter.painting.strutStyle(this, props);
    }
    private readonly _dart_getFontFamilyFallback: () =>
        | IList<string>
        | undefined = undefined as any;
    private readonly _dart_compareTo: (other: IStrutStyle) => RenderComparison =
        undefined as any;
    private readonly _dart_inheritFromTextStyle: (
        other?: ITextStyle | undefined
    ) => IStrutStyle = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder,
        props: { prefix: string }
    ) => void = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    public getFontFamilyFallback(): IList<string> | undefined {
        return this._dart_getFontFamilyFallback();
    }
    public compareTo(other: IStrutStyle): RenderComparison {
        return this._dart_compareTo(other);
    }
    public inheritFromTextStyle(other?: ITextStyle | undefined): IStrutStyle {
        return this._dart_inheritFromTextStyle(other);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
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
const debugFillPropertiesDefaultProps = {
    prefix: "",
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
