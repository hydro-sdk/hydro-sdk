
import { IWidgetsLocalizations } from "./widgetsLocalizations";
import { ILocale } from "../../dart/ui/locale";
import { IFuture } from "../../dart/async/future";
import { TextDirection } from "../../dart/ui/textDirection";
declare const flutter: {
widgets: {
defaultWidgetsLocalizations: (this: void, defaultWidgetsLocalizations: IDefaultWidgetsLocalizations) => IDefaultWidgetsLocalizations;
defaultWidgetsLocalizationsLoad: (locale: ILocale) => IFuture<IWidgetsLocalizations>
}
};
export interface IDefaultWidgetsLocalizations


{
getTextDirection: () => TextDirection;
}export class DefaultWidgetsLocalizations

 implements IWidgetsLocalizations
{public constructor(){
flutter.widgets.defaultWidgetsLocalizations(this);}
public static load(locale: ILocale) : IFuture<IWidgetsLocalizations>{
return flutter.widgets.defaultWidgetsLocalizationsLoad(locale);
}    private readonly _dart_getTextDirection: () => TextDirection = undefined as any;
public getTextDirection() : TextDirection {
    return this._dart_getTextDirection();
}
}
