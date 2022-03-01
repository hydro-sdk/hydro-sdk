
import { IRouteSettings } from "./routeSettings";
import { INavigatorState } from "./navigatorState";
import { IValueListenable } from "../foundation/valueListenable";
import { IList } from "../../dart/core/list";
import { IOverlayEntry } from "./overlayEntry";
import { ITickerFuture } from "../scheduler/tickerFuture";
import { IFuture } from "../../dart/async/future";
import { RoutePopDisposition } from "./routePopDisposition";
declare const flutter: {
widgets: {
route: <T>(this: void, route: IRoute<T>, props? : {  settings? : IRouteSettings | undefined,}) => IRoute<T>
}
};
export interface IRoute
<T>

{
getNavigator: () => INavigatorState | undefined;
getSettings: () => IRouteSettings;
getRestorationScopeId: () => IValueListenable<string | undefined>;
getOverlayEntries: () => IList<IOverlayEntry>;
install: () => void;
didPush: () => ITickerFuture;
didAdd: () => void;
didReplace: (oldRoute?: IRoute<any> | undefined) => void;
willPop: () => IFuture<RoutePopDisposition>;
getWillHandlePopInternally: () => boolean;
getCurrentResult: () => T | undefined;
getPopped: () => IFuture<T | undefined>;
didPop: (result?: T | undefined) => boolean;
didComplete: (result?: T | undefined) => void;
didPopNext: (nextRoute: IRoute<any>) => void;
didChangeNext: (nextRoute?: IRoute<any> | undefined) => void;
didChangePrevious: (previousRoute?: IRoute<any> | undefined) => void;
changedInternalState: () => void;
changedExternalState: () => void;
dispose: () => void;
getIsCurrent: () => boolean;
getIsFirst: () => boolean;
getHasActiveRouteBelow: () => boolean;
getIsActive: () => boolean;
}export class Route
<T>

{public constructor( props? : {  settings? : IRouteSettings | undefined,}){
flutter.widgets.route(this, props);}
    private readonly _dart_getNavigator: () => INavigatorState | undefined = undefined as any;
    private readonly _dart_getSettings: () => IRouteSettings = undefined as any;
    private readonly _dart_getRestorationScopeId: () => IValueListenable<string | undefined> = undefined as any;
    private readonly _dart_getOverlayEntries: () => IList<IOverlayEntry> = undefined as any;
    private readonly _dart_install: () => void = undefined as any;
    private readonly _dart_didPush: () => ITickerFuture = undefined as any;
    private readonly _dart_didAdd: () => void = undefined as any;
    private readonly _dart_didReplace: (oldRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_willPop: () => IFuture<RoutePopDisposition> = undefined as any;
    private readonly _dart_getWillHandlePopInternally: () => boolean = undefined as any;
    private readonly _dart_getCurrentResult: () => T | undefined = undefined as any;
    private readonly _dart_getPopped: () => IFuture<T | undefined> = undefined as any;
    private readonly _dart_didPop: (result?: T | undefined) => boolean = undefined as any;
    private readonly _dart_didComplete: (result?: T | undefined) => void = undefined as any;
    private readonly _dart_didPopNext: (nextRoute: IRoute<any>) => void = undefined as any;
    private readonly _dart_didChangeNext: (nextRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_didChangePrevious: (previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_changedInternalState: () => void = undefined as any;
    private readonly _dart_changedExternalState: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getIsCurrent: () => boolean = undefined as any;
    private readonly _dart_getIsFirst: () => boolean = undefined as any;
    private readonly _dart_getHasActiveRouteBelow: () => boolean = undefined as any;
    private readonly _dart_getIsActive: () => boolean = undefined as any;
public getNavigator() : INavigatorState | undefined {
    return this._dart_getNavigator();
}
public getSettings() : IRouteSettings {
    return this._dart_getSettings();
}
public getRestorationScopeId() : IValueListenable<string | undefined> {
    return this._dart_getRestorationScopeId();
}
public getOverlayEntries() : IList<IOverlayEntry> {
    return this._dart_getOverlayEntries();
}
public install() : void {
    return this._dart_install();
}
public didPush() : ITickerFuture {
    return this._dart_didPush();
}
public didAdd() : void {
    return this._dart_didAdd();
}
public didReplace(oldRoute?: IRoute<any> | undefined) : void {
    return this._dart_didReplace(oldRoute);
}
public willPop() : IFuture<RoutePopDisposition> {
    return this._dart_willPop();
}
public getWillHandlePopInternally() : boolean {
    return this._dart_getWillHandlePopInternally();
}
public getCurrentResult() : T | undefined {
    return this._dart_getCurrentResult();
}
public getPopped() : IFuture<T | undefined> {
    return this._dart_getPopped();
}
public didPop(result?: T | undefined) : boolean {
    return this._dart_didPop(result);
}
public didComplete(result?: T | undefined) : void {
    return this._dart_didComplete(result);
}
public didPopNext(nextRoute: IRoute<any>) : void {
    return this._dart_didPopNext(nextRoute);
}
public didChangeNext(nextRoute?: IRoute<any> | undefined) : void {
    return this._dart_didChangeNext(nextRoute);
}
public didChangePrevious(previousRoute?: IRoute<any> | undefined) : void {
    return this._dart_didChangePrevious(previousRoute);
}
public changedInternalState() : void {
    return this._dart_changedInternalState();
}
public changedExternalState() : void {
    return this._dart_changedExternalState();
}
public dispose() : void {
    return this._dart_dispose();
}
public getIsCurrent() : boolean {
    return this._dart_getIsCurrent();
}
public getIsFirst() : boolean {
    return this._dart_getIsFirst();
}
public getHasActiveRouteBelow() : boolean {
    return this._dart_getHasActiveRouteBelow();
}
public getIsActive() : boolean {
    return this._dart_getIsActive();
}
}
