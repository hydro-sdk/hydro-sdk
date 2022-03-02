import { IFuture } from "../../dart/async/future";
import { Type } from "../../dart/core/type";
import { ILocale } from "../../dart/ui/locale";
import { ILocalizationsDelegate } from "../widgets/localizationsDelegate";
import { ICupertinoLocalizations } from "./cupertinoLocalizations";
declare const flutter: {
    cupertino: {
        _cupertinoLocalizationsDelegate: (
            this: void,
            _cupertinoLocalizationsDelegate: I_CupertinoLocalizationsDelegate
        ) => I_CupertinoLocalizationsDelegate;
    };
};
export interface I_CupertinoLocalizationsDelegate {
    isSupported: (locale: ILocale) => boolean;
    load: (locale: ILocale) => IFuture<ICupertinoLocalizations>;
    shouldReload: (old: unknown) => boolean;
    toString: () => string;
    getType: () => Type;
    getHashCode: () => number;
}
export class _CupertinoLocalizationsDelegate
    implements ILocalizationsDelegate<ICupertinoLocalizations>
{
    public constructor() {
        flutter.cupertino._cupertinoLocalizationsDelegate(this);
    }
    private readonly _dart_isSupported: (locale: ILocale) => boolean =
        undefined as any;
    private readonly _dart_load: (
        locale: ILocale
    ) => IFuture<ICupertinoLocalizations> = undefined as any;
    private readonly _dart_shouldReload: (old: any) => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getType: () => Type = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public isSupported(locale: ILocale): boolean {
        return this._dart_isSupported(locale);
    }
    public load(locale: ILocale): IFuture<ICupertinoLocalizations> {
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
