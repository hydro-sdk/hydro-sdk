import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
import { IBuildContext } from "../widgets/buildContext";
import { ICupertinoTextThemeData } from "./cupertinoTextThemeData";
declare const flutter: {
    cupertino: {
        noDefaultCupertinoThemeData: (
            this: void,
            noDefaultCupertinoThemeData: INoDefaultCupertinoThemeData,
            props?: {
                barBackgroundColor?: IColor | undefined;
                brightness?: Brightness | undefined;
                primaryColor?: IColor | undefined;
                primaryContrastingColor?: IColor | undefined;
                scaffoldBackgroundColor?: IColor | undefined;
                textTheme?: ICupertinoTextThemeData | undefined;
            }
        ) => INoDefaultCupertinoThemeData;
    };
};
export interface INoDefaultCupertinoThemeData {
    brightness: Brightness | undefined;
    primaryColor: IColor | undefined;
    primaryContrastingColor: IColor | undefined;
    textTheme: ICupertinoTextThemeData | undefined;
    barBackgroundColor: IColor | undefined;
    scaffoldBackgroundColor: IColor | undefined;
    noDefault: () => INoDefaultCupertinoThemeData;
    resolveFrom: (context: IBuildContext) => INoDefaultCupertinoThemeData;
    copyWith: (props?: {
        barBackgroundColor?: IColor | undefined;
        brightness?: Brightness | undefined;
        primaryColor?: IColor | undefined;
        primaryContrastingColor?: IColor | undefined;
        scaffoldBackgroundColor?: IColor | undefined;
        textTheme?: ICupertinoTextThemeData | undefined;
    }) => INoDefaultCupertinoThemeData;
}
export class NoDefaultCupertinoThemeData {
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
        flutter.cupertino.noDefaultCupertinoThemeData(this, props);
    }
    private readonly _dart_noDefault: () => INoDefaultCupertinoThemeData =
        undefined as any;
    private readonly _dart_resolveFrom: (
        context: IBuildContext
    ) => INoDefaultCupertinoThemeData = undefined as any;
    private readonly _dart_copyWith: (props?: {
        barBackgroundColor?: IColor | undefined;
        brightness?: Brightness | undefined;
        primaryColor?: IColor | undefined;
        primaryContrastingColor?: IColor | undefined;
        scaffoldBackgroundColor?: IColor | undefined;
        textTheme?: ICupertinoTextThemeData | undefined;
    }) => INoDefaultCupertinoThemeData = undefined as any;
    public noDefault(): INoDefaultCupertinoThemeData {
        return this._dart_noDefault();
    }
    public resolveFrom(context: IBuildContext): INoDefaultCupertinoThemeData {
        return this._dart_resolveFrom(context);
    }
    public copyWith(props?: {
        barBackgroundColor?: IColor | undefined;
        brightness?: Brightness | undefined;
        primaryColor?: IColor | undefined;
        primaryContrastingColor?: IColor | undefined;
        scaffoldBackgroundColor?: IColor | undefined;
        textTheme?: ICupertinoTextThemeData | undefined;
    }): INoDefaultCupertinoThemeData {
        return this._dart_copyWith(props);
    }
}
