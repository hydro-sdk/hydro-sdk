import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDecoration } from "../painting/decoration";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { ITextStyle } from "../painting/textStyle";
import { IBuildContext } from "../widgets/buildContext";
import { TabBarIndicatorSize } from "./tabBarIndicatorSize";
declare const flutter: {
    material: {
        tabBarTheme: (
            this: void,
            tabBarTheme: ITabBarTheme,
            props?: {
                indicator?: IDecoration | undefined;
                indicatorSize?: TabBarIndicatorSize | undefined;
                labelColor?: IColor | undefined;
                labelPadding?: IEdgeInsetsGeometry | undefined;
                labelStyle?: ITextStyle | undefined;
                unselectedLabelColor?: IColor | undefined;
                unselectedLabelStyle?: ITextStyle | undefined;
            }
        ) => ITabBarTheme;
        tabBarThemeOf: (context: IBuildContext) => ITabBarTheme;
        tabBarThemeLerp: (
            a: ITabBarTheme,
            b: ITabBarTheme,
            t: number
        ) => ITabBarTheme;
    };
};
export interface ITabBarTheme {
    indicator: IDecoration | undefined;
    indicatorSize: TabBarIndicatorSize | undefined;
    labelColor: IColor | undefined;
    labelPadding: IEdgeInsetsGeometry | undefined;
    labelStyle: ITextStyle | undefined;
    unselectedLabelColor: IColor | undefined;
    unselectedLabelStyle: ITextStyle | undefined;
    copyWith: (props?: {
        indicator?: IDecoration | undefined;
        indicatorSize?: TabBarIndicatorSize | undefined;
        labelColor?: IColor | undefined;
        labelPadding?: IEdgeInsetsGeometry | undefined;
        labelStyle?: ITextStyle | undefined;
        unselectedLabelColor?: IColor | undefined;
        unselectedLabelStyle?: ITextStyle | undefined;
    }) => ITabBarTheme;
    getHashCode: () => number;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}
export class TabBarTheme implements IDiagnosticable {
    public readonly indicator: IDecoration | undefined = undefined as any;
    public readonly indicatorSize: TabBarIndicatorSize | undefined =
        undefined as any;
    public readonly labelColor: IColor | undefined = undefined as any;
    public readonly labelPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly labelStyle: ITextStyle | undefined = undefined as any;
    public readonly unselectedLabelColor: IColor | undefined = undefined as any;
    public readonly unselectedLabelStyle: ITextStyle | undefined =
        undefined as any;
    public constructor(props?: {
        indicator?: IDecoration | undefined;
        indicatorSize?: TabBarIndicatorSize | undefined;
        labelColor?: IColor | undefined;
        labelPadding?: IEdgeInsetsGeometry | undefined;
        labelStyle?: ITextStyle | undefined;
        unselectedLabelColor?: IColor | undefined;
        unselectedLabelStyle?: ITextStyle | undefined;
    }) {
        flutter.material.tabBarTheme(this, props);
    }
    public static of(context: IBuildContext): ITabBarTheme {
        return flutter.material.tabBarThemeOf(context);
    }
    public static lerp(
        a: ITabBarTheme,
        b: ITabBarTheme,
        t: number
    ): ITabBarTheme {
        return flutter.material.tabBarThemeLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        indicator?: IDecoration | undefined;
        indicatorSize?: TabBarIndicatorSize | undefined;
        labelColor?: IColor | undefined;
        labelPadding?: IEdgeInsetsGeometry | undefined;
        labelStyle?: ITextStyle | undefined;
        unselectedLabelColor?: IColor | undefined;
        unselectedLabelStyle?: ITextStyle | undefined;
    }) => ITabBarTheme = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    public copyWith(props?: {
        indicator?: IDecoration | undefined;
        indicatorSize?: TabBarIndicatorSize | undefined;
        labelColor?: IColor | undefined;
        labelPadding?: IEdgeInsetsGeometry | undefined;
        labelStyle?: ITextStyle | undefined;
        unselectedLabelColor?: IColor | undefined;
        unselectedLabelStyle?: ITextStyle | undefined;
    }): ITabBarTheme {
        return this._dart_copyWith(props);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
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
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
