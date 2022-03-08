import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { VerticalDirection } from "../painting/verticalDirection";
import { MainAxisAlignment } from "../rendering/mainAxisAlignment";
import { MainAxisSize } from "../rendering/mainAxisSize";
import { ButtonBarLayoutBehavior } from "./buttonBarLayoutBehavior";
import { ButtonTextTheme } from "./buttonTextTheme";
declare const flutter: {
    material: {
        buttonBarThemeData: (
            this: void,
            buttonBarThemeData: IButtonBarThemeData,
            props?: {
                alignment?: MainAxisAlignment | undefined;
                buttonAlignedDropdown?: boolean | undefined;
                buttonHeight?: number | undefined;
                buttonMinWidth?: number | undefined;
                buttonPadding?: IEdgeInsetsGeometry | undefined;
                buttonTextTheme?: ButtonTextTheme | undefined;
                layoutBehavior?: ButtonBarLayoutBehavior | undefined;
                mainAxisSize?: MainAxisSize | undefined;
                overflowDirection?: VerticalDirection | undefined;
            }
        ) => IButtonBarThemeData;
        buttonBarThemeDataLerp: (
            a: IButtonBarThemeData | undefined,
            b: IButtonBarThemeData | undefined,
            t: number
        ) => IButtonBarThemeData | undefined;
    };
};
export interface IButtonBarThemeData {
    alignment: MainAxisAlignment | undefined;
    mainAxisSize: MainAxisSize | undefined;
    buttonTextTheme: ButtonTextTheme | undefined;
    buttonMinWidth: number | undefined;
    buttonHeight: number | undefined;
    buttonPadding: IEdgeInsetsGeometry | undefined;
    buttonAlignedDropdown: boolean | undefined;
    layoutBehavior: ButtonBarLayoutBehavior | undefined;
    overflowDirection: VerticalDirection | undefined;
    copyWith: (props?: {
        alignment?: MainAxisAlignment | undefined;
        buttonAlignedDropdown?: boolean | undefined;
        buttonHeight?: number | undefined;
        buttonMinWidth?: number | undefined;
        buttonPadding?: IEdgeInsetsGeometry | undefined;
        buttonTextTheme?: ButtonTextTheme | undefined;
        layoutBehavior?: ButtonBarLayoutBehavior | undefined;
        mainAxisSize?: MainAxisSize | undefined;
        overflowDirection?: VerticalDirection | undefined;
    }) => IButtonBarThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class ButtonBarThemeData implements IDiagnosticable {
    public readonly alignment: MainAxisAlignment | undefined = undefined as any;
    public readonly mainAxisSize: MainAxisSize | undefined = undefined as any;
    public readonly buttonTextTheme: ButtonTextTheme | undefined =
        undefined as any;
    public readonly buttonMinWidth: number | undefined = undefined as any;
    public readonly buttonHeight: number | undefined = undefined as any;
    public readonly buttonPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly buttonAlignedDropdown: boolean | undefined =
        undefined as any;
    public readonly layoutBehavior: ButtonBarLayoutBehavior | undefined =
        undefined as any;
    public readonly overflowDirection: VerticalDirection | undefined =
        undefined as any;
    public constructor(props?: {
        alignment?: MainAxisAlignment | undefined;
        buttonAlignedDropdown?: boolean | undefined;
        buttonHeight?: number | undefined;
        buttonMinWidth?: number | undefined;
        buttonPadding?: IEdgeInsetsGeometry | undefined;
        buttonTextTheme?: ButtonTextTheme | undefined;
        layoutBehavior?: ButtonBarLayoutBehavior | undefined;
        mainAxisSize?: MainAxisSize | undefined;
        overflowDirection?: VerticalDirection | undefined;
    }) {
        flutter.material.buttonBarThemeData(this, props);
    }
    public static lerp(
        a: IButtonBarThemeData | undefined,
        b: IButtonBarThemeData | undefined,
        t: number
    ): IButtonBarThemeData | undefined {
        return flutter.material.buttonBarThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        alignment?: MainAxisAlignment | undefined;
        buttonAlignedDropdown?: boolean | undefined;
        buttonHeight?: number | undefined;
        buttonMinWidth?: number | undefined;
        buttonPadding?: IEdgeInsetsGeometry | undefined;
        buttonTextTheme?: ButtonTextTheme | undefined;
        layoutBehavior?: ButtonBarLayoutBehavior | undefined;
        mainAxisSize?: MainAxisSize | undefined;
        overflowDirection?: VerticalDirection | undefined;
    }) => IButtonBarThemeData = undefined as any;
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
        alignment?: MainAxisAlignment | undefined;
        buttonAlignedDropdown?: boolean | undefined;
        buttonHeight?: number | undefined;
        buttonMinWidth?: number | undefined;
        buttonPadding?: IEdgeInsetsGeometry | undefined;
        buttonTextTheme?: ButtonTextTheme | undefined;
        layoutBehavior?: ButtonBarLayoutBehavior | undefined;
        mainAxisSize?: MainAxisSize | undefined;
        overflowDirection?: VerticalDirection | undefined;
    }): IButtonBarThemeData {
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
