import { IIterable } from "../core/iterable";
import { List } from "../core/list";
import { Map } from "../core/map";
import { IMapEntry, MapEntry } from "../core/mapEntry";
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
export interface ILocale {
    scriptCode: string | undefined;
    getLanguageCode: () => string;
    getCountryCode: () => string | undefined;
    getHashCode: () => number;
    toString: () => string;
    toLanguageTag: () => string;
}
export class Locale {
    public static _deprecatedLanguageSubtagMap = Map.fromEntries(
        <IIterable<IMapEntry<string, string>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry("in", "id"),
                    new MapEntry("iw", "he"),
                    new MapEntry("ji", "yi"),
                    new MapEntry("jw", "jv"),
                    new MapEntry("mo", "ro"),
                    new MapEntry("aam", "aas"),
                    new MapEntry("adp", "dz"),
                    new MapEntry("aue", "ktz"),
                    new MapEntry("ayx", "nun"),
                    new MapEntry("bgm", "bcg"),
                    new MapEntry("bjd", "drl"),
                    new MapEntry("ccq", "rki"),
                    new MapEntry("cjr", "mom"),
                    new MapEntry("cka", "cmr"),
                    new MapEntry("cmk", "xch"),
                    new MapEntry("coy", "pij"),
                    new MapEntry("cqu", "quh"),
                    new MapEntry("drh", "khk"),
                    new MapEntry("drw", "prs"),
                    new MapEntry("gav", "dev"),
                    new MapEntry("gfx", "vaj"),
                    new MapEntry("ggn", "gvr"),
                    new MapEntry("gti", "nyc"),
                    new MapEntry("guv", "duz"),
                    new MapEntry("hrr", "jal"),
                    new MapEntry("ibi", "opa"),
                    new MapEntry("ilw", "gal"),
                    new MapEntry("jeg", "oyb"),
                    new MapEntry("kgc", "tdf"),
                    new MapEntry("kgh", "kml"),
                    new MapEntry("koj", "kwv"),
                    new MapEntry("krm", "bmf"),
                    new MapEntry("ktr", "dtp"),
                    new MapEntry("kvs", "gdj"),
                    new MapEntry("kwq", "yam"),
                    new MapEntry("kxe", "tvd"),
                    new MapEntry("kzj", "dtp"),
                    new MapEntry("kzt", "dtp"),
                    new MapEntry("lii", "raq"),
                    new MapEntry("lmm", "rmx"),
                    new MapEntry("meg", "cir"),
                    new MapEntry("mst", "mry"),
                    new MapEntry("mwj", "vaj"),
                    new MapEntry("myt", "mry"),
                    new MapEntry("nad", "xny"),
                    new MapEntry("ncp", "kdz"),
                    new MapEntry("nnx", "ngv"),
                    new MapEntry("nts", "pij"),
                    new MapEntry("oun", "vaj"),
                    new MapEntry("pcr", "adx"),
                    new MapEntry("pmc", "huw"),
                    new MapEntry("pmu", "phr"),
                    new MapEntry("ppa", "bfy"),
                    new MapEntry("ppr", "lcq"),
                    new MapEntry("pry", "prt"),
                    new MapEntry("puz", "pub"),
                    new MapEntry("sca", "hle"),
                    new MapEntry("skk", "oyb"),
                    new MapEntry("tdu", "dtp"),
                    new MapEntry("thc", "tpo"),
                    new MapEntry("thx", "oyb"),
                    new MapEntry("tie", "ras"),
                    new MapEntry("tkk", "twm"),
                    new MapEntry("tlw", "weo"),
                    new MapEntry("tmp", "tyj"),
                    new MapEntry("tne", "kak"),
                    new MapEntry("tnf", "prs"),
                    new MapEntry("tsf", "taj"),
                    new MapEntry("uok", "ema"),
                    new MapEntry("xba", "cax"),
                    new MapEntry("xia", "acn"),
                    new MapEntry("xkh", "waw"),
                    new MapEntry("xsj", "suj"),
                    new MapEntry("ybd", "rki"),
                    new MapEntry("yma", "lrr"),
                    new MapEntry("ymt", "mtm"),
                    new MapEntry("yos", "zom"),
                    new MapEntry("yuu", "yug"),
                ])
            ))
        )
    );
    public static _deprecatedRegionSubtagMap = Map.fromEntries(
        <IIterable<IMapEntry<string, string>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry("BU", "MM"),
                    new MapEntry("DD", "DE"),
                    new MapEntry("FX", "FR"),
                    new MapEntry("TP", "TL"),
                    new MapEntry("YD", "YE"),
                    new MapEntry("ZR", "CD"),
                ])
            ))
        )
    );
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
const fromSubtagsDefaultProps = {
    languageCode: "und",
};
