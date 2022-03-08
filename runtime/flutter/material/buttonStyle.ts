import { IDuration } from "../../dart/core/duration";
import { IColor } from "../../dart/ui/color";
import { ISize } from "../../dart/ui/size";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { IBorderSide } from "../painting/borderSide";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IOutlinedBorder } from "../painting/outlinedBorder";
import { ITextStyle } from "../painting/textStyle";
import { IMouseCursor } from "../services/mouseCursor";
import { IInteractiveInkFeatureFactory } from "./interactiveInkFeatureFactory";
import { IMaterialStateProperty } from "./materialStateProperty";
import { MaterialTapTargetSize } from "./materialTapTargetSize";
import { IVisualDensity } from "./visualDensity";
declare const flutter: {
    material: {
        buttonStyle: (
            this: void,
            buttonStyle: IButtonStyle,
            props?: {
                alignment?: IAlignmentGeometry | undefined;
                animationDuration?: IDuration | undefined;
                backgroundColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                elevation?:
                    | IMaterialStateProperty<number | undefined>
                    | undefined;
                enableFeedback?: boolean | undefined;
                fixedSize?:
                    | IMaterialStateProperty<ISize | undefined>
                    | undefined;
                foregroundColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                maximumSize?:
                    | IMaterialStateProperty<ISize | undefined>
                    | undefined;
                minimumSize?:
                    | IMaterialStateProperty<ISize | undefined>
                    | undefined;
                mouseCursor?:
                    | IMaterialStateProperty<IMouseCursor | undefined>
                    | undefined;
                overlayColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                padding?:
                    | IMaterialStateProperty<IEdgeInsetsGeometry | undefined>
                    | undefined;
                shadowColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                shape?:
                    | IMaterialStateProperty<IOutlinedBorder | undefined>
                    | undefined;
                side?:
                    | IMaterialStateProperty<IBorderSide | undefined>
                    | undefined;
                splashFactory?: IInteractiveInkFeatureFactory | undefined;
                tapTargetSize?: MaterialTapTargetSize | undefined;
                textStyle?:
                    | IMaterialStateProperty<ITextStyle | undefined>
                    | undefined;
                visualDensity?: IVisualDensity | undefined;
            }
        ) => IButtonStyle;
        buttonStyleLerp: (
            a: IButtonStyle | undefined,
            b: IButtonStyle | undefined,
            t: number
        ) => IButtonStyle | undefined;
    };
};
export interface IButtonStyle {
    textStyle: IMaterialStateProperty<ITextStyle | undefined> | undefined;
    backgroundColor: IMaterialStateProperty<IColor | undefined> | undefined;
    foregroundColor: IMaterialStateProperty<IColor | undefined> | undefined;
    overlayColor: IMaterialStateProperty<IColor | undefined> | undefined;
    shadowColor: IMaterialStateProperty<IColor | undefined> | undefined;
    elevation: IMaterialStateProperty<number | undefined> | undefined;
    padding:
        | IMaterialStateProperty<IEdgeInsetsGeometry | undefined>
        | undefined;
    minimumSize: IMaterialStateProperty<ISize | undefined> | undefined;
    fixedSize: IMaterialStateProperty<ISize | undefined> | undefined;
    maximumSize: IMaterialStateProperty<ISize | undefined> | undefined;
    side: IMaterialStateProperty<IBorderSide | undefined> | undefined;
    shape: IMaterialStateProperty<IOutlinedBorder | undefined> | undefined;
    mouseCursor: IMaterialStateProperty<IMouseCursor | undefined> | undefined;
    visualDensity: IVisualDensity | undefined;
    tapTargetSize: MaterialTapTargetSize | undefined;
    animationDuration: IDuration | undefined;
    enableFeedback: boolean | undefined;
    alignment: IAlignmentGeometry | undefined;
    splashFactory: IInteractiveInkFeatureFactory | undefined;
    copyWith: (props?: {
        alignment?: IAlignmentGeometry | undefined;
        animationDuration?: IDuration | undefined;
        backgroundColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        elevation?: IMaterialStateProperty<number | undefined> | undefined;
        enableFeedback?: boolean | undefined;
        fixedSize?: IMaterialStateProperty<ISize | undefined> | undefined;
        foregroundColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        maximumSize?: IMaterialStateProperty<ISize | undefined> | undefined;
        minimumSize?: IMaterialStateProperty<ISize | undefined> | undefined;
        mouseCursor?:
            | IMaterialStateProperty<IMouseCursor | undefined>
            | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        padding?:
            | IMaterialStateProperty<IEdgeInsetsGeometry | undefined>
            | undefined;
        shadowColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        shape?: IMaterialStateProperty<IOutlinedBorder | undefined> | undefined;
        side?: IMaterialStateProperty<IBorderSide | undefined> | undefined;
        splashFactory?: IInteractiveInkFeatureFactory | undefined;
        tapTargetSize?: MaterialTapTargetSize | undefined;
        textStyle?: IMaterialStateProperty<ITextStyle | undefined> | undefined;
        visualDensity?: IVisualDensity | undefined;
    }) => IButtonStyle;
    merge: (style?: IButtonStyle | undefined) => IButtonStyle;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class ButtonStyle implements IDiagnosticable {
    public readonly textStyle:
        | IMaterialStateProperty<ITextStyle | undefined>
        | undefined = undefined as any;
    public readonly backgroundColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly foregroundColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly overlayColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly shadowColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly elevation:
        | IMaterialStateProperty<number | undefined>
        | undefined = undefined as any;
    public readonly padding:
        | IMaterialStateProperty<IEdgeInsetsGeometry | undefined>
        | undefined = undefined as any;
    public readonly minimumSize:
        | IMaterialStateProperty<ISize | undefined>
        | undefined = undefined as any;
    public readonly fixedSize:
        | IMaterialStateProperty<ISize | undefined>
        | undefined = undefined as any;
    public readonly maximumSize:
        | IMaterialStateProperty<ISize | undefined>
        | undefined = undefined as any;
    public readonly side:
        | IMaterialStateProperty<IBorderSide | undefined>
        | undefined = undefined as any;
    public readonly shape:
        | IMaterialStateProperty<IOutlinedBorder | undefined>
        | undefined = undefined as any;
    public readonly mouseCursor:
        | IMaterialStateProperty<IMouseCursor | undefined>
        | undefined = undefined as any;
    public readonly visualDensity: IVisualDensity | undefined =
        undefined as any;
    public readonly tapTargetSize: MaterialTapTargetSize | undefined =
        undefined as any;
    public readonly animationDuration: IDuration | undefined = undefined as any;
    public readonly enableFeedback: boolean | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry | undefined =
        undefined as any;
    public readonly splashFactory: IInteractiveInkFeatureFactory | undefined =
        undefined as any;
    public constructor(props?: {
        alignment?: IAlignmentGeometry | undefined;
        animationDuration?: IDuration | undefined;
        backgroundColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        elevation?: IMaterialStateProperty<number | undefined> | undefined;
        enableFeedback?: boolean | undefined;
        fixedSize?: IMaterialStateProperty<ISize | undefined> | undefined;
        foregroundColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        maximumSize?: IMaterialStateProperty<ISize | undefined> | undefined;
        minimumSize?: IMaterialStateProperty<ISize | undefined> | undefined;
        mouseCursor?:
            | IMaterialStateProperty<IMouseCursor | undefined>
            | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        padding?:
            | IMaterialStateProperty<IEdgeInsetsGeometry | undefined>
            | undefined;
        shadowColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        shape?: IMaterialStateProperty<IOutlinedBorder | undefined> | undefined;
        side?: IMaterialStateProperty<IBorderSide | undefined> | undefined;
        splashFactory?: IInteractiveInkFeatureFactory | undefined;
        tapTargetSize?: MaterialTapTargetSize | undefined;
        textStyle?: IMaterialStateProperty<ITextStyle | undefined> | undefined;
        visualDensity?: IVisualDensity | undefined;
    }) {
        flutter.material.buttonStyle(this, props);
    }
    public static lerp(
        a: IButtonStyle | undefined,
        b: IButtonStyle | undefined,
        t: number
    ): IButtonStyle | undefined {
        return flutter.material.buttonStyleLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        alignment?: IAlignmentGeometry | undefined;
        animationDuration?: IDuration | undefined;
        backgroundColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        elevation?: IMaterialStateProperty<number | undefined> | undefined;
        enableFeedback?: boolean | undefined;
        fixedSize?: IMaterialStateProperty<ISize | undefined> | undefined;
        foregroundColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        maximumSize?: IMaterialStateProperty<ISize | undefined> | undefined;
        minimumSize?: IMaterialStateProperty<ISize | undefined> | undefined;
        mouseCursor?:
            | IMaterialStateProperty<IMouseCursor | undefined>
            | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        padding?:
            | IMaterialStateProperty<IEdgeInsetsGeometry | undefined>
            | undefined;
        shadowColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        shape?: IMaterialStateProperty<IOutlinedBorder | undefined> | undefined;
        side?: IMaterialStateProperty<IBorderSide | undefined> | undefined;
        splashFactory?: IInteractiveInkFeatureFactory | undefined;
        tapTargetSize?: MaterialTapTargetSize | undefined;
        textStyle?: IMaterialStateProperty<ITextStyle | undefined> | undefined;
        visualDensity?: IVisualDensity | undefined;
    }) => IButtonStyle = undefined as any;
    private readonly _dart_merge: (
        style?: IButtonStyle | undefined
    ) => IButtonStyle = undefined as any;
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
        alignment?: IAlignmentGeometry | undefined;
        animationDuration?: IDuration | undefined;
        backgroundColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        elevation?: IMaterialStateProperty<number | undefined> | undefined;
        enableFeedback?: boolean | undefined;
        fixedSize?: IMaterialStateProperty<ISize | undefined> | undefined;
        foregroundColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        maximumSize?: IMaterialStateProperty<ISize | undefined> | undefined;
        minimumSize?: IMaterialStateProperty<ISize | undefined> | undefined;
        mouseCursor?:
            | IMaterialStateProperty<IMouseCursor | undefined>
            | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        padding?:
            | IMaterialStateProperty<IEdgeInsetsGeometry | undefined>
            | undefined;
        shadowColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        shape?: IMaterialStateProperty<IOutlinedBorder | undefined> | undefined;
        side?: IMaterialStateProperty<IBorderSide | undefined> | undefined;
        splashFactory?: IInteractiveInkFeatureFactory | undefined;
        tapTargetSize?: MaterialTapTargetSize | undefined;
        textStyle?: IMaterialStateProperty<ITextStyle | undefined> | undefined;
        visualDensity?: IVisualDensity | undefined;
    }): IButtonStyle {
        return this._dart_copyWith(props);
    }
    public merge(style?: IButtonStyle | undefined): IButtonStyle {
        return this._dart_merge(style);
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
