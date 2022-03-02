import { IFuture } from "../../dart/async/future";
import { IList } from "../../dart/core/list";
import { AppLifecycleState } from "../../dart/ui/appLifecycleState";
import { ILocale } from "../../dart/ui/locale";
import { IBackButtonDispatcher } from "./backButtonDispatcher";
import { IChildBackButtonDispatcher } from "./childBackButtonDispatcher";
import { IRouteInformation } from "./routeInformation";
import { IWidgetsBindingObserver } from "./widgetsBindingObserver";
declare const flutter: {
    widgets: {
        rootBackButtonDispatcher: (
            this: void,
            rootBackButtonDispatcher: IRootBackButtonDispatcher
        ) => IRootBackButtonDispatcher;
    };
};
export interface IRootBackButtonDispatcher {
    addCallback: (callback: () => IFuture<boolean>) => void;
    removeCallback: (callback: () => IFuture<boolean>) => void;
    didPopRoute: () => IFuture<boolean>;
    didPushRoute: (route: string) => IFuture<boolean>;
    didPushRouteInformation: (
        routeInformation: IRouteInformation
    ) => IFuture<boolean>;
    didChangeMetrics: () => void;
    didChangeTextScaleFactor: () => void;
    didChangePlatformBrightness: () => void;
    didChangeLocales: (locales?: IList<ILocale> | undefined) => void;
    didChangeAppLifecycleState: (state: AppLifecycleState) => void;
    didHaveMemoryPressure: () => void;
    didChangeAccessibilityFeatures: () => void;
    invokeCallback: (defaultValue: IFuture<boolean>) => IFuture<boolean>;
    createChildBackButtonDispatcher: () => IChildBackButtonDispatcher;
    takePriority: () => void;
    deferTo: (child: IChildBackButtonDispatcher) => void;
    forget: (child: IChildBackButtonDispatcher) => void;
    getHasCallbacks: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class RootBackButtonDispatcher
    implements IBackButtonDispatcher, IWidgetsBindingObserver
{
    public constructor() {
        flutter.widgets.rootBackButtonDispatcher(this);
    }
    private readonly _dart_addCallback: (
        callback: () => IFuture<boolean>
    ) => void = undefined as any;
    private readonly _dart_removeCallback: (
        callback: () => IFuture<boolean>
    ) => void = undefined as any;
    private readonly _dart_didPopRoute: () => IFuture<boolean> =
        undefined as any;
    private readonly _dart_didPushRoute: (route: string) => IFuture<boolean> =
        undefined as any;
    private readonly _dart_didPushRouteInformation: (
        routeInformation: IRouteInformation
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_didChangeMetrics: () => void = undefined as any;
    private readonly _dart_didChangeTextScaleFactor: () => void =
        undefined as any;
    private readonly _dart_didChangePlatformBrightness: () => void =
        undefined as any;
    private readonly _dart_didChangeLocales: (
        locales?: IList<ILocale> | undefined
    ) => void = undefined as any;
    private readonly _dart_didChangeAppLifecycleState: (
        state: AppLifecycleState
    ) => void = undefined as any;
    private readonly _dart_didHaveMemoryPressure: () => void = undefined as any;
    private readonly _dart_didChangeAccessibilityFeatures: () => void =
        undefined as any;
    private readonly _dart_invokeCallback: (
        defaultValue: IFuture<boolean>
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_createChildBackButtonDispatcher: () => IChildBackButtonDispatcher =
        undefined as any;
    private readonly _dart_takePriority: () => void = undefined as any;
    private readonly _dart_deferTo: (
        child: IChildBackButtonDispatcher
    ) => void = undefined as any;
    private readonly _dart_forget: (child: IChildBackButtonDispatcher) => void =
        undefined as any;
    private readonly _dart_getHasCallbacks: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public addCallback(callback: () => IFuture<boolean>): void {
        return this._dart_addCallback(callback);
    }
    public removeCallback(callback: () => IFuture<boolean>): void {
        return this._dart_removeCallback(callback);
    }
    public didPopRoute(): IFuture<boolean> {
        return this._dart_didPopRoute();
    }
    public didPushRoute(route: string): IFuture<boolean> {
        return this._dart_didPushRoute(route);
    }
    public didPushRouteInformation(
        routeInformation: IRouteInformation
    ): IFuture<boolean> {
        return this._dart_didPushRouteInformation(routeInformation);
    }
    public didChangeMetrics(): void {
        return this._dart_didChangeMetrics();
    }
    public didChangeTextScaleFactor(): void {
        return this._dart_didChangeTextScaleFactor();
    }
    public didChangePlatformBrightness(): void {
        return this._dart_didChangePlatformBrightness();
    }
    public didChangeLocales(locales?: IList<ILocale> | undefined): void {
        return this._dart_didChangeLocales(locales);
    }
    public didChangeAppLifecycleState(state: AppLifecycleState): void {
        return this._dart_didChangeAppLifecycleState(state);
    }
    public didHaveMemoryPressure(): void {
        return this._dart_didHaveMemoryPressure();
    }
    public didChangeAccessibilityFeatures(): void {
        return this._dart_didChangeAccessibilityFeatures();
    }
    public invokeCallback(defaultValue: IFuture<boolean>): IFuture<boolean> {
        return this._dart_invokeCallback(defaultValue);
    }
    public createChildBackButtonDispatcher(): IChildBackButtonDispatcher {
        return this._dart_createChildBackButtonDispatcher();
    }
    public takePriority(): void {
        return this._dart_takePriority();
    }
    public deferTo(child: IChildBackButtonDispatcher): void {
        return this._dart_deferTo(child);
    }
    public forget(child: IChildBackButtonDispatcher): void {
        return this._dart_forget(child);
    }
    public getHasCallbacks(): boolean {
        return this._dart_getHasCallbacks();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
