
import { ILocale } from "../../dart/ui/locale";
import { IFuture } from "../../dart/async/future";
import { Type } from "../../dart/core/type";
declare const flutter: {
widgets: {
localizationsDelegate: <T>(this: void, localizationsDelegate: ILocalizationsDelegate<T>) => ILocalizationsDelegate<T>
}
};
export interface ILocalizationsDelegate
<T>

{
isSupported: (locale: ILocale) => boolean;
load: (locale: ILocale) => IFuture<T>;
shouldReload: (old: unknown) => boolean;
getType: () => Type;
toString: () => string;
}export class LocalizationsDelegate
<T>

{public constructor(){
flutter.widgets.localizationsDelegate(this);}
    private readonly _dart_isSupported: (locale: ILocale) => boolean = undefined as any;
    private readonly _dart_load: (locale: ILocale) => IFuture<T> = undefined as any;
    private readonly _dart_shouldReload: (old: any) => boolean = undefined as any;
    private readonly _dart_getType: () => Type = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public isSupported(locale: ILocale) : boolean {
    return this._dart_isSupported(locale);
}
public load(locale: ILocale) : IFuture<T> {
    return this._dart_load(locale);
}
public shouldReload(old: any) : boolean {
    return this._dart_shouldReload(old);
}
public getType() : Type {
    return this._dart_getType();
}
public toString() : string {
    return this._dart_toString();
}
}
