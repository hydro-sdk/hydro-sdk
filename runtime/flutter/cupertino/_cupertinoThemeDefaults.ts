import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
import { IBuildContext } from "../widgets/buildContext";
import { I_CupertinoTextThemeDefaults } from "./_cupertinoTextThemeDefaults";
declare const flutter: {
    cupertino: {
        _cupertinoThemeDefaults: (
            this: void,
            _cupertinoThemeDefaults: I_CupertinoThemeDefaults,
            brightness: Brightness | undefined,
            primaryColor: IColor,
            primaryContrastingColor: IColor,
            barBackgroundColor: IColor,
            scaffoldBackgroundColor: IColor,
            textThemeDefaults: I_CupertinoTextThemeDefaults
        ) => I_CupertinoThemeDefaults;
    };
};
export interface I_CupertinoThemeDefaults {
    brightness: Brightness | undefined;
    primaryColor: IColor;
    primaryContrastingColor: IColor;
    barBackgroundColor: IColor;
    scaffoldBackgroundColor: IColor;
    textThemeDefaults: I_CupertinoTextThemeDefaults;
    resolveFrom: (
        context: IBuildContext,
        resolveTextTheme: boolean
    ) => I_CupertinoThemeDefaults;
}
export class _CupertinoThemeDefaults {
    public readonly brightness: Brightness | undefined = undefined as any;
    public readonly primaryColor: IColor = undefined as any;
    public readonly primaryContrastingColor: IColor = undefined as any;
    public readonly barBackgroundColor: IColor = undefined as any;
    public readonly scaffoldBackgroundColor: IColor = undefined as any;
    public readonly textThemeDefaults: I_CupertinoTextThemeDefaults =
        undefined as any;
    public constructor(
        brightness: Brightness | undefined,
        primaryColor: IColor,
        primaryContrastingColor: IColor,
        barBackgroundColor: IColor,
        scaffoldBackgroundColor: IColor,
        textThemeDefaults: I_CupertinoTextThemeDefaults
    ) {
        flutter.cupertino._cupertinoThemeDefaults(
            this,
            brightness,
            primaryColor,
            primaryContrastingColor,
            barBackgroundColor,
            scaffoldBackgroundColor,
            textThemeDefaults
        );
    }
    private readonly _dart_resolveFrom: (
        context: IBuildContext,
        resolveTextTheme: boolean
    ) => I_CupertinoThemeDefaults = undefined as any;
    public resolveFrom(
        context: IBuildContext,
        resolveTextTheme: boolean
    ): I_CupertinoThemeDefaults {
        return this._dart_resolveFrom(context, resolveTextTheme);
    }
}
