import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
import { INoDefaultCupertinoThemeData } from "../cupertino/noDefaultCupertinoThemeData";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { TargetPlatform } from "../foundation/targetPlatform";
import { AndroidOverscrollIndicator } from "../widgets/androidOverscrollIndicator";
import { IIconThemeData } from "../widgets/iconThemeData";
import { IAppBarTheme } from "./appBarTheme";
import { IBottomAppBarTheme } from "./bottomAppBarTheme";
import { IBottomNavigationBarThemeData } from "./bottomNavigationBarThemeData";
import { IBottomSheetThemeData } from "./bottomSheetThemeData";
import { IButtonBarThemeData } from "./buttonBarThemeData";
import { IButtonThemeData } from "./buttonThemeData";
import { ICardTheme } from "./cardTheme";
import { ICheckboxThemeData } from "./checkboxThemeData";
import { IChipThemeData } from "./chipThemeData";
import { IColorScheme } from "./colorScheme";
import { IDataTableThemeData } from "./dataTableThemeData";
import { IDialogTheme } from "./dialogTheme";
import { IDividerThemeData } from "./dividerThemeData";
import { IDrawerThemeData } from "./drawerThemeData";
import { IElevatedButtonThemeData } from "./elevatedButtonThemeData";
import { IFloatingActionButtonThemeData } from "./floatingActionButtonThemeData";
import { IInputDecorationTheme } from "./inputDecorationTheme";
import { IInteractiveInkFeatureFactory } from "./interactiveInkFeatureFactory";
import { IListTileThemeData } from "./listTileThemeData";
import { IMaterialBannerThemeData } from "./materialBannerThemeData";
import { IMaterialColor } from "./materialColor";
import { MaterialTapTargetSize } from "./materialTapTargetSize";
import { INavigationBarThemeData } from "./navigationBarThemeData";
import { INavigationRailThemeData } from "./navigationRailThemeData";
import { IOutlinedButtonThemeData } from "./outlinedButtonThemeData";
import { IPageTransitionsTheme } from "./pageTransitionsTheme";
import { IPopupMenuThemeData } from "./popupMenuThemeData";
import { IProgressIndicatorThemeData } from "./progressIndicatorThemeData";
import { IRadioThemeData } from "./radioThemeData";
import { IScrollbarThemeData } from "./scrollbarThemeData";
import { ISliderThemeData } from "./sliderThemeData";
import { ISnackBarThemeData } from "./snackBarThemeData";
import { ISwitchThemeData } from "./switchThemeData";
import { ITabBarTheme } from "./tabBarTheme";
import { ITextButtonThemeData } from "./textButtonThemeData";
import { ITextSelectionThemeData } from "./textSelectionThemeData";
import { ITextTheme } from "./textTheme";
import { ITimePickerThemeData } from "./timePickerThemeData";
import { IToggleButtonsThemeData } from "./toggleButtonsThemeData";
import { ITooltipThemeData } from "./tooltipThemeData";
import { ITypography } from "./typography";
import { IVisualDensity } from "./visualDensity";
declare const flutter: {
    material: {
        themeData: (
            this: void,
            themeData: IThemeData,
            props?: {
                accentColor?: IColor | undefined;
                accentColorBrightness?: Brightness | undefined;
                accentIconTheme?: IIconThemeData | undefined;
                accentTextTheme?: ITextTheme | undefined;
                androidOverscrollIndicator?:
                    | AndroidOverscrollIndicator
                    | undefined;
                appBarTheme?: IAppBarTheme | undefined;
                applyElevationOverlayColor?: boolean | undefined;
                backgroundColor?: IColor | undefined;
                bannerTheme?: IMaterialBannerThemeData | undefined;
                bottomAppBarColor?: IColor | undefined;
                bottomAppBarTheme?: IBottomAppBarTheme | undefined;
                bottomNavigationBarTheme?:
                    | IBottomNavigationBarThemeData
                    | undefined;
                bottomSheetTheme?: IBottomSheetThemeData | undefined;
                brightness?: Brightness | undefined;
                buttonBarTheme?: IButtonBarThemeData | undefined;
                buttonColor?: IColor | undefined;
                buttonTheme?: IButtonThemeData | undefined;
                canvasColor?: IColor | undefined;
                cardColor?: IColor | undefined;
                cardTheme?: ICardTheme | undefined;
                checkboxTheme?: ICheckboxThemeData | undefined;
                chipTheme?: IChipThemeData | undefined;
                colorScheme?: IColorScheme | undefined;
                cupertinoOverrideTheme?:
                    | INoDefaultCupertinoThemeData
                    | undefined;
                cursorColor?: IColor | undefined;
                dataTableTheme?: IDataTableThemeData | undefined;
                dialogBackgroundColor?: IColor | undefined;
                dialogTheme?: IDialogTheme | undefined;
                disabledColor?: IColor | undefined;
                dividerColor?: IColor | undefined;
                dividerTheme?: IDividerThemeData | undefined;
                drawerTheme?: IDrawerThemeData | undefined;
                elevatedButtonTheme?: IElevatedButtonThemeData | undefined;
                errorColor?: IColor | undefined;
                fixTextFieldOutlineLabel?: boolean | undefined;
                floatingActionButtonTheme?:
                    | IFloatingActionButtonThemeData
                    | undefined;
                focusColor?: IColor | undefined;
                fontFamily?: string | undefined;
                highlightColor?: IColor | undefined;
                hintColor?: IColor | undefined;
                hoverColor?: IColor | undefined;
                iconTheme?: IIconThemeData | undefined;
                indicatorColor?: IColor | undefined;
                inputDecorationTheme?: IInputDecorationTheme | undefined;
                listTileTheme?: IListTileThemeData | undefined;
                materialTapTargetSize?: MaterialTapTargetSize | undefined;
                navigationBarTheme?: INavigationBarThemeData | undefined;
                navigationRailTheme?: INavigationRailThemeData | undefined;
                outlinedButtonTheme?: IOutlinedButtonThemeData | undefined;
                pageTransitionsTheme?: IPageTransitionsTheme | undefined;
                platform?: TargetPlatform | undefined;
                popupMenuTheme?: IPopupMenuThemeData | undefined;
                primaryColor?: IColor | undefined;
                primaryColorBrightness?: Brightness | undefined;
                primaryColorDark?: IColor | undefined;
                primaryColorLight?: IColor | undefined;
                primaryIconTheme?: IIconThemeData | undefined;
                primarySwatch?: IMaterialColor | undefined;
                primaryTextTheme?: ITextTheme | undefined;
                progressIndicatorTheme?:
                    | IProgressIndicatorThemeData
                    | undefined;
                radioTheme?: IRadioThemeData | undefined;
                scaffoldBackgroundColor?: IColor | undefined;
                scrollbarTheme?: IScrollbarThemeData | undefined;
                secondaryHeaderColor?: IColor | undefined;
                selectedRowColor?: IColor | undefined;
                shadowColor?: IColor | undefined;
                sliderTheme?: ISliderThemeData | undefined;
                snackBarTheme?: ISnackBarThemeData | undefined;
                splashColor?: IColor | undefined;
                splashFactory?: IInteractiveInkFeatureFactory | undefined;
                switchTheme?: ISwitchThemeData | undefined;
                tabBarTheme?: ITabBarTheme | undefined;
                textButtonTheme?: ITextButtonThemeData | undefined;
                textSelectionColor?: IColor | undefined;
                textSelectionHandleColor?: IColor | undefined;
                textSelectionTheme?: ITextSelectionThemeData | undefined;
                textTheme?: ITextTheme | undefined;
                timePickerTheme?: ITimePickerThemeData | undefined;
                toggleButtonsTheme?: IToggleButtonsThemeData | undefined;
                toggleableActiveColor?: IColor | undefined;
                tooltipTheme?: ITooltipThemeData | undefined;
                typography?: ITypography | undefined;
                unselectedWidgetColor?: IColor | undefined;
                useTextSelectionTheme?: boolean | undefined;
                visualDensity?: IVisualDensity | undefined;
            }
        ) => IThemeData;
        themeDataFrom: (props: {
            textTheme?: ITextTheme | undefined;
            colorScheme: IColorScheme;
        }) => IThemeData;
        themeDataLight: () => IThemeData;
        themeDataDark: () => IThemeData;
        themeDataFallback: () => IThemeData;
        themeDataLocalize: (
            baseTheme: IThemeData,
            localTextGeometry: ITextTheme
        ) => IThemeData;
        themeDataEstimateBrightnessForColor: (color: IColor) => Brightness;
        themeDataLerp: (a: IThemeData, b: IThemeData, t: number) => IThemeData;
    };
};
export interface IThemeData {
    visualDensity: IVisualDensity;
    primaryColor: IColor;
    primaryColorBrightness: Brightness;
    primaryColorLight: IColor;
    primaryColorDark: IColor;
    canvasColor: IColor;
    shadowColor: IColor;
    accentColor: IColor;
    accentColorBrightness: Brightness;
    scaffoldBackgroundColor: IColor;
    bottomAppBarColor: IColor;
    cardColor: IColor;
    dividerColor: IColor;
    focusColor: IColor;
    hoverColor: IColor;
    highlightColor: IColor;
    splashColor: IColor;
    splashFactory: IInteractiveInkFeatureFactory;
    selectedRowColor: IColor;
    unselectedWidgetColor: IColor;
    disabledColor: IColor;
    buttonTheme: IButtonThemeData;
    toggleButtonsTheme: IToggleButtonsThemeData;
    buttonColor: IColor;
    secondaryHeaderColor: IColor;
    textSelectionColor: IColor;
    cursorColor: IColor;
    textSelectionHandleColor: IColor;
    backgroundColor: IColor;
    dialogBackgroundColor: IColor;
    indicatorColor: IColor;
    hintColor: IColor;
    errorColor: IColor;
    toggleableActiveColor: IColor;
    textTheme: ITextTheme;
    primaryTextTheme: ITextTheme;
    accentTextTheme: ITextTheme;
    inputDecorationTheme: IInputDecorationTheme;
    iconTheme: IIconThemeData;
    primaryIconTheme: IIconThemeData;
    accentIconTheme: IIconThemeData;
    sliderTheme: ISliderThemeData;
    tabBarTheme: ITabBarTheme;
    tooltipTheme: ITooltipThemeData;
    cardTheme: ICardTheme;
    chipTheme: IChipThemeData;
    platform: TargetPlatform;
    materialTapTargetSize: MaterialTapTargetSize;
    applyElevationOverlayColor: boolean;
    pageTransitionsTheme: IPageTransitionsTheme;
    appBarTheme: IAppBarTheme;
    scrollbarTheme: IScrollbarThemeData;
    bottomAppBarTheme: IBottomAppBarTheme;
    colorScheme: IColorScheme;
    snackBarTheme: ISnackBarThemeData;
    dialogTheme: IDialogTheme;
    floatingActionButtonTheme: IFloatingActionButtonThemeData;
    navigationBarTheme: INavigationBarThemeData;
    navigationRailTheme: INavigationRailThemeData;
    typography: ITypography;
    cupertinoOverrideTheme: INoDefaultCupertinoThemeData | undefined;
    bottomSheetTheme: IBottomSheetThemeData;
    popupMenuTheme: IPopupMenuThemeData;
    bannerTheme: IMaterialBannerThemeData;
    dividerTheme: IDividerThemeData;
    buttonBarTheme: IButtonBarThemeData;
    bottomNavigationBarTheme: IBottomNavigationBarThemeData;
    timePickerTheme: ITimePickerThemeData;
    textButtonTheme: ITextButtonThemeData;
    elevatedButtonTheme: IElevatedButtonThemeData;
    outlinedButtonTheme: IOutlinedButtonThemeData;
    textSelectionTheme: ITextSelectionThemeData;
    dataTableTheme: IDataTableThemeData;
    checkboxTheme: ICheckboxThemeData;
    radioTheme: IRadioThemeData;
    switchTheme: ISwitchThemeData;
    progressIndicatorTheme: IProgressIndicatorThemeData;
    drawerTheme: IDrawerThemeData;
    listTileTheme: IListTileThemeData;
    fixTextFieldOutlineLabel: boolean;
    useTextSelectionTheme: boolean;
    androidOverscrollIndicator: AndroidOverscrollIndicator | undefined;
    getBrightness: () => Brightness;
    copyWith: (props?: {
        accentColor?: IColor | undefined;
        accentColorBrightness?: Brightness | undefined;
        accentIconTheme?: IIconThemeData | undefined;
        accentTextTheme?: ITextTheme | undefined;
        androidOverscrollIndicator?: AndroidOverscrollIndicator | undefined;
        appBarTheme?: IAppBarTheme | undefined;
        applyElevationOverlayColor?: boolean | undefined;
        backgroundColor?: IColor | undefined;
        bannerTheme?: IMaterialBannerThemeData | undefined;
        bottomAppBarColor?: IColor | undefined;
        bottomAppBarTheme?: IBottomAppBarTheme | undefined;
        bottomNavigationBarTheme?: IBottomNavigationBarThemeData | undefined;
        bottomSheetTheme?: IBottomSheetThemeData | undefined;
        brightness?: Brightness | undefined;
        buttonBarTheme?: IButtonBarThemeData | undefined;
        buttonColor?: IColor | undefined;
        buttonTheme?: IButtonThemeData | undefined;
        canvasColor?: IColor | undefined;
        cardColor?: IColor | undefined;
        cardTheme?: ICardTheme | undefined;
        checkboxTheme?: ICheckboxThemeData | undefined;
        chipTheme?: IChipThemeData | undefined;
        colorScheme?: IColorScheme | undefined;
        cupertinoOverrideTheme?: INoDefaultCupertinoThemeData | undefined;
        cursorColor?: IColor | undefined;
        dataTableTheme?: IDataTableThemeData | undefined;
        dialogBackgroundColor?: IColor | undefined;
        dialogTheme?: IDialogTheme | undefined;
        disabledColor?: IColor | undefined;
        dividerColor?: IColor | undefined;
        dividerTheme?: IDividerThemeData | undefined;
        drawerTheme?: IDrawerThemeData | undefined;
        elevatedButtonTheme?: IElevatedButtonThemeData | undefined;
        errorColor?: IColor | undefined;
        fixTextFieldOutlineLabel?: boolean | undefined;
        floatingActionButtonTheme?: IFloatingActionButtonThemeData | undefined;
        focusColor?: IColor | undefined;
        highlightColor?: IColor | undefined;
        hintColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        iconTheme?: IIconThemeData | undefined;
        indicatorColor?: IColor | undefined;
        inputDecorationTheme?: IInputDecorationTheme | undefined;
        listTileTheme?: IListTileThemeData | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        navigationBarTheme?: INavigationBarThemeData | undefined;
        navigationRailTheme?: INavigationRailThemeData | undefined;
        outlinedButtonTheme?: IOutlinedButtonThemeData | undefined;
        pageTransitionsTheme?: IPageTransitionsTheme | undefined;
        platform?: TargetPlatform | undefined;
        popupMenuTheme?: IPopupMenuThemeData | undefined;
        primaryColor?: IColor | undefined;
        primaryColorBrightness?: Brightness | undefined;
        primaryColorDark?: IColor | undefined;
        primaryColorLight?: IColor | undefined;
        primaryIconTheme?: IIconThemeData | undefined;
        primaryTextTheme?: ITextTheme | undefined;
        progressIndicatorTheme?: IProgressIndicatorThemeData | undefined;
        radioTheme?: IRadioThemeData | undefined;
        scaffoldBackgroundColor?: IColor | undefined;
        scrollbarTheme?: IScrollbarThemeData | undefined;
        secondaryHeaderColor?: IColor | undefined;
        selectedRowColor?: IColor | undefined;
        shadowColor?: IColor | undefined;
        sliderTheme?: ISliderThemeData | undefined;
        snackBarTheme?: ISnackBarThemeData | undefined;
        splashColor?: IColor | undefined;
        splashFactory?: IInteractiveInkFeatureFactory | undefined;
        switchTheme?: ISwitchThemeData | undefined;
        tabBarTheme?: ITabBarTheme | undefined;
        textButtonTheme?: ITextButtonThemeData | undefined;
        textSelectionColor?: IColor | undefined;
        textSelectionHandleColor?: IColor | undefined;
        textSelectionTheme?: ITextSelectionThemeData | undefined;
        textTheme?: ITextTheme | undefined;
        timePickerTheme?: ITimePickerThemeData | undefined;
        toggleButtonsTheme?: IToggleButtonsThemeData | undefined;
        toggleableActiveColor?: IColor | undefined;
        tooltipTheme?: ITooltipThemeData | undefined;
        typography?: ITypography | undefined;
        unselectedWidgetColor?: IColor | undefined;
        useTextSelectionTheme?: boolean | undefined;
        visualDensity?: IVisualDensity | undefined;
    }) => IThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class ThemeData implements IDiagnosticable {
    public static _localizedThemeDataCacheSize = 5;
    public readonly visualDensity: IVisualDensity = undefined as any;
    public readonly primaryColor: IColor = undefined as any;
    public readonly primaryColorBrightness: Brightness = undefined as any;
    public readonly primaryColorLight: IColor = undefined as any;
    public readonly primaryColorDark: IColor = undefined as any;
    public readonly canvasColor: IColor = undefined as any;
    public readonly shadowColor: IColor = undefined as any;
    public readonly accentColor: IColor = undefined as any;
    public readonly accentColorBrightness: Brightness = undefined as any;
    public readonly scaffoldBackgroundColor: IColor = undefined as any;
    public readonly bottomAppBarColor: IColor = undefined as any;
    public readonly cardColor: IColor = undefined as any;
    public readonly dividerColor: IColor = undefined as any;
    public readonly focusColor: IColor = undefined as any;
    public readonly hoverColor: IColor = undefined as any;
    public readonly highlightColor: IColor = undefined as any;
    public readonly splashColor: IColor = undefined as any;
    public readonly splashFactory: IInteractiveInkFeatureFactory =
        undefined as any;
    public readonly selectedRowColor: IColor = undefined as any;
    public readonly unselectedWidgetColor: IColor = undefined as any;
    public readonly disabledColor: IColor = undefined as any;
    public readonly buttonTheme: IButtonThemeData = undefined as any;
    public readonly toggleButtonsTheme: IToggleButtonsThemeData =
        undefined as any;
    public readonly buttonColor: IColor = undefined as any;
    public readonly secondaryHeaderColor: IColor = undefined as any;
    public readonly textSelectionColor: IColor = undefined as any;
    public readonly cursorColor: IColor = undefined as any;
    public readonly textSelectionHandleColor: IColor = undefined as any;
    public readonly backgroundColor: IColor = undefined as any;
    public readonly dialogBackgroundColor: IColor = undefined as any;
    public readonly indicatorColor: IColor = undefined as any;
    public readonly hintColor: IColor = undefined as any;
    public readonly errorColor: IColor = undefined as any;
    public readonly toggleableActiveColor: IColor = undefined as any;
    public readonly textTheme: ITextTheme = undefined as any;
    public readonly primaryTextTheme: ITextTheme = undefined as any;
    public readonly accentTextTheme: ITextTheme = undefined as any;
    public readonly inputDecorationTheme: IInputDecorationTheme =
        undefined as any;
    public readonly iconTheme: IIconThemeData = undefined as any;
    public readonly primaryIconTheme: IIconThemeData = undefined as any;
    public readonly accentIconTheme: IIconThemeData = undefined as any;
    public readonly sliderTheme: ISliderThemeData = undefined as any;
    public readonly tabBarTheme: ITabBarTheme = undefined as any;
    public readonly tooltipTheme: ITooltipThemeData = undefined as any;
    public readonly cardTheme: ICardTheme = undefined as any;
    public readonly chipTheme: IChipThemeData = undefined as any;
    public readonly platform: TargetPlatform = undefined as any;
    public readonly materialTapTargetSize: MaterialTapTargetSize =
        undefined as any;
    public readonly applyElevationOverlayColor: boolean = undefined as any;
    public readonly pageTransitionsTheme: IPageTransitionsTheme =
        undefined as any;
    public readonly appBarTheme: IAppBarTheme = undefined as any;
    public readonly scrollbarTheme: IScrollbarThemeData = undefined as any;
    public readonly bottomAppBarTheme: IBottomAppBarTheme = undefined as any;
    public readonly colorScheme: IColorScheme = undefined as any;
    public readonly snackBarTheme: ISnackBarThemeData = undefined as any;
    public readonly dialogTheme: IDialogTheme = undefined as any;
    public readonly floatingActionButtonTheme: IFloatingActionButtonThemeData =
        undefined as any;
    public readonly navigationBarTheme: INavigationBarThemeData =
        undefined as any;
    public readonly navigationRailTheme: INavigationRailThemeData =
        undefined as any;
    public readonly typography: ITypography = undefined as any;
    public readonly cupertinoOverrideTheme:
        | INoDefaultCupertinoThemeData
        | undefined = undefined as any;
    public readonly bottomSheetTheme: IBottomSheetThemeData = undefined as any;
    public readonly popupMenuTheme: IPopupMenuThemeData = undefined as any;
    public readonly bannerTheme: IMaterialBannerThemeData = undefined as any;
    public readonly dividerTheme: IDividerThemeData = undefined as any;
    public readonly buttonBarTheme: IButtonBarThemeData = undefined as any;
    public readonly bottomNavigationBarTheme: IBottomNavigationBarThemeData =
        undefined as any;
    public readonly timePickerTheme: ITimePickerThemeData = undefined as any;
    public readonly textButtonTheme: ITextButtonThemeData = undefined as any;
    public readonly elevatedButtonTheme: IElevatedButtonThemeData =
        undefined as any;
    public readonly outlinedButtonTheme: IOutlinedButtonThemeData =
        undefined as any;
    public readonly textSelectionTheme: ITextSelectionThemeData =
        undefined as any;
    public readonly dataTableTheme: IDataTableThemeData = undefined as any;
    public readonly checkboxTheme: ICheckboxThemeData = undefined as any;
    public readonly radioTheme: IRadioThemeData = undefined as any;
    public readonly switchTheme: ISwitchThemeData = undefined as any;
    public readonly progressIndicatorTheme: IProgressIndicatorThemeData =
        undefined as any;
    public readonly drawerTheme: IDrawerThemeData = undefined as any;
    public readonly listTileTheme: IListTileThemeData = undefined as any;
    public readonly fixTextFieldOutlineLabel: boolean = undefined as any;
    public readonly useTextSelectionTheme: boolean = undefined as any;
    public readonly androidOverscrollIndicator:
        | AndroidOverscrollIndicator
        | undefined = undefined as any;
    public constructor(props?: {
        accentColor?: IColor | undefined;
        accentColorBrightness?: Brightness | undefined;
        accentIconTheme?: IIconThemeData | undefined;
        accentTextTheme?: ITextTheme | undefined;
        androidOverscrollIndicator?: AndroidOverscrollIndicator | undefined;
        appBarTheme?: IAppBarTheme | undefined;
        applyElevationOverlayColor?: boolean | undefined;
        backgroundColor?: IColor | undefined;
        bannerTheme?: IMaterialBannerThemeData | undefined;
        bottomAppBarColor?: IColor | undefined;
        bottomAppBarTheme?: IBottomAppBarTheme | undefined;
        bottomNavigationBarTheme?: IBottomNavigationBarThemeData | undefined;
        bottomSheetTheme?: IBottomSheetThemeData | undefined;
        brightness?: Brightness | undefined;
        buttonBarTheme?: IButtonBarThemeData | undefined;
        buttonColor?: IColor | undefined;
        buttonTheme?: IButtonThemeData | undefined;
        canvasColor?: IColor | undefined;
        cardColor?: IColor | undefined;
        cardTheme?: ICardTheme | undefined;
        checkboxTheme?: ICheckboxThemeData | undefined;
        chipTheme?: IChipThemeData | undefined;
        colorScheme?: IColorScheme | undefined;
        cupertinoOverrideTheme?: INoDefaultCupertinoThemeData | undefined;
        cursorColor?: IColor | undefined;
        dataTableTheme?: IDataTableThemeData | undefined;
        dialogBackgroundColor?: IColor | undefined;
        dialogTheme?: IDialogTheme | undefined;
        disabledColor?: IColor | undefined;
        dividerColor?: IColor | undefined;
        dividerTheme?: IDividerThemeData | undefined;
        drawerTheme?: IDrawerThemeData | undefined;
        elevatedButtonTheme?: IElevatedButtonThemeData | undefined;
        errorColor?: IColor | undefined;
        fixTextFieldOutlineLabel?: boolean | undefined;
        floatingActionButtonTheme?: IFloatingActionButtonThemeData | undefined;
        focusColor?: IColor | undefined;
        fontFamily?: string | undefined;
        highlightColor?: IColor | undefined;
        hintColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        iconTheme?: IIconThemeData | undefined;
        indicatorColor?: IColor | undefined;
        inputDecorationTheme?: IInputDecorationTheme | undefined;
        listTileTheme?: IListTileThemeData | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        navigationBarTheme?: INavigationBarThemeData | undefined;
        navigationRailTheme?: INavigationRailThemeData | undefined;
        outlinedButtonTheme?: IOutlinedButtonThemeData | undefined;
        pageTransitionsTheme?: IPageTransitionsTheme | undefined;
        platform?: TargetPlatform | undefined;
        popupMenuTheme?: IPopupMenuThemeData | undefined;
        primaryColor?: IColor | undefined;
        primaryColorBrightness?: Brightness | undefined;
        primaryColorDark?: IColor | undefined;
        primaryColorLight?: IColor | undefined;
        primaryIconTheme?: IIconThemeData | undefined;
        primarySwatch?: IMaterialColor | undefined;
        primaryTextTheme?: ITextTheme | undefined;
        progressIndicatorTheme?: IProgressIndicatorThemeData | undefined;
        radioTheme?: IRadioThemeData | undefined;
        scaffoldBackgroundColor?: IColor | undefined;
        scrollbarTheme?: IScrollbarThemeData | undefined;
        secondaryHeaderColor?: IColor | undefined;
        selectedRowColor?: IColor | undefined;
        shadowColor?: IColor | undefined;
        sliderTheme?: ISliderThemeData | undefined;
        snackBarTheme?: ISnackBarThemeData | undefined;
        splashColor?: IColor | undefined;
        splashFactory?: IInteractiveInkFeatureFactory | undefined;
        switchTheme?: ISwitchThemeData | undefined;
        tabBarTheme?: ITabBarTheme | undefined;
        textButtonTheme?: ITextButtonThemeData | undefined;
        textSelectionColor?: IColor | undefined;
        textSelectionHandleColor?: IColor | undefined;
        textSelectionTheme?: ITextSelectionThemeData | undefined;
        textTheme?: ITextTheme | undefined;
        timePickerTheme?: ITimePickerThemeData | undefined;
        toggleButtonsTheme?: IToggleButtonsThemeData | undefined;
        toggleableActiveColor?: IColor | undefined;
        tooltipTheme?: ITooltipThemeData | undefined;
        typography?: ITypography | undefined;
        unselectedWidgetColor?: IColor | undefined;
        useTextSelectionTheme?: boolean | undefined;
        visualDensity?: IVisualDensity | undefined;
    }) {
        flutter.material.themeData(this, props);
    }
    public static from(props: {
        textTheme?: ITextTheme | undefined;
        colorScheme: IColorScheme;
    }): IThemeData {
        return flutter.material.themeDataFrom(props);
    }
    public static light(): IThemeData {
        return flutter.material.themeDataLight();
    }
    public static dark(): IThemeData {
        return flutter.material.themeDataDark();
    }
    public static fallback(): IThemeData {
        return flutter.material.themeDataFallback();
    }
    public static localize(
        baseTheme: IThemeData,
        localTextGeometry: ITextTheme
    ): IThemeData {
        return flutter.material.themeDataLocalize(baseTheme, localTextGeometry);
    }
    public static estimateBrightnessForColor(color: IColor): Brightness {
        return flutter.material.themeDataEstimateBrightnessForColor(color);
    }
    public static lerp(a: IThemeData, b: IThemeData, t: number): IThemeData {
        return flutter.material.themeDataLerp(a, b, t);
    }
    private readonly _dart_getBrightness: () => Brightness = undefined as any;
    private readonly _dart_copyWith: (props?: {
        accentColor?: IColor | undefined;
        accentColorBrightness?: Brightness | undefined;
        accentIconTheme?: IIconThemeData | undefined;
        accentTextTheme?: ITextTheme | undefined;
        androidOverscrollIndicator?: AndroidOverscrollIndicator | undefined;
        appBarTheme?: IAppBarTheme | undefined;
        applyElevationOverlayColor?: boolean | undefined;
        backgroundColor?: IColor | undefined;
        bannerTheme?: IMaterialBannerThemeData | undefined;
        bottomAppBarColor?: IColor | undefined;
        bottomAppBarTheme?: IBottomAppBarTheme | undefined;
        bottomNavigationBarTheme?: IBottomNavigationBarThemeData | undefined;
        bottomSheetTheme?: IBottomSheetThemeData | undefined;
        brightness?: Brightness | undefined;
        buttonBarTheme?: IButtonBarThemeData | undefined;
        buttonColor?: IColor | undefined;
        buttonTheme?: IButtonThemeData | undefined;
        canvasColor?: IColor | undefined;
        cardColor?: IColor | undefined;
        cardTheme?: ICardTheme | undefined;
        checkboxTheme?: ICheckboxThemeData | undefined;
        chipTheme?: IChipThemeData | undefined;
        colorScheme?: IColorScheme | undefined;
        cupertinoOverrideTheme?: INoDefaultCupertinoThemeData | undefined;
        cursorColor?: IColor | undefined;
        dataTableTheme?: IDataTableThemeData | undefined;
        dialogBackgroundColor?: IColor | undefined;
        dialogTheme?: IDialogTheme | undefined;
        disabledColor?: IColor | undefined;
        dividerColor?: IColor | undefined;
        dividerTheme?: IDividerThemeData | undefined;
        drawerTheme?: IDrawerThemeData | undefined;
        elevatedButtonTheme?: IElevatedButtonThemeData | undefined;
        errorColor?: IColor | undefined;
        fixTextFieldOutlineLabel?: boolean | undefined;
        floatingActionButtonTheme?: IFloatingActionButtonThemeData | undefined;
        focusColor?: IColor | undefined;
        highlightColor?: IColor | undefined;
        hintColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        iconTheme?: IIconThemeData | undefined;
        indicatorColor?: IColor | undefined;
        inputDecorationTheme?: IInputDecorationTheme | undefined;
        listTileTheme?: IListTileThemeData | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        navigationBarTheme?: INavigationBarThemeData | undefined;
        navigationRailTheme?: INavigationRailThemeData | undefined;
        outlinedButtonTheme?: IOutlinedButtonThemeData | undefined;
        pageTransitionsTheme?: IPageTransitionsTheme | undefined;
        platform?: TargetPlatform | undefined;
        popupMenuTheme?: IPopupMenuThemeData | undefined;
        primaryColor?: IColor | undefined;
        primaryColorBrightness?: Brightness | undefined;
        primaryColorDark?: IColor | undefined;
        primaryColorLight?: IColor | undefined;
        primaryIconTheme?: IIconThemeData | undefined;
        primaryTextTheme?: ITextTheme | undefined;
        progressIndicatorTheme?: IProgressIndicatorThemeData | undefined;
        radioTheme?: IRadioThemeData | undefined;
        scaffoldBackgroundColor?: IColor | undefined;
        scrollbarTheme?: IScrollbarThemeData | undefined;
        secondaryHeaderColor?: IColor | undefined;
        selectedRowColor?: IColor | undefined;
        shadowColor?: IColor | undefined;
        sliderTheme?: ISliderThemeData | undefined;
        snackBarTheme?: ISnackBarThemeData | undefined;
        splashColor?: IColor | undefined;
        splashFactory?: IInteractiveInkFeatureFactory | undefined;
        switchTheme?: ISwitchThemeData | undefined;
        tabBarTheme?: ITabBarTheme | undefined;
        textButtonTheme?: ITextButtonThemeData | undefined;
        textSelectionColor?: IColor | undefined;
        textSelectionHandleColor?: IColor | undefined;
        textSelectionTheme?: ITextSelectionThemeData | undefined;
        textTheme?: ITextTheme | undefined;
        timePickerTheme?: ITimePickerThemeData | undefined;
        toggleButtonsTheme?: IToggleButtonsThemeData | undefined;
        toggleableActiveColor?: IColor | undefined;
        tooltipTheme?: ITooltipThemeData | undefined;
        typography?: ITypography | undefined;
        unselectedWidgetColor?: IColor | undefined;
        useTextSelectionTheme?: boolean | undefined;
        visualDensity?: IVisualDensity | undefined;
    }) => IThemeData = undefined as any;
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
    public getBrightness(): Brightness {
        return this._dart_getBrightness();
    }
    public copyWith(props?: {
        accentColor?: IColor | undefined;
        accentColorBrightness?: Brightness | undefined;
        accentIconTheme?: IIconThemeData | undefined;
        accentTextTheme?: ITextTheme | undefined;
        androidOverscrollIndicator?: AndroidOverscrollIndicator | undefined;
        appBarTheme?: IAppBarTheme | undefined;
        applyElevationOverlayColor?: boolean | undefined;
        backgroundColor?: IColor | undefined;
        bannerTheme?: IMaterialBannerThemeData | undefined;
        bottomAppBarColor?: IColor | undefined;
        bottomAppBarTheme?: IBottomAppBarTheme | undefined;
        bottomNavigationBarTheme?: IBottomNavigationBarThemeData | undefined;
        bottomSheetTheme?: IBottomSheetThemeData | undefined;
        brightness?: Brightness | undefined;
        buttonBarTheme?: IButtonBarThemeData | undefined;
        buttonColor?: IColor | undefined;
        buttonTheme?: IButtonThemeData | undefined;
        canvasColor?: IColor | undefined;
        cardColor?: IColor | undefined;
        cardTheme?: ICardTheme | undefined;
        checkboxTheme?: ICheckboxThemeData | undefined;
        chipTheme?: IChipThemeData | undefined;
        colorScheme?: IColorScheme | undefined;
        cupertinoOverrideTheme?: INoDefaultCupertinoThemeData | undefined;
        cursorColor?: IColor | undefined;
        dataTableTheme?: IDataTableThemeData | undefined;
        dialogBackgroundColor?: IColor | undefined;
        dialogTheme?: IDialogTheme | undefined;
        disabledColor?: IColor | undefined;
        dividerColor?: IColor | undefined;
        dividerTheme?: IDividerThemeData | undefined;
        drawerTheme?: IDrawerThemeData | undefined;
        elevatedButtonTheme?: IElevatedButtonThemeData | undefined;
        errorColor?: IColor | undefined;
        fixTextFieldOutlineLabel?: boolean | undefined;
        floatingActionButtonTheme?: IFloatingActionButtonThemeData | undefined;
        focusColor?: IColor | undefined;
        highlightColor?: IColor | undefined;
        hintColor?: IColor | undefined;
        hoverColor?: IColor | undefined;
        iconTheme?: IIconThemeData | undefined;
        indicatorColor?: IColor | undefined;
        inputDecorationTheme?: IInputDecorationTheme | undefined;
        listTileTheme?: IListTileThemeData | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        navigationBarTheme?: INavigationBarThemeData | undefined;
        navigationRailTheme?: INavigationRailThemeData | undefined;
        outlinedButtonTheme?: IOutlinedButtonThemeData | undefined;
        pageTransitionsTheme?: IPageTransitionsTheme | undefined;
        platform?: TargetPlatform | undefined;
        popupMenuTheme?: IPopupMenuThemeData | undefined;
        primaryColor?: IColor | undefined;
        primaryColorBrightness?: Brightness | undefined;
        primaryColorDark?: IColor | undefined;
        primaryColorLight?: IColor | undefined;
        primaryIconTheme?: IIconThemeData | undefined;
        primaryTextTheme?: ITextTheme | undefined;
        progressIndicatorTheme?: IProgressIndicatorThemeData | undefined;
        radioTheme?: IRadioThemeData | undefined;
        scaffoldBackgroundColor?: IColor | undefined;
        scrollbarTheme?: IScrollbarThemeData | undefined;
        secondaryHeaderColor?: IColor | undefined;
        selectedRowColor?: IColor | undefined;
        shadowColor?: IColor | undefined;
        sliderTheme?: ISliderThemeData | undefined;
        snackBarTheme?: ISnackBarThemeData | undefined;
        splashColor?: IColor | undefined;
        splashFactory?: IInteractiveInkFeatureFactory | undefined;
        switchTheme?: ISwitchThemeData | undefined;
        tabBarTheme?: ITabBarTheme | undefined;
        textButtonTheme?: ITextButtonThemeData | undefined;
        textSelectionColor?: IColor | undefined;
        textSelectionHandleColor?: IColor | undefined;
        textSelectionTheme?: ITextSelectionThemeData | undefined;
        textTheme?: ITextTheme | undefined;
        timePickerTheme?: ITimePickerThemeData | undefined;
        toggleButtonsTheme?: IToggleButtonsThemeData | undefined;
        toggleableActiveColor?: IColor | undefined;
        tooltipTheme?: ITooltipThemeData | undefined;
        typography?: ITypography | undefined;
        unselectedWidgetColor?: IColor | undefined;
        useTextSelectionTheme?: boolean | undefined;
        visualDensity?: IVisualDensity | undefined;
    }): IThemeData {
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
