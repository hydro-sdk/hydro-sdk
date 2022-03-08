import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IShapeBorder } from "../painting/shapeBorder";
import { ITextStyle } from "../painting/textStyle";
declare const flutter: {
    material: {
        popupMenuThemeData: (
            this: void,
            popupMenuThemeData: IPopupMenuThemeData,
            props?: {
                color?: IColor | undefined;
                elevation?: number | undefined;
                enableFeedback?: boolean | undefined;
                shape?: IShapeBorder | undefined;
                textStyle?: ITextStyle | undefined;
            }
        ) => IPopupMenuThemeData;
        popupMenuThemeDataLerp: (
            a: IPopupMenuThemeData | undefined,
            b: IPopupMenuThemeData | undefined,
            t: number
        ) => IPopupMenuThemeData | undefined;
    };
};
export interface IPopupMenuThemeData {
    color: IColor | undefined;
    shape: IShapeBorder | undefined;
    elevation: number | undefined;
    textStyle: ITextStyle | undefined;
    enableFeedback: boolean | undefined;
    copyWith: (props?: {
        color?: IColor | undefined;
        elevation?: number | undefined;
        enableFeedback?: boolean | undefined;
        shape?: IShapeBorder | undefined;
        textStyle?: ITextStyle | undefined;
    }) => IPopupMenuThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class PopupMenuThemeData implements IDiagnosticable {
    public readonly color: IColor | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly textStyle: ITextStyle | undefined = undefined as any;
    public readonly enableFeedback: boolean | undefined = undefined as any;
    public constructor(props?: {
        color?: IColor | undefined;
        elevation?: number | undefined;
        enableFeedback?: boolean | undefined;
        shape?: IShapeBorder | undefined;
        textStyle?: ITextStyle | undefined;
    }) {
        flutter.material.popupMenuThemeData(this, props);
    }
    public static lerp(
        a: IPopupMenuThemeData | undefined,
        b: IPopupMenuThemeData | undefined,
        t: number
    ): IPopupMenuThemeData | undefined {
        return flutter.material.popupMenuThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        color?: IColor | undefined;
        elevation?: number | undefined;
        enableFeedback?: boolean | undefined;
        shape?: IShapeBorder | undefined;
        textStyle?: ITextStyle | undefined;
    }) => IPopupMenuThemeData = undefined as any;
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
        color?: IColor | undefined;
        elevation?: number | undefined;
        enableFeedback?: boolean | undefined;
        shape?: IShapeBorder | undefined;
        textStyle?: ITextStyle | undefined;
    }): IPopupMenuThemeData {
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
