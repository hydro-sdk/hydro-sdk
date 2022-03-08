import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IShapeBorder } from "../painting/shapeBorder";
import { ITextStyle } from "../painting/textStyle";
import { SnackBarBehavior } from "./snackBarBehavior";
declare const flutter: {
    material: {
        snackBarThemeData: (
            this: void,
            snackBarThemeData: ISnackBarThemeData,
            props?: {
                actionTextColor?: IColor | undefined;
                backgroundColor?: IColor | undefined;
                behavior?: SnackBarBehavior | undefined;
                contentTextStyle?: ITextStyle | undefined;
                disabledActionTextColor?: IColor | undefined;
                elevation?: number | undefined;
                shape?: IShapeBorder | undefined;
            }
        ) => ISnackBarThemeData;
        snackBarThemeDataLerp: (
            a: ISnackBarThemeData | undefined,
            b: ISnackBarThemeData | undefined,
            t: number
        ) => ISnackBarThemeData;
    };
};
export interface ISnackBarThemeData {
    backgroundColor: IColor | undefined;
    actionTextColor: IColor | undefined;
    disabledActionTextColor: IColor | undefined;
    contentTextStyle: ITextStyle | undefined;
    elevation: number | undefined;
    shape: IShapeBorder | undefined;
    behavior: SnackBarBehavior | undefined;
    copyWith: (props?: {
        actionTextColor?: IColor | undefined;
        backgroundColor?: IColor | undefined;
        behavior?: SnackBarBehavior | undefined;
        contentTextStyle?: ITextStyle | undefined;
        disabledActionTextColor?: IColor | undefined;
        elevation?: number | undefined;
        shape?: IShapeBorder | undefined;
    }) => ISnackBarThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class SnackBarThemeData implements IDiagnosticable {
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly actionTextColor: IColor | undefined = undefined as any;
    public readonly disabledActionTextColor: IColor | undefined =
        undefined as any;
    public readonly contentTextStyle: ITextStyle | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly behavior: SnackBarBehavior | undefined = undefined as any;
    public constructor(props?: {
        actionTextColor?: IColor | undefined;
        backgroundColor?: IColor | undefined;
        behavior?: SnackBarBehavior | undefined;
        contentTextStyle?: ITextStyle | undefined;
        disabledActionTextColor?: IColor | undefined;
        elevation?: number | undefined;
        shape?: IShapeBorder | undefined;
    }) {
        flutter.material.snackBarThemeData(this, props);
    }
    public static lerp(
        a: ISnackBarThemeData | undefined,
        b: ISnackBarThemeData | undefined,
        t: number
    ): ISnackBarThemeData {
        return flutter.material.snackBarThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        actionTextColor?: IColor | undefined;
        backgroundColor?: IColor | undefined;
        behavior?: SnackBarBehavior | undefined;
        contentTextStyle?: ITextStyle | undefined;
        disabledActionTextColor?: IColor | undefined;
        elevation?: number | undefined;
        shape?: IShapeBorder | undefined;
    }) => ISnackBarThemeData = undefined as any;
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
        actionTextColor?: IColor | undefined;
        backgroundColor?: IColor | undefined;
        behavior?: SnackBarBehavior | undefined;
        contentTextStyle?: ITextStyle | undefined;
        disabledActionTextColor?: IColor | undefined;
        elevation?: number | undefined;
        shape?: IShapeBorder | undefined;
    }): ISnackBarThemeData {
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
