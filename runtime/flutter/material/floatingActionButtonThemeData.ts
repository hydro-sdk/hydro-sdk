import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { ITextStyle } from "../painting/textStyle";
import { IBoxConstraints } from "../rendering/boxConstraints";
declare const flutter: {
    material: {
        floatingActionButtonThemeData: (
            this: void,
            floatingActionButtonThemeData: IFloatingActionButtonThemeData,
            props?: {
                backgroundColor?: IColor | undefined;
                disabledElevation?: number | undefined;
                elevation?: number | undefined;
                enableFeedback?: boolean | undefined;
                extendedIconLabelSpacing?: number | undefined;
                extendedPadding?: IEdgeInsetsGeometry | undefined;
                extendedSizeConstraints?: IBoxConstraints | undefined;
                extendedTextStyle?: ITextStyle | undefined;
                focusColor?: IColor | undefined;
                focusElevation?: number | undefined;
                foregroundColor?: IColor | undefined;
                highlightElevation?: number | undefined;
                hoverColor?: IColor | undefined;
                hoverElevation?: number | undefined;
                largeSizeConstraints?: IBoxConstraints | undefined;
                shape?: IShapeBorder | undefined;
                sizeConstraints?: IBoxConstraints | undefined;
                smallSizeConstraints?: IBoxConstraints | undefined;
                splashColor?: IColor | undefined;
            }
        ) => IFloatingActionButtonThemeData;
        floatingActionButtonThemeDataLerp: (
            a: IFloatingActionButtonThemeData | undefined,
            b: IFloatingActionButtonThemeData | undefined,
            t: number
        ) => IFloatingActionButtonThemeData | undefined;
    };
};
export interface IFloatingActionButtonThemeData {
    foregroundColor: IColor | undefined;
    backgroundColor: IColor | undefined;
    focusColor: IColor | undefined;
    hoverColor: IColor | undefined;
    splashColor: IColor | undefined;
    elevation: number | undefined;
    focusElevation: number | undefined;
    hoverElevation: number | undefined;
    disabledElevation: number | undefined;
    highlightElevation: number | undefined;
    shape: IShapeBorder | undefined;
    enableFeedback: boolean | undefined;
    sizeConstraints: IBoxConstraints | undefined;
    smallSizeConstraints: IBoxConstraints | undefined;
    largeSizeConstraints: IBoxConstraints | undefined;
    extendedSizeConstraints: IBoxConstraints | undefined;
    extendedIconLabelSpacing: number | undefined;
    extendedPadding: IEdgeInsetsGeometry | undefined;
    extendedTextStyle: ITextStyle | undefined;
    copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        disabledElevation?: number | undefined;
        elevation?: number | undefined;
        enableFeedback?: boolean | undefined;
        extendedIconLabelSpacing?: number | undefined;
        extendedPadding?: IEdgeInsetsGeometry | undefined;
        extendedSizeConstraints?: IBoxConstraints | undefined;
        extendedTextStyle?: ITextStyle | undefined;
        focusColor?: IColor | undefined;
        focusElevation?: number | undefined;
        foregroundColor?: IColor | undefined;
        highlightElevation?: number | undefined;
        hoverColor?: IColor | undefined;
        hoverElevation?: number | undefined;
        largeSizeConstraints?: IBoxConstraints | undefined;
        shape?: IShapeBorder | undefined;
        sizeConstraints?: IBoxConstraints | undefined;
        smallSizeConstraints?: IBoxConstraints | undefined;
        splashColor?: IColor | undefined;
    }) => IFloatingActionButtonThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class FloatingActionButtonThemeData implements IDiagnosticable {
    public readonly foregroundColor: IColor | undefined = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly focusColor: IColor | undefined = undefined as any;
    public readonly hoverColor: IColor | undefined = undefined as any;
    public readonly splashColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly focusElevation: number | undefined = undefined as any;
    public readonly hoverElevation: number | undefined = undefined as any;
    public readonly disabledElevation: number | undefined = undefined as any;
    public readonly highlightElevation: number | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly enableFeedback: boolean | undefined = undefined as any;
    public readonly sizeConstraints: IBoxConstraints | undefined =
        undefined as any;
    public readonly smallSizeConstraints: IBoxConstraints | undefined =
        undefined as any;
    public readonly largeSizeConstraints: IBoxConstraints | undefined =
        undefined as any;
    public readonly extendedSizeConstraints: IBoxConstraints | undefined =
        undefined as any;
    public readonly extendedIconLabelSpacing: number | undefined =
        undefined as any;
    public readonly extendedPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly extendedTextStyle: ITextStyle | undefined =
        undefined as any;
    public constructor(props?: {
        backgroundColor?: IColor | undefined;
        disabledElevation?: number | undefined;
        elevation?: number | undefined;
        enableFeedback?: boolean | undefined;
        extendedIconLabelSpacing?: number | undefined;
        extendedPadding?: IEdgeInsetsGeometry | undefined;
        extendedSizeConstraints?: IBoxConstraints | undefined;
        extendedTextStyle?: ITextStyle | undefined;
        focusColor?: IColor | undefined;
        focusElevation?: number | undefined;
        foregroundColor?: IColor | undefined;
        highlightElevation?: number | undefined;
        hoverColor?: IColor | undefined;
        hoverElevation?: number | undefined;
        largeSizeConstraints?: IBoxConstraints | undefined;
        shape?: IShapeBorder | undefined;
        sizeConstraints?: IBoxConstraints | undefined;
        smallSizeConstraints?: IBoxConstraints | undefined;
        splashColor?: IColor | undefined;
    }) {
        flutter.material.floatingActionButtonThemeData(this, props);
    }
    public static lerp(
        a: IFloatingActionButtonThemeData | undefined,
        b: IFloatingActionButtonThemeData | undefined,
        t: number
    ): IFloatingActionButtonThemeData | undefined {
        return flutter.material.floatingActionButtonThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        disabledElevation?: number | undefined;
        elevation?: number | undefined;
        enableFeedback?: boolean | undefined;
        extendedIconLabelSpacing?: number | undefined;
        extendedPadding?: IEdgeInsetsGeometry | undefined;
        extendedSizeConstraints?: IBoxConstraints | undefined;
        extendedTextStyle?: ITextStyle | undefined;
        focusColor?: IColor | undefined;
        focusElevation?: number | undefined;
        foregroundColor?: IColor | undefined;
        highlightElevation?: number | undefined;
        hoverColor?: IColor | undefined;
        hoverElevation?: number | undefined;
        largeSizeConstraints?: IBoxConstraints | undefined;
        shape?: IShapeBorder | undefined;
        sizeConstraints?: IBoxConstraints | undefined;
        smallSizeConstraints?: IBoxConstraints | undefined;
        splashColor?: IColor | undefined;
    }) => IFloatingActionButtonThemeData = undefined as any;
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
        disabledElevation?: number | undefined;
        elevation?: number | undefined;
        enableFeedback?: boolean | undefined;
        extendedIconLabelSpacing?: number | undefined;
        extendedPadding?: IEdgeInsetsGeometry | undefined;
        extendedSizeConstraints?: IBoxConstraints | undefined;
        extendedTextStyle?: ITextStyle | undefined;
        focusColor?: IColor | undefined;
        focusElevation?: number | undefined;
        foregroundColor?: IColor | undefined;
        highlightElevation?: number | undefined;
        hoverColor?: IColor | undefined;
        hoverElevation?: number | undefined;
        largeSizeConstraints?: IBoxConstraints | undefined;
        shape?: IShapeBorder | undefined;
        sizeConstraints?: IBoxConstraints | undefined;
        smallSizeConstraints?: IBoxConstraints | undefined;
        splashColor?: IColor | undefined;
    }): IFloatingActionButtonThemeData {
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
