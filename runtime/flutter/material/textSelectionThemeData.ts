import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
declare const flutter: {
    material: {
        textSelectionThemeData: (
            this: void,
            textSelectionThemeData: ITextSelectionThemeData,
            props?: {
                cursorColor?: IColor | undefined;
                selectionColor?: IColor | undefined;
                selectionHandleColor?: IColor | undefined;
            }
        ) => ITextSelectionThemeData;
        textSelectionThemeDataLerp: (
            a: ITextSelectionThemeData | undefined,
            b: ITextSelectionThemeData | undefined,
            t: number
        ) => ITextSelectionThemeData | undefined;
    };
};
export interface ITextSelectionThemeData {
    cursorColor: IColor | undefined;
    selectionColor: IColor | undefined;
    selectionHandleColor: IColor | undefined;
    copyWith: (props?: {
        cursorColor?: IColor | undefined;
        selectionColor?: IColor | undefined;
        selectionHandleColor?: IColor | undefined;
    }) => ITextSelectionThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class TextSelectionThemeData implements IDiagnosticable {
    public readonly cursorColor: IColor | undefined = undefined as any;
    public readonly selectionColor: IColor | undefined = undefined as any;
    public readonly selectionHandleColor: IColor | undefined = undefined as any;
    public constructor(props?: {
        cursorColor?: IColor | undefined;
        selectionColor?: IColor | undefined;
        selectionHandleColor?: IColor | undefined;
    }) {
        flutter.material.textSelectionThemeData(this, props);
    }
    public static lerp(
        a: ITextSelectionThemeData | undefined,
        b: ITextSelectionThemeData | undefined,
        t: number
    ): ITextSelectionThemeData | undefined {
        return flutter.material.textSelectionThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        cursorColor?: IColor | undefined;
        selectionColor?: IColor | undefined;
        selectionHandleColor?: IColor | undefined;
    }) => ITextSelectionThemeData = undefined as any;
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
        cursorColor?: IColor | undefined;
        selectionColor?: IColor | undefined;
        selectionHandleColor?: IColor | undefined;
    }): ITextSelectionThemeData {
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
