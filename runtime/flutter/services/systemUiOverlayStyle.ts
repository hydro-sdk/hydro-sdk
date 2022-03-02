import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
declare const flutter: {
    services: {
        systemUiOverlayStyle: (
            this: void,
            systemUiOverlayStyle: ISystemUiOverlayStyle,
            props?: {
                statusBarBrightness?: Brightness | undefined;
                statusBarColor?: IColor | undefined;
                statusBarIconBrightness?: Brightness | undefined;
                systemNavigationBarColor?: IColor | undefined;
                systemNavigationBarContrastEnforced?: boolean | undefined;
                systemNavigationBarDividerColor?: IColor | undefined;
                systemNavigationBarIconBrightness?: Brightness | undefined;
                systemStatusBarContrastEnforced?: boolean | undefined;
            }
        ) => ISystemUiOverlayStyle;
    };
};
export interface ISystemUiOverlayStyle {
    systemNavigationBarColor: IColor | undefined;
    systemNavigationBarDividerColor: IColor | undefined;
    systemNavigationBarIconBrightness: Brightness | undefined;
    systemNavigationBarContrastEnforced: boolean | undefined;
    statusBarColor: IColor | undefined;
    statusBarBrightness: Brightness | undefined;
    statusBarIconBrightness: Brightness | undefined;
    systemStatusBarContrastEnforced: boolean | undefined;
    toString: () => string;
    copyWith: (props?: {
        statusBarBrightness?: Brightness | undefined;
        statusBarColor?: IColor | undefined;
        statusBarIconBrightness?: Brightness | undefined;
        systemNavigationBarColor?: IColor | undefined;
        systemNavigationBarContrastEnforced?: boolean | undefined;
        systemNavigationBarDividerColor?: IColor | undefined;
        systemNavigationBarIconBrightness?: Brightness | undefined;
        systemStatusBarContrastEnforced?: boolean | undefined;
    }) => ISystemUiOverlayStyle;
    getHashCode: () => number;
}
export class SystemUiOverlayStyle {
    public static light = new SystemUiOverlayStyle();
    public static dark = new SystemUiOverlayStyle();
    public readonly systemNavigationBarColor: IColor | undefined =
        undefined as any;
    public readonly systemNavigationBarDividerColor: IColor | undefined =
        undefined as any;
    public readonly systemNavigationBarIconBrightness: Brightness | undefined =
        undefined as any;
    public readonly systemNavigationBarContrastEnforced: boolean | undefined =
        undefined as any;
    public readonly statusBarColor: IColor | undefined = undefined as any;
    public readonly statusBarBrightness: Brightness | undefined =
        undefined as any;
    public readonly statusBarIconBrightness: Brightness | undefined =
        undefined as any;
    public readonly systemStatusBarContrastEnforced: boolean | undefined =
        undefined as any;
    public constructor(props?: {
        statusBarBrightness?: Brightness | undefined;
        statusBarColor?: IColor | undefined;
        statusBarIconBrightness?: Brightness | undefined;
        systemNavigationBarColor?: IColor | undefined;
        systemNavigationBarContrastEnforced?: boolean | undefined;
        systemNavigationBarDividerColor?: IColor | undefined;
        systemNavigationBarIconBrightness?: Brightness | undefined;
        systemStatusBarContrastEnforced?: boolean | undefined;
    }) {
        flutter.services.systemUiOverlayStyle(this, props);
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_copyWith: (props?: {
        statusBarBrightness?: Brightness | undefined;
        statusBarColor?: IColor | undefined;
        statusBarIconBrightness?: Brightness | undefined;
        systemNavigationBarColor?: IColor | undefined;
        systemNavigationBarContrastEnforced?: boolean | undefined;
        systemNavigationBarDividerColor?: IColor | undefined;
        systemNavigationBarIconBrightness?: Brightness | undefined;
        systemStatusBarContrastEnforced?: boolean | undefined;
    }) => ISystemUiOverlayStyle = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
    public copyWith(props?: {
        statusBarBrightness?: Brightness | undefined;
        statusBarColor?: IColor | undefined;
        statusBarIconBrightness?: Brightness | undefined;
        systemNavigationBarColor?: IColor | undefined;
        systemNavigationBarContrastEnforced?: boolean | undefined;
        systemNavigationBarDividerColor?: IColor | undefined;
        systemNavigationBarIconBrightness?: Brightness | undefined;
        systemStatusBarContrastEnforced?: boolean | undefined;
    }): ISystemUiOverlayStyle {
        return this._dart_copyWith(props);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
