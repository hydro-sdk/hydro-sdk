import { ITextTheme } from "./textTheme";
import { IThemeData } from "./themeData";
declare const flutter: {
    material: {
        _identityThemeDataCacheKey: (
            this: void,
            _identityThemeDataCacheKey: I_IdentityThemeDataCacheKey,
            baseTheme: IThemeData,
            localTextGeometry: ITextTheme
        ) => I_IdentityThemeDataCacheKey;
    };
};
export interface I_IdentityThemeDataCacheKey {
    baseTheme: IThemeData;
    localTextGeometry: ITextTheme;
    getHashCode: () => number;
}
export class _IdentityThemeDataCacheKey {
    public readonly baseTheme: IThemeData = undefined as any;
    public readonly localTextGeometry: ITextTheme = undefined as any;
    public constructor(baseTheme: IThemeData, localTextGeometry: ITextTheme) {
        flutter.material._identityThemeDataCacheKey(
            this,
            baseTheme,
            localTextGeometry
        );
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
