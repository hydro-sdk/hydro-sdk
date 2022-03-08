import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { ITextStyle } from "../painting/textStyle";
declare const flutter: {
    material: {
        materialBannerThemeData: (
            this: void,
            materialBannerThemeData: IMaterialBannerThemeData,
            props?: {
                backgroundColor?: IColor | undefined;
                contentTextStyle?: ITextStyle | undefined;
                elevation?: number | undefined;
                leadingPadding?: IEdgeInsetsGeometry | undefined;
                padding?: IEdgeInsetsGeometry | undefined;
            }
        ) => IMaterialBannerThemeData;
        materialBannerThemeDataLerp: (
            a: IMaterialBannerThemeData | undefined,
            b: IMaterialBannerThemeData | undefined,
            t: number
        ) => IMaterialBannerThemeData;
    };
};
export interface IMaterialBannerThemeData {
    backgroundColor: IColor | undefined;
    contentTextStyle: ITextStyle | undefined;
    elevation: number | undefined;
    padding: IEdgeInsetsGeometry | undefined;
    leadingPadding: IEdgeInsetsGeometry | undefined;
    copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        contentTextStyle?: ITextStyle | undefined;
        elevation?: number | undefined;
        leadingPadding?: IEdgeInsetsGeometry | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
    }) => IMaterialBannerThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class MaterialBannerThemeData implements IDiagnosticable {
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly contentTextStyle: ITextStyle | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly leadingPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public constructor(props?: {
        backgroundColor?: IColor | undefined;
        contentTextStyle?: ITextStyle | undefined;
        elevation?: number | undefined;
        leadingPadding?: IEdgeInsetsGeometry | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
    }) {
        flutter.material.materialBannerThemeData(this, props);
    }
    public static lerp(
        a: IMaterialBannerThemeData | undefined,
        b: IMaterialBannerThemeData | undefined,
        t: number
    ): IMaterialBannerThemeData {
        return flutter.material.materialBannerThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        contentTextStyle?: ITextStyle | undefined;
        elevation?: number | undefined;
        leadingPadding?: IEdgeInsetsGeometry | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
    }) => IMaterialBannerThemeData = undefined as any;
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
        contentTextStyle?: ITextStyle | undefined;
        elevation?: number | undefined;
        leadingPadding?: IEdgeInsetsGeometry | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
    }): IMaterialBannerThemeData {
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
