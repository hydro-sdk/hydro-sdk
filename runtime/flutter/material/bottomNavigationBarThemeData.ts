import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITextStyle } from "../painting/textStyle";
import { IIconThemeData } from "../widgets/iconThemeData";
import { BottomNavigationBarLandscapeLayout } from "./bottomNavigationBarLandscapeLayout";
import { BottomNavigationBarType } from "./bottomNavigationBarType";
declare const flutter: {
    material: {
        bottomNavigationBarThemeData: (
            this: void,
            bottomNavigationBarThemeData: IBottomNavigationBarThemeData,
            props?: {
                backgroundColor?: IColor | undefined;
                elevation?: number | undefined;
                enableFeedback?: boolean | undefined;
                landscapeLayout?:
                    | BottomNavigationBarLandscapeLayout
                    | undefined;
                selectedIconTheme?: IIconThemeData | undefined;
                selectedItemColor?: IColor | undefined;
                selectedLabelStyle?: ITextStyle | undefined;
                showSelectedLabels?: boolean | undefined;
                showUnselectedLabels?: boolean | undefined;
                type?: BottomNavigationBarType | undefined;
                unselectedIconTheme?: IIconThemeData | undefined;
                unselectedItemColor?: IColor | undefined;
                unselectedLabelStyle?: ITextStyle | undefined;
            }
        ) => IBottomNavigationBarThemeData;
        bottomNavigationBarThemeDataLerp: (
            a: IBottomNavigationBarThemeData | undefined,
            b: IBottomNavigationBarThemeData | undefined,
            t: number
        ) => IBottomNavigationBarThemeData;
    };
};
export interface IBottomNavigationBarThemeData {
    backgroundColor: IColor | undefined;
    elevation: number | undefined;
    selectedIconTheme: IIconThemeData | undefined;
    unselectedIconTheme: IIconThemeData | undefined;
    selectedItemColor: IColor | undefined;
    unselectedItemColor: IColor | undefined;
    selectedLabelStyle: ITextStyle | undefined;
    unselectedLabelStyle: ITextStyle | undefined;
    showSelectedLabels: boolean | undefined;
    showUnselectedLabels: boolean | undefined;
    type: BottomNavigationBarType | undefined;
    enableFeedback: boolean | undefined;
    landscapeLayout: BottomNavigationBarLandscapeLayout | undefined;
    copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        elevation?: number | undefined;
        enableFeedback?: boolean | undefined;
        landscapeLayout?: BottomNavigationBarLandscapeLayout | undefined;
        selectedIconTheme?: IIconThemeData | undefined;
        selectedItemColor?: IColor | undefined;
        selectedLabelStyle?: ITextStyle | undefined;
        showSelectedLabels?: boolean | undefined;
        showUnselectedLabels?: boolean | undefined;
        type?: BottomNavigationBarType | undefined;
        unselectedIconTheme?: IIconThemeData | undefined;
        unselectedItemColor?: IColor | undefined;
        unselectedLabelStyle?: ITextStyle | undefined;
    }) => IBottomNavigationBarThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class BottomNavigationBarThemeData implements IDiagnosticable {
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly selectedIconTheme: IIconThemeData | undefined =
        undefined as any;
    public readonly unselectedIconTheme: IIconThemeData | undefined =
        undefined as any;
    public readonly selectedItemColor: IColor | undefined = undefined as any;
    public readonly unselectedItemColor: IColor | undefined = undefined as any;
    public readonly selectedLabelStyle: ITextStyle | undefined =
        undefined as any;
    public readonly unselectedLabelStyle: ITextStyle | undefined =
        undefined as any;
    public readonly showSelectedLabels: boolean | undefined = undefined as any;
    public readonly showUnselectedLabels: boolean | undefined =
        undefined as any;
    public readonly type: BottomNavigationBarType | undefined =
        undefined as any;
    public readonly enableFeedback: boolean | undefined = undefined as any;
    public readonly landscapeLayout:
        | BottomNavigationBarLandscapeLayout
        | undefined = undefined as any;
    public constructor(props?: {
        backgroundColor?: IColor | undefined;
        elevation?: number | undefined;
        enableFeedback?: boolean | undefined;
        landscapeLayout?: BottomNavigationBarLandscapeLayout | undefined;
        selectedIconTheme?: IIconThemeData | undefined;
        selectedItemColor?: IColor | undefined;
        selectedLabelStyle?: ITextStyle | undefined;
        showSelectedLabels?: boolean | undefined;
        showUnselectedLabels?: boolean | undefined;
        type?: BottomNavigationBarType | undefined;
        unselectedIconTheme?: IIconThemeData | undefined;
        unselectedItemColor?: IColor | undefined;
        unselectedLabelStyle?: ITextStyle | undefined;
    }) {
        flutter.material.bottomNavigationBarThemeData(this, props);
    }
    public static lerp(
        a: IBottomNavigationBarThemeData | undefined,
        b: IBottomNavigationBarThemeData | undefined,
        t: number
    ): IBottomNavigationBarThemeData {
        return flutter.material.bottomNavigationBarThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        elevation?: number | undefined;
        enableFeedback?: boolean | undefined;
        landscapeLayout?: BottomNavigationBarLandscapeLayout | undefined;
        selectedIconTheme?: IIconThemeData | undefined;
        selectedItemColor?: IColor | undefined;
        selectedLabelStyle?: ITextStyle | undefined;
        showSelectedLabels?: boolean | undefined;
        showUnselectedLabels?: boolean | undefined;
        type?: BottomNavigationBarType | undefined;
        unselectedIconTheme?: IIconThemeData | undefined;
        unselectedItemColor?: IColor | undefined;
        unselectedLabelStyle?: ITextStyle | undefined;
    }) => IBottomNavigationBarThemeData = undefined as any;
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
        enableFeedback?: boolean | undefined;
        landscapeLayout?: BottomNavigationBarLandscapeLayout | undefined;
        selectedIconTheme?: IIconThemeData | undefined;
        selectedItemColor?: IColor | undefined;
        selectedLabelStyle?: ITextStyle | undefined;
        showSelectedLabels?: boolean | undefined;
        showUnselectedLabels?: boolean | undefined;
        type?: BottomNavigationBarType | undefined;
        unselectedIconTheme?: IIconThemeData | undefined;
        unselectedItemColor?: IColor | undefined;
        unselectedLabelStyle?: ITextStyle | undefined;
    }): IBottomNavigationBarThemeData {
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
