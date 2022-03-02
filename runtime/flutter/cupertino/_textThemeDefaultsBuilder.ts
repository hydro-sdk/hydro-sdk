import { IColor } from "../../dart/ui/color";
import { ITextStyle } from "../painting/textStyle";
import { IBuildContext } from "../widgets/buildContext";
declare const flutter: {
    cupertino: {
        _textThemeDefaultsBuilder: (
            this: void,
            _textThemeDefaultsBuilder: I_TextThemeDefaultsBuilder,
            labelColor: IColor,
            inactiveGrayColor: IColor
        ) => I_TextThemeDefaultsBuilder;
    };
};
export interface I_TextThemeDefaultsBuilder {
    labelColor: IColor;
    inactiveGrayColor: IColor;
    getTextStyle: () => ITextStyle;
    getTabLabelTextStyle: () => ITextStyle;
    getNavTitleTextStyle: () => ITextStyle;
    getNavLargeTitleTextStyle: () => ITextStyle;
    getPickerTextStyle: () => ITextStyle;
    getDateTimePickerTextStyle: () => ITextStyle;
    actionTextStyle: (props?: {
        primaryColor?: IColor | undefined;
    }) => ITextStyle;
    navActionTextStyle: (props?: {
        primaryColor?: IColor | undefined;
    }) => ITextStyle;
    resolveFrom: (context: IBuildContext) => I_TextThemeDefaultsBuilder;
}
export class _TextThemeDefaultsBuilder {
    public readonly labelColor: IColor = undefined as any;
    public readonly inactiveGrayColor: IColor = undefined as any;
    public constructor(labelColor: IColor, inactiveGrayColor: IColor) {
        flutter.cupertino._textThemeDefaultsBuilder(
            this,
            labelColor,
            inactiveGrayColor
        );
    }
    private readonly _dart_getTextStyle: () => ITextStyle = undefined as any;
    private readonly _dart_getTabLabelTextStyle: () => ITextStyle =
        undefined as any;
    private readonly _dart_getNavTitleTextStyle: () => ITextStyle =
        undefined as any;
    private readonly _dart_getNavLargeTitleTextStyle: () => ITextStyle =
        undefined as any;
    private readonly _dart_getPickerTextStyle: () => ITextStyle =
        undefined as any;
    private readonly _dart_getDateTimePickerTextStyle: () => ITextStyle =
        undefined as any;
    private readonly _dart_actionTextStyle: (props?: {
        primaryColor?: IColor | undefined;
    }) => ITextStyle = undefined as any;
    private readonly _dart_navActionTextStyle: (props?: {
        primaryColor?: IColor | undefined;
    }) => ITextStyle = undefined as any;
    private readonly _dart_resolveFrom: (
        context: IBuildContext
    ) => I_TextThemeDefaultsBuilder = undefined as any;
    public getTextStyle(): ITextStyle {
        return this._dart_getTextStyle();
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
    public getPickerTextStyle(): ITextStyle {
        return this._dart_getPickerTextStyle();
    }
    public getDateTimePickerTextStyle(): ITextStyle {
        return this._dart_getDateTimePickerTextStyle();
    }
    public actionTextStyle(props?: {
        primaryColor?: IColor | undefined;
    }): ITextStyle {
        return this._dart_actionTextStyle(props);
    }
    public navActionTextStyle(props?: {
        primaryColor?: IColor | undefined;
    }): ITextStyle {
        return this._dart_navActionTextStyle(props);
    }
    public resolveFrom(context: IBuildContext): I_TextThemeDefaultsBuilder {
        return this._dart_resolveFrom(context);
    }
}
