import { IFuture } from "../../dart/async/future";
import { Type } from "../../dart/core/type";
import { ILocale } from "../../dart/ui/locale";
import { ILocalizationsDelegate } from "./localizationsDelegate";
import { IWidgetsLocalizations } from "./widgetsLocalizations";
declare const flutter: {
    widgets: {
        _widgetsLocalizationsDelegate: (
            this: void,
            _widgetsLocalizationsDelegate: I_WidgetsLocalizationsDelegate
        ) => I_WidgetsLocalizationsDelegate;
    };
};
export interface I_WidgetsLocalizationsDelegate {
    isSupported: (locale: ILocale) => boolean;
    load: (locale: ILocale) => IFuture<IWidgetsLocalizations>;
    shouldReload: (old: unknown) => boolean;
    toString: () => string;
    getType: () => Type;
    getHashCode: () => number;
}
export class _WidgetsLocalizationsDelegate
    implements ILocalizationsDelegate<IWidgetsLocalizations>
{
    public constructor() {
        flutter.widgets._widgetsLocalizationsDelegate(this);
    }
    private readonly _dart_isSupported: (locale: ILocale) => boolean =
        undefined as any;
    private readonly _dart_load: (
        locale: ILocale
    ) => IFuture<IWidgetsLocalizations> = undefined as any;
    private readonly _dart_shouldReload: (old: any) => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getType: () => Type = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public isSupported(locale: ILocale): boolean {
        return this._dart_isSupported(locale);
    }
    public load(locale: ILocale): IFuture<IWidgetsLocalizations> {
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
