import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
declare const flutter: {
    material: {
        progressIndicatorThemeData: (
            this: void,
            progressIndicatorThemeData: IProgressIndicatorThemeData,
            props?: {
                circularTrackColor?: IColor | undefined;
                color?: IColor | undefined;
                linearMinHeight?: number | undefined;
                linearTrackColor?: IColor | undefined;
                refreshBackgroundColor?: IColor | undefined;
            }
        ) => IProgressIndicatorThemeData;
        progressIndicatorThemeDataLerp: (
            a: IProgressIndicatorThemeData | undefined,
            b: IProgressIndicatorThemeData | undefined,
            t: number
        ) => IProgressIndicatorThemeData | undefined;
    };
};
export interface IProgressIndicatorThemeData {
    color: IColor | undefined;
    linearTrackColor: IColor | undefined;
    linearMinHeight: number | undefined;
    circularTrackColor: IColor | undefined;
    refreshBackgroundColor: IColor | undefined;
    copyWith: (props?: {
        circularTrackColor?: IColor | undefined;
        color?: IColor | undefined;
        linearMinHeight?: number | undefined;
        linearTrackColor?: IColor | undefined;
        refreshBackgroundColor?: IColor | undefined;
    }) => IProgressIndicatorThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class ProgressIndicatorThemeData implements IDiagnosticable {
    public readonly color: IColor | undefined = undefined as any;
    public readonly linearTrackColor: IColor | undefined = undefined as any;
    public readonly linearMinHeight: number | undefined = undefined as any;
    public readonly circularTrackColor: IColor | undefined = undefined as any;
    public readonly refreshBackgroundColor: IColor | undefined =
        undefined as any;
    public constructor(props?: {
        circularTrackColor?: IColor | undefined;
        color?: IColor | undefined;
        linearMinHeight?: number | undefined;
        linearTrackColor?: IColor | undefined;
        refreshBackgroundColor?: IColor | undefined;
    }) {
        flutter.material.progressIndicatorThemeData(this, props);
    }
    public static lerp(
        a: IProgressIndicatorThemeData | undefined,
        b: IProgressIndicatorThemeData | undefined,
        t: number
    ): IProgressIndicatorThemeData | undefined {
        return flutter.material.progressIndicatorThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        circularTrackColor?: IColor | undefined;
        color?: IColor | undefined;
        linearMinHeight?: number | undefined;
        linearTrackColor?: IColor | undefined;
        refreshBackgroundColor?: IColor | undefined;
    }) => IProgressIndicatorThemeData = undefined as any;
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
        circularTrackColor?: IColor | undefined;
        color?: IColor | undefined;
        linearMinHeight?: number | undefined;
        linearTrackColor?: IColor | undefined;
        refreshBackgroundColor?: IColor | undefined;
    }): IProgressIndicatorThemeData {
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
