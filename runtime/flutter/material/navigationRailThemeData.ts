import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITextStyle } from "../painting/textStyle";
import { IIconThemeData } from "../widgets/iconThemeData";
import { NavigationRailLabelType } from "./navigationRailLabelType";
declare const flutter: {
    material: {
        navigationRailThemeData: (
            this: void,
            navigationRailThemeData: INavigationRailThemeData,
            props?: {
                backgroundColor?: IColor | undefined;
                elevation?: number | undefined;
                groupAlignment?: number | undefined;
                labelType?: NavigationRailLabelType | undefined;
                selectedIconTheme?: IIconThemeData | undefined;
                selectedLabelTextStyle?: ITextStyle | undefined;
                unselectedIconTheme?: IIconThemeData | undefined;
                unselectedLabelTextStyle?: ITextStyle | undefined;
            }
        ) => INavigationRailThemeData;
        navigationRailThemeDataLerp: (
            a: INavigationRailThemeData | undefined,
            b: INavigationRailThemeData | undefined,
            t: number
        ) => INavigationRailThemeData | undefined;
    };
};
export interface INavigationRailThemeData {
    backgroundColor: IColor | undefined;
    elevation: number | undefined;
    unselectedLabelTextStyle: ITextStyle | undefined;
    selectedLabelTextStyle: ITextStyle | undefined;
    unselectedIconTheme: IIconThemeData | undefined;
    selectedIconTheme: IIconThemeData | undefined;
    groupAlignment: number | undefined;
    labelType: NavigationRailLabelType | undefined;
    copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        elevation?: number | undefined;
        groupAlignment?: number | undefined;
        labelType?: NavigationRailLabelType | undefined;
        selectedIconTheme?: IIconThemeData | undefined;
        selectedLabelTextStyle?: ITextStyle | undefined;
        unselectedIconTheme?: IIconThemeData | undefined;
        unselectedLabelTextStyle?: ITextStyle | undefined;
    }) => INavigationRailThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class NavigationRailThemeData implements IDiagnosticable {
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly unselectedLabelTextStyle: ITextStyle | undefined =
        undefined as any;
    public readonly selectedLabelTextStyle: ITextStyle | undefined =
        undefined as any;
    public readonly unselectedIconTheme: IIconThemeData | undefined =
        undefined as any;
    public readonly selectedIconTheme: IIconThemeData | undefined =
        undefined as any;
    public readonly groupAlignment: number | undefined = undefined as any;
    public readonly labelType: NavigationRailLabelType | undefined =
        undefined as any;
    public constructor(props?: {
        backgroundColor?: IColor | undefined;
        elevation?: number | undefined;
        groupAlignment?: number | undefined;
        labelType?: NavigationRailLabelType | undefined;
        selectedIconTheme?: IIconThemeData | undefined;
        selectedLabelTextStyle?: ITextStyle | undefined;
        unselectedIconTheme?: IIconThemeData | undefined;
        unselectedLabelTextStyle?: ITextStyle | undefined;
    }) {
        flutter.material.navigationRailThemeData(this, props);
    }
    public static lerp(
        a: INavigationRailThemeData | undefined,
        b: INavigationRailThemeData | undefined,
        t: number
    ): INavigationRailThemeData | undefined {
        return flutter.material.navigationRailThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        elevation?: number | undefined;
        groupAlignment?: number | undefined;
        labelType?: NavigationRailLabelType | undefined;
        selectedIconTheme?: IIconThemeData | undefined;
        selectedLabelTextStyle?: ITextStyle | undefined;
        unselectedIconTheme?: IIconThemeData | undefined;
        unselectedLabelTextStyle?: ITextStyle | undefined;
    }) => INavigationRailThemeData = undefined as any;
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
        groupAlignment?: number | undefined;
        labelType?: NavigationRailLabelType | undefined;
        selectedIconTheme?: IIconThemeData | undefined;
        selectedLabelTextStyle?: ITextStyle | undefined;
        unselectedIconTheme?: IIconThemeData | undefined;
        unselectedLabelTextStyle?: ITextStyle | undefined;
    }): INavigationRailThemeData {
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
