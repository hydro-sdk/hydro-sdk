import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITextStyle } from "../painting/textStyle";
import { IBuildContext } from "../widgets/buildContext";
import { CupertinoColors } from "./cupertinoColors";
declare const flutter: {
    cupertino: {
        cupertinoTextThemeData: (
            this: void,
            cupertinoTextThemeData: ICupertinoTextThemeData,
            props: {
                actionTextStyle?: ITextStyle | undefined;
                dateTimePickerTextStyle?: ITextStyle | undefined;
                navActionTextStyle?: ITextStyle | undefined;
                navLargeTitleTextStyle?: ITextStyle | undefined;
                navTitleTextStyle?: ITextStyle | undefined;
                pickerTextStyle?: ITextStyle | undefined;
                primaryColor: IColor;
                tabLabelTextStyle?: ITextStyle | undefined;
                textStyle?: ITextStyle | undefined;
            }
        ) => ICupertinoTextThemeData;
    };
};
export interface ICupertinoTextThemeData {
    getTextStyle: () => ITextStyle;
    getActionTextStyle: () => ITextStyle;
    getTabLabelTextStyle: () => ITextStyle;
    getNavTitleTextStyle: () => ITextStyle;
    getNavLargeTitleTextStyle: () => ITextStyle;
    getNavActionTextStyle: () => ITextStyle;
    getPickerTextStyle: () => ITextStyle;
    getDateTimePickerTextStyle: () => ITextStyle;
    resolveFrom: (context: IBuildContext) => ICupertinoTextThemeData;
    copyWith: (props?: {
        actionTextStyle?: ITextStyle | undefined;
        dateTimePickerTextStyle?: ITextStyle | undefined;
        navActionTextStyle?: ITextStyle | undefined;
        navLargeTitleTextStyle?: ITextStyle | undefined;
        navTitleTextStyle?: ITextStyle | undefined;
        pickerTextStyle?: ITextStyle | undefined;
        primaryColor?: IColor | undefined;
        tabLabelTextStyle?: ITextStyle | undefined;
        textStyle?: ITextStyle | undefined;
    }) => ICupertinoTextThemeData;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class CupertinoTextThemeData implements IDiagnosticable {
    public constructor(props: {
        actionTextStyle?: ITextStyle | undefined;
        dateTimePickerTextStyle?: ITextStyle | undefined;
        navActionTextStyle?: ITextStyle | undefined;
        navLargeTitleTextStyle?: ITextStyle | undefined;
        navTitleTextStyle?: ITextStyle | undefined;
        pickerTextStyle?: ITextStyle | undefined;
        primaryColor?: IColor;
        tabLabelTextStyle?: ITextStyle | undefined;
        textStyle?: ITextStyle | undefined;
    }) {
        flutter.cupertino.cupertinoTextThemeData(this, {
            ...cupertinoTextThemeDataDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getTextStyle: () => ITextStyle = undefined as any;
    private readonly _dart_getActionTextStyle: () => ITextStyle =
        undefined as any;
    private readonly _dart_getTabLabelTextStyle: () => ITextStyle =
        undefined as any;
    private readonly _dart_getNavTitleTextStyle: () => ITextStyle =
        undefined as any;
    private readonly _dart_getNavLargeTitleTextStyle: () => ITextStyle =
        undefined as any;
    private readonly _dart_getNavActionTextStyle: () => ITextStyle =
        undefined as any;
    private readonly _dart_getPickerTextStyle: () => ITextStyle =
        undefined as any;
    private readonly _dart_getDateTimePickerTextStyle: () => ITextStyle =
        undefined as any;
    private readonly _dart_resolveFrom: (
        context: IBuildContext
    ) => ICupertinoTextThemeData = undefined as any;
    private readonly _dart_copyWith: (props?: {
        actionTextStyle?: ITextStyle | undefined;
        dateTimePickerTextStyle?: ITextStyle | undefined;
        navActionTextStyle?: ITextStyle | undefined;
        navLargeTitleTextStyle?: ITextStyle | undefined;
        navTitleTextStyle?: ITextStyle | undefined;
        pickerTextStyle?: ITextStyle | undefined;
        primaryColor?: IColor | undefined;
        tabLabelTextStyle?: ITextStyle | undefined;
        textStyle?: ITextStyle | undefined;
    }) => ICupertinoTextThemeData = undefined as any;
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
    public getTextStyle(): ITextStyle {
        return this._dart_getTextStyle();
    }
    public getActionTextStyle(): ITextStyle {
        return this._dart_getActionTextStyle();
    }
    public getTabLabelTextStyle(): ITextStyle {
        return this._dart_getTabLabelTextStyle();
    }
    public getNavTitleTextStyle(): ITextStyle {
        return this._dart_getNavTitleTextStyle();
    }
    public getNavLargeTitleTextStyle(): ITextStyle {
        return this._dart_getNavLargeTitleTextStyle();
    }
    public getNavActionTextStyle(): ITextStyle {
        return this._dart_getNavActionTextStyle();
    }
    public getPickerTextStyle(): ITextStyle {
        return this._dart_getPickerTextStyle();
    }
    public getDateTimePickerTextStyle(): ITextStyle {
        return this._dart_getDateTimePickerTextStyle();
    }
    public resolveFrom(context: IBuildContext): ICupertinoTextThemeData {
        return this._dart_resolveFrom(context);
    }
    public copyWith(props?: {
        actionTextStyle?: ITextStyle | undefined;
        dateTimePickerTextStyle?: ITextStyle | undefined;
        navActionTextStyle?: ITextStyle | undefined;
        navLargeTitleTextStyle?: ITextStyle | undefined;
        navTitleTextStyle?: ITextStyle | undefined;
        pickerTextStyle?: ITextStyle | undefined;
        primaryColor?: IColor | undefined;
        tabLabelTextStyle?: ITextStyle | undefined;
        textStyle?: ITextStyle | undefined;
    }): ICupertinoTextThemeData {
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
}
const cupertinoTextThemeDataDefaultProps = {
    primaryColor: CupertinoColors.systemBlue,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
