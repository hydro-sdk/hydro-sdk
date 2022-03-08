import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITextStyle } from "../painting/textStyle";
import { IIconThemeData } from "../widgets/iconThemeData";
import { IMaterialStateProperty } from "./materialStateProperty";
import { NavigationDestinationLabelBehavior } from "./navigationDestinationLabelBehavior";
declare const flutter: {
    material: {
        navigationBarThemeData: (
            this: void,
            navigationBarThemeData: INavigationBarThemeData,
            props?: {
                backgroundColor?: IColor | undefined;
                height?: number | undefined;
                iconTheme?:
                    | IMaterialStateProperty<IIconThemeData | undefined>
                    | undefined;
                indicatorColor?: IColor | undefined;
                labelBehavior?: NavigationDestinationLabelBehavior | undefined;
                labelTextStyle?:
                    | IMaterialStateProperty<ITextStyle | undefined>
                    | undefined;
            }
        ) => INavigationBarThemeData;
        navigationBarThemeDataLerp: (
            a: INavigationBarThemeData | undefined,
            b: INavigationBarThemeData | undefined,
            t: number
        ) => INavigationBarThemeData | undefined;
    };
};
export interface INavigationBarThemeData {
    height: number | undefined;
    backgroundColor: IColor | undefined;
    indicatorColor: IColor | undefined;
    labelTextStyle: IMaterialStateProperty<ITextStyle | undefined> | undefined;
    iconTheme: IMaterialStateProperty<IIconThemeData | undefined> | undefined;
    labelBehavior: NavigationDestinationLabelBehavior | undefined;
    copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        height?: number | undefined;
        iconTheme?:
            | IMaterialStateProperty<IIconThemeData | undefined>
            | undefined;
        indicatorColor?: IColor | undefined;
        labelBehavior?: NavigationDestinationLabelBehavior | undefined;
        labelTextStyle?:
            | IMaterialStateProperty<ITextStyle | undefined>
            | undefined;
    }) => INavigationBarThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class NavigationBarThemeData implements IDiagnosticable {
    public readonly height: number | undefined = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly indicatorColor: IColor | undefined = undefined as any;
    public readonly labelTextStyle:
        | IMaterialStateProperty<ITextStyle | undefined>
        | undefined = undefined as any;
    public readonly iconTheme:
        | IMaterialStateProperty<IIconThemeData | undefined>
        | undefined = undefined as any;
    public readonly labelBehavior:
        | NavigationDestinationLabelBehavior
        | undefined = undefined as any;
    public constructor(props?: {
        backgroundColor?: IColor | undefined;
        height?: number | undefined;
        iconTheme?:
            | IMaterialStateProperty<IIconThemeData | undefined>
            | undefined;
        indicatorColor?: IColor | undefined;
        labelBehavior?: NavigationDestinationLabelBehavior | undefined;
        labelTextStyle?:
            | IMaterialStateProperty<ITextStyle | undefined>
            | undefined;
    }) {
        flutter.material.navigationBarThemeData(this, props);
    }
    public static lerp(
        a: INavigationBarThemeData | undefined,
        b: INavigationBarThemeData | undefined,
        t: number
    ): INavigationBarThemeData | undefined {
        return flutter.material.navigationBarThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        height?: number | undefined;
        iconTheme?:
            | IMaterialStateProperty<IIconThemeData | undefined>
            | undefined;
        indicatorColor?: IColor | undefined;
        labelBehavior?: NavigationDestinationLabelBehavior | undefined;
        labelTextStyle?:
            | IMaterialStateProperty<ITextStyle | undefined>
            | undefined;
    }) => INavigationBarThemeData = undefined as any;
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
        height?: number | undefined;
        iconTheme?:
            | IMaterialStateProperty<IIconThemeData | undefined>
            | undefined;
        indicatorColor?: IColor | undefined;
        labelBehavior?: NavigationDestinationLabelBehavior | undefined;
        labelTextStyle?:
            | IMaterialStateProperty<ITextStyle | undefined>
            | undefined;
    }): INavigationBarThemeData {
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
