
import { IFuture } from "../../dart/async/future";
import { IRouteInformation } from "./routeInformation";
import { IList } from "../../dart/core/list";
import { ILocale } from "../../dart/ui/locale";
import { AppLifecycleState } from "../../dart/ui/appLifecycleState";
declare const flutter: {
widgets: {
widgetsBindingObserver: (this: void, widgetsBindingObserver: IWidgetsBindingObserver) => IWidgetsBindingObserver
}
};
export interface IWidgetsBindingObserver


{
didPopRoute: () => IFuture<boolean>;
didPushRoute: (route: string) => IFuture<boolean>;
didPushRouteInformation: (routeInformation: IRouteInformation) => IFuture<boolean>;
didChangeMetrics: () => void;
didChangeTextScaleFactor: () => void;
didChangePlatformBrightness: () => void;
didChangeLocales: (locales?: IList<ILocale> | undefined) => void;
didChangeAppLifecycleState: (state: AppLifecycleState) => void;
didHaveMemoryPressure: () => void;
didChangeAccessibilityFeatures: () => void;
}export class WidgetsBindingObserver


{public constructor(){
flutter.widgets.widgetsBindingObserver(this);}
    private readonly _dart_didPopRoute: () => IFuture<boolean> = undefined as any;
    private readonly _dart_didPushRoute: (route: string) => IFuture<boolean> = undefined as any;
    private readonly _dart_didPushRouteInformation: (routeInformation: IRouteInformation) => IFuture<boolean> = undefined as any;
    private readonly _dart_didChangeMetrics: () => void = undefined as any;
    private readonly _dart_didChangeTextScaleFactor: () => void = undefined as any;
    private readonly _dart_didChangePlatformBrightness: () => void = undefined as any;
    private readonly _dart_didChangeLocales: (locales?: IList<ILocale> | undefined) => void = undefined as any;
    private readonly _dart_didChangeAppLifecycleState: (state: AppLifecycleState) => void = undefined as any;
    private readonly _dart_didHaveMemoryPressure: () => void = undefined as any;
    private readonly _dart_didChangeAccessibilityFeatures: () => void = undefined as any;
public didPopRoute() : IFuture<boolean> {
    return this._dart_didPopRoute();
}
public didPushRoute(route: string) : IFuture<boolean> {
    return this._dart_didPushRoute(route);
}
public didPushRouteInformation(routeInformation: IRouteInformation) : IFuture<boolean> {
    return this._dart_didPushRouteInformation(routeInformation);
}
public didChangeMetrics() : void {
    return this._dart_didChangeMetrics();
}
public didChangeTextScaleFactor() : void {
    return this._dart_didChangeTextScaleFactor();
}
public didChangePlatformBrightness() : void {
    return this._dart_didChangePlatformBrightness();
}
public didChangeLocales(locales?: IList<ILocale> | undefined) : void {
    return this._dart_didChangeLocales(locales);
}
public didChangeAppLifecycleState(state: AppLifecycleState) : void {
    return this._dart_didChangeAppLifecycleState(state);
}
public didHaveMemoryPressure() : void {
    return this._dart_didHaveMemoryPressure();
}
public didChangeAccessibilityFeatures() : void {
    return this._dart_didChangeAccessibilityFeatures();
}
}
