import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IButtonStyle } from "./buttonStyle";
declare const flutter: {
    material: {
        textButtonThemeData: (
            this: void,
            textButtonThemeData: ITextButtonThemeData,
            props?: { style?: IButtonStyle | undefined }
        ) => ITextButtonThemeData;
        textButtonThemeDataLerp: (
            a: ITextButtonThemeData | undefined,
            b: ITextButtonThemeData | undefined,
            t: number
        ) => ITextButtonThemeData | undefined;
    };
};
export interface ITextButtonThemeData {
    style: IButtonStyle | undefined;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class TextButtonThemeData implements IDiagnosticable {
    public readonly style: IButtonStyle | undefined = undefined as any;
    public constructor(props?: { style?: IButtonStyle | undefined }) {
        flutter.material.textButtonThemeData(this, props);
    }
    public static lerp(
        a: ITextButtonThemeData | undefined,
        b: ITextButtonThemeData | undefined,
        t: number
    ): ITextButtonThemeData | undefined {
        return flutter.material.textButtonThemeDataLerp(a, b, t);
    }
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
