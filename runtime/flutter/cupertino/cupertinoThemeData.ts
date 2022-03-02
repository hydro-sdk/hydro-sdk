import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IBuildContext } from "../widgets/buildContext";
import { ICupertinoTextThemeData } from "./cupertinoTextThemeData";
import { INoDefaultCupertinoThemeData } from "./noDefaultCupertinoThemeData";
declare const flutter: {
    cupertino: {
        cupertinoThemeData: (
            this: void,
            cupertinoThemeData: ICupertinoThemeData,
            props?: {
                barBackgroundColor?: IColor | undefined;
                brightness?: Brightness | undefined;
                primaryColor?: IColor | undefined;
                primaryContrastingColor?: IColor | undefined;
                scaffoldBackgroundColor?: IColor | undefined;
                textTheme?: ICupertinoTextThemeData | undefined;
            }
        ) => ICupertinoThemeData;
    };
};
export interface ICupertinoThemeData {
    brightness: Brightness | undefined;
    primaryColor: IColor | undefined;
    primaryContrastingColor: IColor | undefined;
    textTheme: ICupertinoTextThemeData | undefined;
    barBackgroundColor: IColor | undefined;
    scaffoldBackgroundColor: IColor | undefined;
    getPrimaryColor: () => IColor;
    getPrimaryContrastingColor: () => IColor;
    getTextTheme: () => ICupertinoTextThemeData;
    getBarBackgroundColor: () => IColor;
    getScaffoldBackgroundColor: () => IColor;
    noDefault: () => INoDefaultCupertinoThemeData;
    resolveFrom: (context: IBuildContext) => ICupertinoThemeData;
    copyWith: (props?: {
        barBackgroundColor?: IColor | undefined;
        brightness?: Brightness | undefined;
        primaryColor?: IColor | undefined;
        primaryContrastingColor?: IColor | undefined;
        scaffoldBackgroundColor?: IColor | undefined;
        textTheme?: ICupertinoTextThemeData | undefined;
    }) => ICupertinoThemeData;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    getHashCode: () => number;
}
export class CupertinoThemeData
    implements INoDefaultCupertinoThemeData, IDiagnosticable
{
    public readonly brightness: Brightness | undefined = undefined as any;
    public readonly primaryColor: IColor | undefined = undefined as any;
    public readonly primaryContrastingColor: IColor | undefined =
        undefined as any;
    public readonly textTheme: ICupertinoTextThemeData | undefined =
        undefined as any;
    public readonly barBackgroundColor: IColor | undefined = undefined as any;
    public readonly scaffoldBackgroundColor: IColor | undefined =
        undefined as any;
    public constructor(props?: {
        barBackgroundColor?: IColor | undefined;
        brightness?: Brightness | undefined;
        primaryColor?: IColor | undefined;
        primaryContrastingColor?: IColor | undefined;
        scaffoldBackgroundColor?: IColor | undefined;
        textTheme?: ICupertinoTextThemeData | undefined;
    }) {
        flutter.cupertino.cupertinoThemeData(this, props);
    }
    private readonly _dart_getPrimaryColor: () => IColor = undefined as any;
    private readonly _dart_getPrimaryContrastingColor: () => IColor =
        undefined as any;
    private readonly _dart_getTextTheme: () => ICupertinoTextThemeData =
        undefined as any;
    private readonly _dart_getBarBackgroundColor: () => IColor =
        undefined as any;
    private readonly _dart_getScaffoldBackgroundColor: () => IColor =
        undefined as any;
    private readonly _dart_noDefault: () => INoDefaultCupertinoThemeData =
        undefined as any;
    private readonly _dart_resolveFrom: (
        context: IBuildContext
    ) => ICupertinoThemeData = undefined as any;
    private readonly _dart_copyWith: (props?: {
        barBackgroundColor?: IColor | undefined;
        brightness?: Brightness | undefined;
        primaryColor?: IColor | undefined;
        primaryContrastingColor?: IColor | undefined;
        scaffoldBackgroundColor?: IColor | undefined;
        textTheme?: ICupertinoTextThemeData | undefined;
    }) => ICupertinoThemeData = undefined as any;
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
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getPrimaryColor(): IColor {
        return this._dart_getPrimaryColor();
    }
    public getPrimaryContrastingColor(): IColor {
        return this._dart_getPrimaryContrastingColor();
    }
    public getTextTheme(): ICupertinoTextThemeData {
        return this._dart_getTextTheme();
    }
    public getBarBackgroundColor(): IColor {
        return this._dart_getBarBackgroundColor();
    }
    public getScaffoldBackgroundColor(): IColor {
        return this._dart_getScaffoldBackgroundColor();
    }
    public noDefault(): INoDefaultCupertinoThemeData {
        return this._dart_noDefault();
    }
    public resolveFrom(context: IBuildContext): ICupertinoThemeData {
        return this._dart_resolveFrom(context);
    }
    public copyWith(props?: {
        barBackgroundColor?: IColor | undefined;
        brightness?: Brightness | undefined;
        primaryColor?: IColor | undefined;
        primaryContrastingColor?: IColor | undefined;
        scaffoldBackgroundColor?: IColor | undefined;
        textTheme?: ICupertinoTextThemeData | undefined;
    }): ICupertinoThemeData {
        return this._dart_copyWith(props);
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
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
