
import { IRoute } from "./route";
import { ITickerFuture } from "../scheduler/tickerFuture";
import { IFuture } from "../../dart/async/future";
import { RoutePopDisposition } from "./routePopDisposition";
import { INavigatorState } from "./navigatorState";
import { IRouteSettings } from "./routeSettings";
import { IValueListenable } from "../foundation/valueListenable";
import { IList } from "../../dart/core/list";
import { IOverlayEntry } from "./overlayEntry";
declare const flutter: {
widgets: {
_notAnnounced: (this: void, _notAnnounced: I_NotAnnounced) => I_NotAnnounced
}
};
export interface I_NotAnnounced


{
install: () => void;
didPush: () => ITickerFuture;
didAdd: () => void;
didReplace: (oldRoute?: IRoute<any> | undefined) => void;
willPop: () => IFuture<RoutePopDisposition>;
didPop: (result: void) => boolean;
didComplete: (result: void) => void;
didPopNext: (nextRoute: IRoute<any>) => void;
didChangeNext: (nextRoute?: IRoute<any> | undefined) => void;
didChangePrevious: (previousRoute?: IRoute<any> | undefined) => void;
changedInternalState: () => void;
changedExternalState: () => void;
dispose: () => void;
getNavigator: () => INavigatorState | undefined;
getSettings: () => IRouteSettings;
getRestorationScopeId: () => IValueListenable<string | undefined>;
getOverlayEntries: () => IList<IOverlayEntry>;
getWillHandlePopInternally: () => boolean;
getCurrentResult: () => void;
getPopped: () => IFuture<void>;
getIsCurrent: () => boolean;
getIsFirst: () => boolean;
getHasActiveRouteBelow: () => boolean;
getIsActive: () => boolean;
toString: () => string;
getHashCode: () => number;
}export class _NotAnnounced

 implements IRoute
{public constructor(){
flutter.widgets._notAnnounced(this);}
    private readonly _dart_install: () => void = undefined as any;
    private readonly _dart_didPush: () => ITickerFuture = undefined as any;
    private readonly _dart_didAdd: () => void = undefined as any;
    private readonly _dart_didReplace: (oldRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_willPop: () => IFuture<RoutePopDisposition> = undefined as any;
    private readonly _dart_didPop: (result: void) => boolean = undefined as any;
    private readonly _dart_didComplete: (result: void) => void = undefined as any;
    private readonly _dart_didPopNext: (nextRoute: IRoute<any>) => void = undefined as any;
    private readonly _dart_didChangeNext: (nextRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_didChangePrevious: (previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_changedInternalState: () => void = undefined as any;
    private readonly _dart_changedExternalState: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getNavigator: () => INavigatorState | undefined = undefined as any;
    private readonly _dart_getSettings: () => IRouteSettings = undefined as any;
    private readonly _dart_getRestorationScopeId: () => IValueListenable<string | undefined> = undefined as any;
    private readonly _dart_getOverlayEntries: () => IList<IOverlayEntry> = undefined as any;
    private readonly _dart_getWillHandlePopInternally: () => boolean = undefined as any;
    private readonly _dart_getCurrentResult: () => void = undefined as any;
    private readonly _dart_getPopped: () => IFuture<void> = undefined as any;
    private readonly _dart_getIsCurrent: () => boolean = undefined as any;
    private readonly _dart_getIsFirst: () => boolean = undefined as any;
    private readonly _dart_getHasActiveRouteBelow: () => boolean = undefined as any;
    private readonly _dart_getIsActive: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
public didPop(result: void) : boolean {
    return this._dart_didPop(result);
}
public didComplete(result: void) : void {
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
public getWillHandlePopInternally() : boolean {
    return this._dart_getWillHandlePopInternally();
}
public getCurrentResult() : void {
    return this._dart_getCurrentResult();
}
public getPopped() : IFuture<void> {
    return this._dart_getPopped();
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
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
