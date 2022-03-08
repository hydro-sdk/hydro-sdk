import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { INotchedShape } from "../painting/notchedShape";
import { IBuildContext } from "../widgets/buildContext";
declare const flutter: {
    material: {
        bottomAppBarTheme: (
            this: void,
            bottomAppBarTheme: IBottomAppBarTheme,
            props?: {
                color?: IColor | undefined;
                elevation?: number | undefined;
                shape?: INotchedShape | undefined;
            }
        ) => IBottomAppBarTheme;
        bottomAppBarThemeOf: (context: IBuildContext) => IBottomAppBarTheme;
        bottomAppBarThemeLerp: (
            a: IBottomAppBarTheme | undefined,
            b: IBottomAppBarTheme | undefined,
            t: number
        ) => IBottomAppBarTheme;
    };
};
export interface IBottomAppBarTheme {
    color: IColor | undefined;
    elevation: number | undefined;
    shape: INotchedShape | undefined;
    copyWith: (props?: {
        color?: IColor | undefined;
        elevation?: number | undefined;
        shape?: INotchedShape | undefined;
    }) => IBottomAppBarTheme;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class BottomAppBarTheme implements IDiagnosticable {
    public readonly color: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly shape: INotchedShape | undefined = undefined as any;
    public constructor(props?: {
        color?: IColor | undefined;
        elevation?: number | undefined;
        shape?: INotchedShape | undefined;
    }) {
        flutter.material.bottomAppBarTheme(this, props);
    }
    public static of(context: IBuildContext): IBottomAppBarTheme {
        return flutter.material.bottomAppBarThemeOf(context);
    }
    public static lerp(
        a: IBottomAppBarTheme | undefined,
        b: IBottomAppBarTheme | undefined,
        t: number
    ): IBottomAppBarTheme {
        return flutter.material.bottomAppBarThemeLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        color?: IColor | undefined;
        elevation?: number | undefined;
        shape?: INotchedShape | undefined;
    }) => IBottomAppBarTheme = undefined as any;
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
        shape?: INotchedShape | undefined;
    }): IBottomAppBarTheme {
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
