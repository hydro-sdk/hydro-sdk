import { IList, List } from "../core/list";
import { IAccessibilityFeatures } from "./accessibilityFeatures";
import { Brightness } from "./brightness";
import { ILocale } from "./locale";
declare const dart: {
    ui: {
        platformConfiguration: (
            this: void,
            platformConfiguration: IPlatformConfiguration,
            props: {
                accessibilityFeatures: IAccessibilityFeatures;
                alwaysUse24HourFormat: boolean;
                defaultRouteName?: string | undefined;
                locales: IList<ILocale>;
                platformBrightness: Brightness;
                semanticsEnabled: boolean;
                textScaleFactor: number;
            }
        ) => IPlatformConfiguration;
    };
};
export interface IPlatformConfiguration {
    accessibilityFeatures: IAccessibilityFeatures;
    alwaysUse24HourFormat: boolean;
    semanticsEnabled: boolean;
    platformBrightness: Brightness;
    textScaleFactor: number;
    locales: IList<ILocale>;
    defaultRouteName: string | undefined;
    copyWith: (props?: {
        accessibilityFeatures?: IAccessibilityFeatures | undefined;
        alwaysUse24HourFormat?: boolean | undefined;
        defaultRouteName?: string | undefined;
        locales?: IList<ILocale> | undefined;
        platformBrightness?: Brightness | undefined;
        semanticsEnabled?: boolean | undefined;
        textScaleFactor?: number | undefined;
    }) => IPlatformConfiguration;
}
export class PlatformConfiguration {
    public readonly accessibilityFeatures: IAccessibilityFeatures =
        undefined as any;
    public readonly alwaysUse24HourFormat: boolean = undefined as any;
    public readonly semanticsEnabled: boolean = undefined as any;
    public readonly platformBrightness: Brightness = undefined as any;
    public readonly textScaleFactor: number = undefined as any;
    public readonly locales: IList<ILocale> = undefined as any;
    public readonly defaultRouteName: string | undefined = undefined as any;
    public constructor(props: {
        accessibilityFeatures: IAccessibilityFeatures;
        alwaysUse24HourFormat?: boolean;
        defaultRouteName?: string | undefined;
        locales?: IList<ILocale>;
        platformBrightness?: Brightness;
        semanticsEnabled?: boolean;
        textScaleFactor?: number;
    }) {
        dart.ui.platformConfiguration(this, {
            ...platformConfigurationDefaultProps,
            ...props,
        });
    }
    private readonly _dart_copyWith: (props?: {
        accessibilityFeatures?: IAccessibilityFeatures | undefined;
        alwaysUse24HourFormat?: boolean | undefined;
        defaultRouteName?: string | undefined;
        locales?: IList<ILocale> | undefined;
        platformBrightness?: Brightness | undefined;
        semanticsEnabled?: boolean | undefined;
        textScaleFactor?: number | undefined;
    }) => IPlatformConfiguration = undefined as any;
    public copyWith(props?: {
        accessibilityFeatures?: IAccessibilityFeatures | undefined;
        alwaysUse24HourFormat?: boolean | undefined;
        defaultRouteName?: string | undefined;
        locales?: IList<ILocale> | undefined;
        platformBrightness?: Brightness | undefined;
        semanticsEnabled?: boolean | undefined;
        textScaleFactor?: number | undefined;
    }): IPlatformConfiguration {
        return this._dart_copyWith(props);
    }
}
const platformConfigurationDefaultProps = {
    alwaysUse24HourFormat: false,
    locales: List.fromArray<ILocale>([]),
    platformBrightness: Brightness.light,
    semanticsEnabled: false,
    textScaleFactor: 1.0,
};
