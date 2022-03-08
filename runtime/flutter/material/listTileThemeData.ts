import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { ListTileStyle } from "./listTileStyle";
declare const flutter: {
    material: {
        listTileThemeData: (
            this: void,
            listTileThemeData: IListTileThemeData,
            props?: {
                contentPadding?: IEdgeInsetsGeometry | undefined;
                dense?: boolean | undefined;
                enableFeedback?: boolean | undefined;
                horizontalTitleGap?: number | undefined;
                iconColor?: IColor | undefined;
                minLeadingWidth?: number | undefined;
                minVerticalPadding?: number | undefined;
                selectedColor?: IColor | undefined;
                selectedTileColor?: IColor | undefined;
                shape?: IShapeBorder | undefined;
                style?: ListTileStyle | undefined;
                textColor?: IColor | undefined;
                tileColor?: IColor | undefined;
            }
        ) => IListTileThemeData;
        listTileThemeDataLerp: (
            a: IListTileThemeData | undefined,
            b: IListTileThemeData | undefined,
            t: number
        ) => IListTileThemeData | undefined;
    };
};
export interface IListTileThemeData {
    dense: boolean | undefined;
    shape: IShapeBorder | undefined;
    style: ListTileStyle | undefined;
    selectedColor: IColor | undefined;
    iconColor: IColor | undefined;
    textColor: IColor | undefined;
    contentPadding: IEdgeInsetsGeometry | undefined;
    tileColor: IColor | undefined;
    selectedTileColor: IColor | undefined;
    horizontalTitleGap: number | undefined;
    minVerticalPadding: number | undefined;
    minLeadingWidth: number | undefined;
    enableFeedback: boolean | undefined;
    copyWith: (props?: {
        contentPadding?: IEdgeInsetsGeometry | undefined;
        dense?: boolean | undefined;
        enableFeedback?: boolean | undefined;
        horizontalTitleGap?: number | undefined;
        iconColor?: IColor | undefined;
        minLeadingWidth?: number | undefined;
        minVerticalPadding?: number | undefined;
        selectedColor?: IColor | undefined;
        selectedTileColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        style?: ListTileStyle | undefined;
        textColor?: IColor | undefined;
        tileColor?: IColor | undefined;
    }) => IListTileThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class ListTileThemeData implements IDiagnosticable {
    public readonly dense: boolean | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly style: ListTileStyle | undefined = undefined as any;
    public readonly selectedColor: IColor | undefined = undefined as any;
    public readonly iconColor: IColor | undefined = undefined as any;
    public readonly textColor: IColor | undefined = undefined as any;
    public readonly contentPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly tileColor: IColor | undefined = undefined as any;
    public readonly selectedTileColor: IColor | undefined = undefined as any;
    public readonly horizontalTitleGap: number | undefined = undefined as any;
    public readonly minVerticalPadding: number | undefined = undefined as any;
    public readonly minLeadingWidth: number | undefined = undefined as any;
    public readonly enableFeedback: boolean | undefined = undefined as any;
    public constructor(props?: {
        contentPadding?: IEdgeInsetsGeometry | undefined;
        dense?: boolean | undefined;
        enableFeedback?: boolean | undefined;
        horizontalTitleGap?: number | undefined;
        iconColor?: IColor | undefined;
        minLeadingWidth?: number | undefined;
        minVerticalPadding?: number | undefined;
        selectedColor?: IColor | undefined;
        selectedTileColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        style?: ListTileStyle | undefined;
        textColor?: IColor | undefined;
        tileColor?: IColor | undefined;
    }) {
        flutter.material.listTileThemeData(this, props);
    }
    public static lerp(
        a: IListTileThemeData | undefined,
        b: IListTileThemeData | undefined,
        t: number
    ): IListTileThemeData | undefined {
        return flutter.material.listTileThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        contentPadding?: IEdgeInsetsGeometry | undefined;
        dense?: boolean | undefined;
        enableFeedback?: boolean | undefined;
        horizontalTitleGap?: number | undefined;
        iconColor?: IColor | undefined;
        minLeadingWidth?: number | undefined;
        minVerticalPadding?: number | undefined;
        selectedColor?: IColor | undefined;
        selectedTileColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        style?: ListTileStyle | undefined;
        textColor?: IColor | undefined;
        tileColor?: IColor | undefined;
    }) => IListTileThemeData = undefined as any;
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
        contentPadding?: IEdgeInsetsGeometry | undefined;
        dense?: boolean | undefined;
        enableFeedback?: boolean | undefined;
        horizontalTitleGap?: number | undefined;
        iconColor?: IColor | undefined;
        minLeadingWidth?: number | undefined;
        minVerticalPadding?: number | undefined;
        selectedColor?: IColor | undefined;
        selectedTileColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        style?: ListTileStyle | undefined;
        textColor?: IColor | undefined;
        tileColor?: IColor | undefined;
    }): IListTileThemeData {
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
