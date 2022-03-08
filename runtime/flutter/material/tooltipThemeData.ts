import { IDuration } from "../../dart/core/duration";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDecoration } from "../painting/decoration";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { ITextStyle } from "../painting/textStyle";
import { TooltipTriggerMode } from "./tooltipTriggerMode";
declare const flutter: {
    material: {
        tooltipThemeData: (
            this: void,
            tooltipThemeData: ITooltipThemeData,
            props?: {
                decoration?: IDecoration | undefined;
                enableFeedback?: boolean | undefined;
                excludeFromSemantics?: boolean | undefined;
                height?: number | undefined;
                margin?: IEdgeInsetsGeometry | undefined;
                padding?: IEdgeInsetsGeometry | undefined;
                preferBelow?: boolean | undefined;
                showDuration?: IDuration | undefined;
                textStyle?: ITextStyle | undefined;
                triggerMode?: TooltipTriggerMode | undefined;
                verticalOffset?: number | undefined;
                waitDuration?: IDuration | undefined;
            }
        ) => ITooltipThemeData;
        tooltipThemeDataLerp: (
            a: ITooltipThemeData | undefined,
            b: ITooltipThemeData | undefined,
            t: number
        ) => ITooltipThemeData | undefined;
    };
};
export interface ITooltipThemeData {
    height: number | undefined;
    padding: IEdgeInsetsGeometry | undefined;
    margin: IEdgeInsetsGeometry | undefined;
    verticalOffset: number | undefined;
    preferBelow: boolean | undefined;
    excludeFromSemantics: boolean | undefined;
    decoration: IDecoration | undefined;
    textStyle: ITextStyle | undefined;
    waitDuration: IDuration | undefined;
    showDuration: IDuration | undefined;
    triggerMode: TooltipTriggerMode | undefined;
    enableFeedback: boolean | undefined;
    copyWith: (props?: {
        decoration?: IDecoration | undefined;
        enableFeedback?: boolean | undefined;
        excludeFromSemantics?: boolean | undefined;
        height?: number | undefined;
        margin?: IEdgeInsetsGeometry | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        preferBelow?: boolean | undefined;
        showDuration?: IDuration | undefined;
        textStyle?: ITextStyle | undefined;
        triggerMode?: TooltipTriggerMode | undefined;
        verticalOffset?: number | undefined;
        waitDuration?: IDuration | undefined;
    }) => ITooltipThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class TooltipThemeData implements IDiagnosticable {
    public readonly height: number | undefined = undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly margin: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly verticalOffset: number | undefined = undefined as any;
    public readonly preferBelow: boolean | undefined = undefined as any;
    public readonly excludeFromSemantics: boolean | undefined =
        undefined as any;
    public readonly decoration: IDecoration | undefined = undefined as any;
    public readonly textStyle: ITextStyle | undefined = undefined as any;
    public readonly waitDuration: IDuration | undefined = undefined as any;
    public readonly showDuration: IDuration | undefined = undefined as any;
    public readonly triggerMode: TooltipTriggerMode | undefined =
        undefined as any;
    public readonly enableFeedback: boolean | undefined = undefined as any;
    public constructor(props?: {
        decoration?: IDecoration | undefined;
        enableFeedback?: boolean | undefined;
        excludeFromSemantics?: boolean | undefined;
        height?: number | undefined;
        margin?: IEdgeInsetsGeometry | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        preferBelow?: boolean | undefined;
        showDuration?: IDuration | undefined;
        textStyle?: ITextStyle | undefined;
        triggerMode?: TooltipTriggerMode | undefined;
        verticalOffset?: number | undefined;
        waitDuration?: IDuration | undefined;
    }) {
        flutter.material.tooltipThemeData(this, props);
    }
    public static lerp(
        a: ITooltipThemeData | undefined,
        b: ITooltipThemeData | undefined,
        t: number
    ): ITooltipThemeData | undefined {
        return flutter.material.tooltipThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        decoration?: IDecoration | undefined;
        enableFeedback?: boolean | undefined;
        excludeFromSemantics?: boolean | undefined;
        height?: number | undefined;
        margin?: IEdgeInsetsGeometry | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        preferBelow?: boolean | undefined;
        showDuration?: IDuration | undefined;
        textStyle?: ITextStyle | undefined;
        triggerMode?: TooltipTriggerMode | undefined;
        verticalOffset?: number | undefined;
        waitDuration?: IDuration | undefined;
    }) => ITooltipThemeData = undefined as any;
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
        decoration?: IDecoration | undefined;
        enableFeedback?: boolean | undefined;
        excludeFromSemantics?: boolean | undefined;
        height?: number | undefined;
        margin?: IEdgeInsetsGeometry | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        preferBelow?: boolean | undefined;
        showDuration?: IDuration | undefined;
        textStyle?: ITextStyle | undefined;
        triggerMode?: TooltipTriggerMode | undefined;
        verticalOffset?: number | undefined;
        waitDuration?: IDuration | undefined;
    }): ITooltipThemeData {
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
