
import { IRouteInformation } from "./routeInformation";
import { IRouteInformationProvider } from "./routeInformationProvider";
import { RouteInformationReportingType } from "./routeInformationReportingType";
import { IListenable } from "../foundation/listenable";
import { IWidgetsBindingObserver } from "./widgetsBindingObserver";
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IFuture } from "../../dart/async/future";
import { IList } from "../../dart/core/list";
import { ILocale } from "../../dart/ui/locale";
import { AppLifecycleState } from "../../dart/ui/appLifecycleState";
declare const flutter: {
widgets: {
platformRouteInformationProvider: (this: void, platformRouteInformationProvider: IPlatformRouteInformationProvider, props : {  initialRouteInformation : IRouteInformation,}) => IPlatformRouteInformationProvider
}
};
export interface IPlatformRouteInformationProvider


{
routerReportsNewRouteInformation: (routeInformation: IRouteInformation, props : {  type : RouteInformationReportingType,}) => void;
getValue: () => IRouteInformation;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
dispose: () => void;
didPushRouteInformation: (routeInformation: IRouteInformation) => IFuture<boolean>;
didPushRoute: (route: string) => IFuture<boolean>;
didPopRoute: () => IFuture<boolean>;
didChangeMetrics: () => void;
didChangeTextScaleFactor: () => void;
didChangePlatformBrightness: () => void;
didChangeLocales: (locales?: IList<ILocale> | undefined) => void;
didChangeAppLifecycleState: (state: AppLifecycleState) => void;
didHaveMemoryPressure: () => void;
didChangeAccessibilityFeatures: () => void;
getHasListeners: () => boolean;
toString: () => string;
getHashCode: () => number;
}export class PlatformRouteInformationProvider

 implements IRouteInformationProvider, IWidgetsBindingObserver, IChangeNotifier, IListenable
{public constructor( props : {  initialRouteInformation : IRouteInformation,}){
flutter.widgets.platformRouteInformationProvider(this, props);}
    private readonly _dart_routerReportsNewRouteInformation: (routeInformation: IRouteInformation, props : {  type : RouteInformationReportingType,}) => void = undefined as any;
    private readonly _dart_getValue: () => IRouteInformation = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didPushRouteInformation: (routeInformation: IRouteInformation) => IFuture<boolean> = undefined as any;
    private readonly _dart_didPushRoute: (route: string) => IFuture<boolean> = undefined as any;
    private readonly _dart_didPopRoute: () => IFuture<boolean> = undefined as any;
    private readonly _dart_didChangeMetrics: () => void = undefined as any;
    private readonly _dart_didChangeTextScaleFactor: () => void = undefined as any;
    private readonly _dart_didChangePlatformBrightness: () => void = undefined as any;
    private readonly _dart_didChangeLocales: (locales?: IList<ILocale> | undefined) => void = undefined as any;
    private readonly _dart_didChangeAppLifecycleState: (state: AppLifecycleState) => void = undefined as any;
    private readonly _dart_didHaveMemoryPressure: () => void = undefined as any;
    private readonly _dart_didChangeAccessibilityFeatures: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public routerReportsNewRouteInformation(routeInformation: IRouteInformation, props : {  type : RouteInformationReportingType,}) : void {
    return this._dart_routerReportsNewRouteInformation(routeInformation, props);
}
public getValue() : IRouteInformation {
    return this._dart_getValue();
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public dispose() : void {
    return this._dart_dispose();
}
public didPushRouteInformation(routeInformation: IRouteInformation) : IFuture<boolean> {
    return this._dart_didPushRouteInformation(routeInformation);
}
public didPushRoute(route: string) : IFuture<boolean> {
    return this._dart_didPushRoute(route);
}
public didPopRoute() : IFuture<boolean> {
    return this._dart_didPopRoute();
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
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public getHasListeners() : boolean {
    return this._dart_getHasListeners();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
