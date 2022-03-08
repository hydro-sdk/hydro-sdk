import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IShapeBorder } from "../painting/shapeBorder";
import { ITextStyle } from "../painting/textStyle";
import { ISystemUiOverlayStyle } from "../services/systemUiOverlayStyle";
import { IBuildContext } from "../widgets/buildContext";
import { IIconThemeData } from "../widgets/iconThemeData";
import { ITextTheme } from "./textTheme";
declare const flutter: {
    material: {
        appBarTheme: (
            this: void,
            appBarTheme: IAppBarTheme,
            props?: {
                actionsIconTheme?: IIconThemeData | undefined;
                backgroundColor?: IColor | undefined;
                backwardsCompatibility?: boolean | undefined;
                brightness?: Brightness | undefined;
                centerTitle?: boolean | undefined;
                color?: IColor | undefined;
                elevation?: number | undefined;
                foregroundColor?: IColor | undefined;
                iconTheme?: IIconThemeData | undefined;
                shadowColor?: IColor | undefined;
                shape?: IShapeBorder | undefined;
                systemOverlayStyle?: ISystemUiOverlayStyle | undefined;
                textTheme?: ITextTheme | undefined;
                titleSpacing?: number | undefined;
                titleTextStyle?: ITextStyle | undefined;
                toolbarHeight?: number | undefined;
                toolbarTextStyle?: ITextStyle | undefined;
            }
        ) => IAppBarTheme;
        appBarThemeOf: (context: IBuildContext) => IAppBarTheme;
        appBarThemeLerp: (
            a: IAppBarTheme | undefined,
            b: IAppBarTheme | undefined,
            t: number
        ) => IAppBarTheme;
    };
};
export interface IAppBarTheme {
    brightness: Brightness | undefined;
    backgroundColor: IColor | undefined;
    foregroundColor: IColor | undefined;
    elevation: number | undefined;
    shadowColor: IColor | undefined;
    shape: IShapeBorder | undefined;
    iconTheme: IIconThemeData | undefined;
    actionsIconTheme: IIconThemeData | undefined;
    textTheme: ITextTheme | undefined;
    centerTitle: boolean | undefined;
    titleSpacing: number | undefined;
    toolbarHeight: number | undefined;
    toolbarTextStyle: ITextStyle | undefined;
    titleTextStyle: ITextStyle | undefined;
    systemOverlayStyle: ISystemUiOverlayStyle | undefined;
    backwardsCompatibility: boolean | undefined;
    getColor: () => IColor | undefined;
    copyWith: (props?: {
        actionsIconTheme?: IIconThemeData | undefined;
        backgroundColor?: IColor | undefined;
        backwardsCompatibility?: boolean | undefined;
        brightness?: Brightness | undefined;
        centerTitle?: boolean | undefined;
        color?: IColor | undefined;
        elevation?: number | undefined;
        foregroundColor?: IColor | undefined;
        iconTheme?: IIconThemeData | undefined;
        shadowColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        systemOverlayStyle?: ISystemUiOverlayStyle | undefined;
        textTheme?: ITextTheme | undefined;
        titleSpacing?: number | undefined;
        titleTextStyle?: ITextStyle | undefined;
        toolbarHeight?: number | undefined;
        toolbarTextStyle?: ITextStyle | undefined;
    }) => IAppBarTheme;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class AppBarTheme implements IDiagnosticable {
    public readonly brightness: Brightness | undefined = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly foregroundColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly shadowColor: IColor | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly iconTheme: IIconThemeData | undefined = undefined as any;
    public readonly actionsIconTheme: IIconThemeData | undefined =
        undefined as any;
    public readonly textTheme: ITextTheme | undefined = undefined as any;
    public readonly centerTitle: boolean | undefined = undefined as any;
    public readonly titleSpacing: number | undefined = undefined as any;
    public readonly toolbarHeight: number | undefined = undefined as any;
    public readonly toolbarTextStyle: ITextStyle | undefined = undefined as any;
    public readonly titleTextStyle: ITextStyle | undefined = undefined as any;
    public readonly systemOverlayStyle: ISystemUiOverlayStyle | undefined =
        undefined as any;
    public readonly backwardsCompatibility: boolean | undefined =
        undefined as any;
    public constructor(props?: {
        actionsIconTheme?: IIconThemeData | undefined;
        backgroundColor?: IColor | undefined;
        backwardsCompatibility?: boolean | undefined;
        brightness?: Brightness | undefined;
        centerTitle?: boolean | undefined;
        color?: IColor | undefined;
        elevation?: number | undefined;
        foregroundColor?: IColor | undefined;
        iconTheme?: IIconThemeData | undefined;
        shadowColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        systemOverlayStyle?: ISystemUiOverlayStyle | undefined;
        textTheme?: ITextTheme | undefined;
        titleSpacing?: number | undefined;
        titleTextStyle?: ITextStyle | undefined;
        toolbarHeight?: number | undefined;
        toolbarTextStyle?: ITextStyle | undefined;
    }) {
        flutter.material.appBarTheme(this, props);
    }
    public static of(context: IBuildContext): IAppBarTheme {
        return flutter.material.appBarThemeOf(context);
    }
    public static lerp(
        a: IAppBarTheme | undefined,
        b: IAppBarTheme | undefined,
        t: number
    ): IAppBarTheme {
        return flutter.material.appBarThemeLerp(a, b, t);
    }
    private readonly _dart_getColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_copyWith: (props?: {
        actionsIconTheme?: IIconThemeData | undefined;
        backgroundColor?: IColor | undefined;
        backwardsCompatibility?: boolean | undefined;
        brightness?: Brightness | undefined;
        centerTitle?: boolean | undefined;
        color?: IColor | undefined;
        elevation?: number | undefined;
        foregroundColor?: IColor | undefined;
        iconTheme?: IIconThemeData | undefined;
        shadowColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        systemOverlayStyle?: ISystemUiOverlayStyle | undefined;
        textTheme?: ITextTheme | undefined;
        titleSpacing?: number | undefined;
        titleTextStyle?: ITextStyle | undefined;
        toolbarHeight?: number | undefined;
        toolbarTextStyle?: ITextStyle | undefined;
    }) => IAppBarTheme = undefined as any;
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
    public getColor(): IColor | undefined {
        return this._dart_getColor();
    }
    public copyWith(props?: {
        actionsIconTheme?: IIconThemeData | undefined;
        backgroundColor?: IColor | undefined;
        backwardsCompatibility?: boolean | undefined;
        brightness?: Brightness | undefined;
        centerTitle?: boolean | undefined;
        color?: IColor | undefined;
        elevation?: number | undefined;
        foregroundColor?: IColor | undefined;
        iconTheme?: IIconThemeData | undefined;
        shadowColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        systemOverlayStyle?: ISystemUiOverlayStyle | undefined;
        textTheme?: ITextTheme | undefined;
        titleSpacing?: number | undefined;
        titleTextStyle?: ITextStyle | undefined;
        toolbarHeight?: number | undefined;
        toolbarTextStyle?: ITextStyle | undefined;
    }): IAppBarTheme {
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
