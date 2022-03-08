import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { ITextStyle } from "../painting/textStyle";
import { IBuildContext } from "../widgets/buildContext";
declare const flutter: {
    material: {
        dialogTheme: (
            this: void,
            dialogTheme: IDialogTheme,
            props?: {
                alignment?: IAlignmentGeometry | undefined;
                backgroundColor?: IColor | undefined;
                contentTextStyle?: ITextStyle | undefined;
                elevation?: number | undefined;
                shape?: IShapeBorder | undefined;
                titleTextStyle?: ITextStyle | undefined;
            }
        ) => IDialogTheme;
        dialogThemeOf: (context: IBuildContext) => IDialogTheme;
        dialogThemeLerp: (
            a: IDialogTheme | undefined,
            b: IDialogTheme | undefined,
            t: number
        ) => IDialogTheme;
    };
};
export interface IDialogTheme {
    backgroundColor: IColor | undefined;
    elevation: number | undefined;
    shape: IShapeBorder | undefined;
    alignment: IAlignmentGeometry | undefined;
    titleTextStyle: ITextStyle | undefined;
    contentTextStyle: ITextStyle | undefined;
    copyWith: (props?: {
        alignment?: IAlignmentGeometry | undefined;
        backgroundColor?: IColor | undefined;
        contentTextStyle?: ITextStyle | undefined;
        elevation?: number | undefined;
        shape?: IShapeBorder | undefined;
        titleTextStyle?: ITextStyle | undefined;
    }) => IDialogTheme;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class DialogTheme implements IDiagnosticable {
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry | undefined =
        undefined as any;
    public readonly titleTextStyle: ITextStyle | undefined = undefined as any;
    public readonly contentTextStyle: ITextStyle | undefined = undefined as any;
    public constructor(props?: {
        alignment?: IAlignmentGeometry | undefined;
        backgroundColor?: IColor | undefined;
        contentTextStyle?: ITextStyle | undefined;
        elevation?: number | undefined;
        shape?: IShapeBorder | undefined;
        titleTextStyle?: ITextStyle | undefined;
    }) {
        flutter.material.dialogTheme(this, props);
    }
    public static of(context: IBuildContext): IDialogTheme {
        return flutter.material.dialogThemeOf(context);
    }
    public static lerp(
        a: IDialogTheme | undefined,
        b: IDialogTheme | undefined,
        t: number
    ): IDialogTheme {
        return flutter.material.dialogThemeLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        alignment?: IAlignmentGeometry | undefined;
        backgroundColor?: IColor | undefined;
        contentTextStyle?: ITextStyle | undefined;
        elevation?: number | undefined;
        shape?: IShapeBorder | undefined;
        titleTextStyle?: ITextStyle | undefined;
    }) => IDialogTheme = undefined as any;
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
        backgroundColor?: IColor | undefined;
        contentTextStyle?: ITextStyle | undefined;
        elevation?: number | undefined;
        shape?: IShapeBorder | undefined;
        titleTextStyle?: ITextStyle | undefined;
    }): IDialogTheme {
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
