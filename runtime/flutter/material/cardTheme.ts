import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { IBuildContext } from "../widgets/buildContext";
declare const flutter: {
    material: {
        cardTheme: (
            this: void,
            cardTheme: ICardTheme,
            props?: {
                clipBehavior?: Clip | undefined;
                color?: IColor | undefined;
                elevation?: number | undefined;
                margin?: IEdgeInsetsGeometry | undefined;
                shadowColor?: IColor | undefined;
                shape?: IShapeBorder | undefined;
            }
        ) => ICardTheme;
        cardThemeOf: (context: IBuildContext) => ICardTheme;
        cardThemeLerp: (
            a: ICardTheme | undefined,
            b: ICardTheme | undefined,
            t: number
        ) => ICardTheme;
    };
};
export interface ICardTheme {
    clipBehavior: Clip | undefined;
    color: IColor | undefined;
    shadowColor: IColor | undefined;
    elevation: number | undefined;
    margin: IEdgeInsetsGeometry | undefined;
    shape: IShapeBorder | undefined;
    copyWith: (props?: {
        clipBehavior?: Clip | undefined;
        color?: IColor | undefined;
        elevation?: number | undefined;
        margin?: IEdgeInsetsGeometry | undefined;
        shadowColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
    }) => ICardTheme;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class CardTheme implements IDiagnosticable {
    public readonly clipBehavior: Clip | undefined = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly shadowColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly margin: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public constructor(props?: {
        clipBehavior?: Clip | undefined;
        color?: IColor | undefined;
        elevation?: number | undefined;
        margin?: IEdgeInsetsGeometry | undefined;
        shadowColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
    }) {
        flutter.material.cardTheme(this, props);
    }
    public static of(context: IBuildContext): ICardTheme {
        return flutter.material.cardThemeOf(context);
    }
    public static lerp(
        a: ICardTheme | undefined,
        b: ICardTheme | undefined,
        t: number
    ): ICardTheme {
        return flutter.material.cardThemeLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        clipBehavior?: Clip | undefined;
        color?: IColor | undefined;
        elevation?: number | undefined;
        margin?: IEdgeInsetsGeometry | undefined;
        shadowColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
    }) => ICardTheme = undefined as any;
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
        clipBehavior?: Clip | undefined;
        color?: IColor | undefined;
        elevation?: number | undefined;
        margin?: IEdgeInsetsGeometry | undefined;
        shadowColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
    }): ICardTheme {
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
