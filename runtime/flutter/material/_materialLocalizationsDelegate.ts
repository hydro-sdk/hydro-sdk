import { IFuture } from "../../dart/async/future";
import { Type } from "../../dart/core/type";
import { ILocale } from "../../dart/ui/locale";
import { ILocalizationsDelegate } from "../widgets/localizationsDelegate";
import { IMaterialLocalizations } from "./materialLocalizations";
declare const flutter: {
    material: {
        _materialLocalizationsDelegate: (
            this: void,
            _materialLocalizationsDelegate: I_MaterialLocalizationsDelegate
        ) => I_MaterialLocalizationsDelegate;
    };
};
export interface I_MaterialLocalizationsDelegate {
    isSupported: (locale: ILocale) => boolean;
    load: (locale: ILocale) => IFuture<IMaterialLocalizations>;
    shouldReload: (old: unknown) => boolean;
    toString: () => string;
    getType: () => Type;
    getHashCode: () => number;
}
export class _MaterialLocalizationsDelegate
    implements ILocalizationsDelegate<IMaterialLocalizations>
{
    public constructor() {
        flutter.material._materialLocalizationsDelegate(this);
    }
    private readonly _dart_isSupported: (locale: ILocale) => boolean =
        undefined as any;
    private readonly _dart_load: (
        locale: ILocale
    ) => IFuture<IMaterialLocalizations> = undefined as any;
    private readonly _dart_shouldReload: (old: any) => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getType: () => Type = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public isSupported(locale: ILocale): boolean {
        return this._dart_isSupported(locale);
    }
    public load(locale: ILocale): IFuture<IMaterialLocalizations> {
        return this._dart_load(locale);
    }
    public shouldReload(old: any): boolean {
        return this._dart_shouldReload(old);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getType(): Type {
        return this._dart_getType();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
