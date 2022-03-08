import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IShapeBorder } from "../painting/shapeBorder";
declare const flutter: {
    material: {
        drawerThemeData: (
            this: void,
            drawerThemeData: IDrawerThemeData,
            props?: {
                backgroundColor?: IColor | undefined;
                elevation?: number | undefined;
                scrimColor?: IColor | undefined;
                shape?: IShapeBorder | undefined;
            }
        ) => IDrawerThemeData;
        drawerThemeDataLerp: (
            a: IDrawerThemeData | undefined,
            b: IDrawerThemeData | undefined,
            t: number
        ) => IDrawerThemeData | undefined;
    };
};
export interface IDrawerThemeData {
    backgroundColor: IColor | undefined;
    scrimColor: IColor | undefined;
    elevation: number | undefined;
    shape: IShapeBorder | undefined;
    copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        elevation?: number | undefined;
        scrimColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
    }) => IDrawerThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class DrawerThemeData implements IDiagnosticable {
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly scrimColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public constructor(props?: {
        backgroundColor?: IColor | undefined;
        elevation?: number | undefined;
        scrimColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
    }) {
        flutter.material.drawerThemeData(this, props);
    }
    public static lerp(
        a: IDrawerThemeData | undefined,
        b: IDrawerThemeData | undefined,
        t: number
    ): IDrawerThemeData | undefined {
        return flutter.material.drawerThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        elevation?: number | undefined;
        scrimColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
    }) => IDrawerThemeData = undefined as any;
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
        backgroundColor?: IColor | undefined;
        elevation?: number | undefined;
        scrimColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
    }): IDrawerThemeData {
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
