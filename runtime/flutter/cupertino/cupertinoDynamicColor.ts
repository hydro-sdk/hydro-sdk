import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IBuildContext } from "../widgets/buildContext";
declare const flutter: {
    cupertino: {
        cupertinoDynamicColor: (
            this: void,
            cupertinoDynamicColor: ICupertinoDynamicColor,
            props: {
                debugLabel?: string | undefined;
                color: IColor;
                darkColor: IColor;
                darkElevatedColor: IColor;
                darkHighContrastColor: IColor;
                darkHighContrastElevatedColor: IColor;
                elevatedColor: IColor;
                highContrastColor: IColor;
                highContrastElevatedColor: IColor;
            }
        ) => ICupertinoDynamicColor;
        cupertinoDynamicColorResolve: (
            resolvable: IColor,
            context: IBuildContext
        ) => IColor;
        cupertinoDynamicColorMaybeResolve: (
            resolvable: IColor | undefined,
            context: IBuildContext
        ) => IColor | undefined;
    };
};
export interface ICupertinoDynamicColor {
    color: IColor;
    darkColor: IColor;
    highContrastColor: IColor;
    darkHighContrastColor: IColor;
    elevatedColor: IColor;
    darkElevatedColor: IColor;
    highContrastElevatedColor: IColor;
    darkHighContrastElevatedColor: IColor;
    value: number;
    getValue: () => number;
    resolveFrom: (context: IBuildContext) => ICupertinoDynamicColor;
    getHashCode: () => number;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    withAlpha: (a: number) => IColor;
    withOpacity: (opacity: number) => IColor;
    withRed: (r: number) => IColor;
    withGreen: (g: number) => IColor;
    withBlue: (b: number) => IColor;
    computeLuminance: () => number;
    getAlpha: () => number;
    getOpacity: () => number;
    getRed: () => number;
    getGreen: () => number;
    getBlue: () => number;
}
export class CupertinoDynamicColor implements IColor, IDiagnosticable {
    public readonly color: IColor = undefined as any;
    public readonly darkColor: IColor = undefined as any;
    public readonly highContrastColor: IColor = undefined as any;
    public readonly darkHighContrastColor: IColor = undefined as any;
    public readonly elevatedColor: IColor = undefined as any;
    public readonly darkElevatedColor: IColor = undefined as any;
    public readonly highContrastElevatedColor: IColor = undefined as any;
    public readonly darkHighContrastElevatedColor: IColor = undefined as any;
    public readonly value: number = undefined as any;
    public constructor(props: {
        debugLabel?: string | undefined;
        color: IColor;
        darkColor: IColor;
        darkElevatedColor: IColor;
        darkHighContrastColor: IColor;
        darkHighContrastElevatedColor: IColor;
        elevatedColor: IColor;
        highContrastColor: IColor;
        highContrastElevatedColor: IColor;
    }) {
        flutter.cupertino.cupertinoDynamicColor(this, props);
    }
    public static resolve(resolvable: IColor, context: IBuildContext): IColor {
        return flutter.cupertino.cupertinoDynamicColorResolve(
            resolvable,
            context
        );
    }
    public static maybeResolve(
        resolvable: IColor | undefined,
        context: IBuildContext
    ): IColor | undefined {
        return flutter.cupertino.cupertinoDynamicColorMaybeResolve(
            resolvable,
            context
        );
    }
    private readonly _dart_getValue: () => number = undefined as any;
    private readonly _dart_resolveFrom: (
        context: IBuildContext
    ) => ICupertinoDynamicColor = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_withAlpha: (a: number) => IColor = undefined as any;
    private readonly _dart_withOpacity: (opacity: number) => IColor =
        undefined as any;
    private readonly _dart_withRed: (r: number) => IColor = undefined as any;
    private readonly _dart_withGreen: (g: number) => IColor = undefined as any;
    private readonly _dart_withBlue: (b: number) => IColor = undefined as any;
    private readonly _dart_computeLuminance: () => number = undefined as any;
    private readonly _dart_getAlpha: () => number = undefined as any;
    private readonly _dart_getOpacity: () => number = undefined as any;
    private readonly _dart_getRed: () => number = undefined as any;
    private readonly _dart_getGreen: () => number = undefined as any;
    private readonly _dart_getBlue: () => number = undefined as any;
    public getValue(): number {
        return this._dart_getValue();
    }
    public resolveFrom(context: IBuildContext): ICupertinoDynamicColor {
        return this._dart_resolveFrom(context);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public withAlpha(a: number): IColor {
        return this._dart_withAlpha(a);
    }
    public withOpacity(opacity: number): IColor {
        return this._dart_withOpacity(opacity);
    }
    public withRed(r: number): IColor {
        return this._dart_withRed(r);
    }
    public withGreen(g: number): IColor {
        return this._dart_withGreen(g);
    }
    public withBlue(b: number): IColor {
        return this._dart_withBlue(b);
    }
    public computeLuminance(): number {
        return this._dart_computeLuminance();
    }
    public getAlpha(): number {
        return this._dart_getAlpha();
    }
    public getOpacity(): number {
        return this._dart_getOpacity();
    }
    public getRed(): number {
        return this._dart_getRed();
    }
    public getGreen(): number {
        return this._dart_getGreen();
    }
    public getBlue(): number {
        return this._dart_getBlue();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
