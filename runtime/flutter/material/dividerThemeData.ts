import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
declare const flutter: {
    material: {
        dividerThemeData: (
            this: void,
            dividerThemeData: IDividerThemeData,
            props?: {
                color?: IColor | undefined;
                endIndent?: number | undefined;
                indent?: number | undefined;
                space?: number | undefined;
                thickness?: number | undefined;
            }
        ) => IDividerThemeData;
        dividerThemeDataLerp: (
            a: IDividerThemeData | undefined,
            b: IDividerThemeData | undefined,
            t: number
        ) => IDividerThemeData;
    };
};
export interface IDividerThemeData {
    color: IColor | undefined;
    space: number | undefined;
    thickness: number | undefined;
    indent: number | undefined;
    endIndent: number | undefined;
    copyWith: (props?: {
        color?: IColor | undefined;
        endIndent?: number | undefined;
        indent?: number | undefined;
        space?: number | undefined;
        thickness?: number | undefined;
    }) => IDividerThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class DividerThemeData implements IDiagnosticable {
    public readonly color: IColor | undefined = undefined as any;
    public readonly space: number | undefined = undefined as any;
    public readonly thickness: number | undefined = undefined as any;
    public readonly indent: number | undefined = undefined as any;
    public readonly endIndent: number | undefined = undefined as any;
    public constructor(props?: {
        color?: IColor | undefined;
        endIndent?: number | undefined;
        indent?: number | undefined;
        space?: number | undefined;
        thickness?: number | undefined;
    }) {
        flutter.material.dividerThemeData(this, props);
    }
    public static lerp(
        a: IDividerThemeData | undefined,
        b: IDividerThemeData | undefined,
        t: number
    ): IDividerThemeData {
        return flutter.material.dividerThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        color?: IColor | undefined;
        endIndent?: number | undefined;
        indent?: number | undefined;
        space?: number | undefined;
        thickness?: number | undefined;
    }) => IDividerThemeData = undefined as any;
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
        endIndent?: number | undefined;
        indent?: number | undefined;
        space?: number | undefined;
        thickness?: number | undefined;
    }): IDividerThemeData {
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
