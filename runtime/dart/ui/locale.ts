declare const dart: {
    ui: {
        locale: (
            this: void,
            locale: ILocale,
            _languageCode: string,
            _countryCode?: string | undefined
        ) => ILocale;
        localeFromSubtags: (props: {
            countryCode?: string | undefined;
            languageCode: string;
            scriptCode?: string | undefined;
        }) => ILocale;
    };
};
const fromSubtagsDefaultProps = {
    languageCode: "und",
};
export interface ILocale {
    scriptCode: string | undefined;
    getLanguageCode: () => string;
    getCountryCode: () => string | undefined;
    getHashCode: () => number;
    toString: () => string;
    toLanguageTag: () => string;
}
export class Locale {
    private static _deprecatedLanguageSubtagMap = Unknown;
    private static _deprecatedRegionSubtagMap = Unknown;
    public readonly scriptCode: string | undefined = undefined as any;
    public constructor(
        _languageCode: string,
        _countryCode?: string | undefined
    ) {
        dart.ui.locale(this, _languageCode, _countryCode);
    }
    public static fromSubtags(props: {
        countryCode?: string | undefined;
        languageCode?: string;
        scriptCode?: string | undefined;
    }): ILocale {
        return dart.ui.localeFromSubtags({
            ...fromSubtagsDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getLanguageCode: () => string = undefined as any;
    private readonly _dart_getCountryCode: () => string | undefined =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_toLanguageTag: () => string = undefined as any;
    public getLanguageCode(): string {
        return this._dart_getLanguageCode();
    }
    public getCountryCode(): string | undefined {
        return this._dart_getCountryCode();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public toLanguageTag(): string {
        return this._dart_toLanguageTag();
    }
}
