
import { IRouteSettings } from "./routeSettings";
import { IModalRoute } from "./modalRoute";
import { ILocalHistoryRoute } from "./localHistoryRoute";
import { IBuildContext } from "./buildContext";
import { IAnimation } from "../animation/animation";
import { IWidget } from "./widget";
import { ITickerFuture } from "../scheduler/tickerFuture";
import { IFuture } from "../../dart/async/future";
import { RoutePopDisposition } from "./routePopDisposition";
import { IRoute } from "./route";
import { IIterable } from "../../dart/core/iterable";
import { IOverlayEntry } from "./overlayEntry";
import { IColor } from "../../dart/ui/color";
import { ICurve } from "../animation/curve";
import { IImageFilter } from "../../dart/ui/imageFilter";
import { ITransitionRoute } from "./transitionRoute";
import { ILocalHistoryEntry } from "./localHistoryEntry";
import { IAnimationController } from "../animation/animationController";
import { IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { INavigatorState } from "./navigatorState";
import { IValueListenable } from "../foundation/valueListenable";
declare const flutter: {
widgets: {
pageRoute: <T>(this: void, pageRoute: IPageRoute<T>, props : {  fullscreenDialog : boolean, settings? : IRouteSettings | undefined,}) => IPageRoute<T>
}
};
export interface IPageRoute
<T>

{
fullscreenDialog: boolean;
filter: IImageFilter | undefined;
willDisposeAnimationController: boolean;
getOpaque: () => boolean;
getBarrierDismissible: () => boolean;
canTransitionTo: (nextRoute: ITransitionRoute<any>) => boolean;
canTransitionFrom: (previousRoute: ITransitionRoute<any>) => boolean;
setState: (fn : () => void) => void;
buildPage: (context: IBuildContext, animation: IAnimation<number>, secondaryAnimation: IAnimation<number>) => IWidget;
buildTransitions: (context: IBuildContext, animation: IAnimation<number>, secondaryAnimation: IAnimation<number>, child: IWidget) => IWidget;
install: () => void;
didPush: () => ITickerFuture;
didAdd: () => void;
willPop: () => IFuture<RoutePopDisposition>;
addScopedWillPopCallback: (callback : () => IFuture<boolean>) => void;
removeScopedWillPopCallback: (callback : () => IFuture<boolean>) => void;
didChangePrevious: (previousRoute?: IRoute<any> | undefined) => void;
changedInternalState: () => void;
changedExternalState: () => void;
createOverlayEntries: () => IIterable<IOverlayEntry>;
toString: () => string;
getSemanticsDismissible: () => boolean;
getBarrierColor: () => IColor | undefined;
getBarrierLabel: () => string | undefined;
getBarrierCurve: () => ICurve;
getMaintainState: () => boolean;
getOffstage: () => boolean;
setOffstage: (value: boolean) => void;
getSubtreeContext: () => IBuildContext | undefined;
getAnimation: () => IAnimation<number> | undefined;
getSecondaryAnimation: () => IAnimation<number> | undefined;
getHasScopedWillPopCallback: () => boolean;
getCanPop: () => boolean;
addLocalHistoryEntry: (entry: ILocalHistoryEntry) => void;
removeLocalHistoryEntry: (entry: ILocalHistoryEntry) => void;
didPop: (result?: T | undefined) => boolean;
getWillHandlePopInternally: () => boolean;
createAnimationController: () => IAnimationController;
createAnimation: () => IAnimation<number>;
didReplace: (oldRoute?: IRoute<any> | undefined) => void;
didPopNext: (nextRoute: IRoute<any>) => void;
didChangeNext: (nextRoute?: IRoute<any> | undefined) => void;
dispose: () => void;
getCompleted: () => IFuture<T | undefined>;
getTransitionDuration: () => IDuration;
getReverseTransitionDuration: () => IDuration;
getFinishedWhenPopped: () => boolean;
getController: () => IAnimationController | undefined;
getDebugLabel: () => string;
getOverlayEntries: () => IList<IOverlayEntry>;
didComplete: (result?: T | undefined) => void;
getNavigator: () => INavigatorState | undefined;
getSettings: () => IRouteSettings;
getRestorationScopeId: () => IValueListenable<string | undefined>;
getCurrentResult: () => T | undefined;
getPopped: () => IFuture<T | undefined>;
getIsCurrent: () => boolean;
getIsFirst: () => boolean;
getHasActiveRouteBelow: () => boolean;
getIsActive: () => boolean;
getHashCode: () => number;
}export class PageRoute
<T>
 implements Omit<IModalRoute<T>, "didPop">, ILocalHistoryRoute<T>
{    public readonly fullscreenDialog: boolean = undefined as any;
    public readonly filter: IImageFilter | undefined = undefined as any;
    public readonly willDisposeAnimationController: boolean = undefined as any;
public constructor( props : {  fullscreenDialog? : boolean, settings? : IRouteSettings | undefined,}){
flutter.widgets.pageRoute(this, {
...pageRouteDefaultProps,
...props
});}
    private readonly _dart_getOpaque: () => boolean = undefined as any;
    private readonly _dart_getBarrierDismissible: () => boolean = undefined as any;
    private readonly _dart_canTransitionTo: (nextRoute: ITransitionRoute<any>) => boolean = undefined as any;
    private readonly _dart_canTransitionFrom: (previousRoute: ITransitionRoute<any>) => boolean = undefined as any;
    private readonly _dart_setState: (fn : () => void) => void = undefined as any;
    private readonly _dart_buildPage: (context: IBuildContext, animation: IAnimation<number>, secondaryAnimation: IAnimation<number>) => IWidget = undefined as any;
    private readonly _dart_buildTransitions: (context: IBuildContext, animation: IAnimation<number>, secondaryAnimation: IAnimation<number>, child: IWidget) => IWidget = undefined as any;
    private readonly _dart_install: () => void = undefined as any;
    private readonly _dart_didPush: () => ITickerFuture = undefined as any;
    private readonly _dart_didAdd: () => void = undefined as any;
    private readonly _dart_willPop: () => IFuture<RoutePopDisposition> = undefined as any;
    private readonly _dart_addScopedWillPopCallback: (callback : () => IFuture<boolean>) => void = undefined as any;
    private readonly _dart_removeScopedWillPopCallback: (callback : () => IFuture<boolean>) => void = undefined as any;
    private readonly _dart_didChangePrevious: (previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_changedInternalState: () => void = undefined as any;
    private readonly _dart_changedExternalState: () => void = undefined as any;
    private readonly _dart_createOverlayEntries: () => IIterable<IOverlayEntry> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getSemanticsDismissible: () => boolean = undefined as any;
    private readonly _dart_getBarrierColor: () => IColor | undefined = undefined as any;
    private readonly _dart_getBarrierLabel: () => string | undefined = undefined as any;
    private readonly _dart_getBarrierCurve: () => ICurve = undefined as any;
    private readonly _dart_getMaintainState: () => boolean = undefined as any;
    private readonly _dart_getOffstage: () => boolean = undefined as any;
    private readonly _dart_setOffstage: (value: boolean) => void = undefined as any;
    private readonly _dart_getSubtreeContext: () => IBuildContext | undefined = undefined as any;
    private readonly _dart_getAnimation: () => IAnimation<number> | undefined = undefined as any;
    private readonly _dart_getSecondaryAnimation: () => IAnimation<number> | undefined = undefined as any;
    private readonly _dart_getHasScopedWillPopCallback: () => boolean = undefined as any;
    private readonly _dart_getCanPop: () => boolean = undefined as any;
    private readonly _dart_addLocalHistoryEntry: (entry: ILocalHistoryEntry) => void = undefined as any;
    private readonly _dart_removeLocalHistoryEntry: (entry: ILocalHistoryEntry) => void = undefined as any;
    private readonly _dart_didPop: (result?: T | undefined) => boolean = undefined as any;
    private readonly _dart_getWillHandlePopInternally: () => boolean = undefined as any;
    private readonly _dart_createAnimationController: () => IAnimationController = undefined as any;
    private readonly _dart_createAnimation: () => IAnimation<number> = undefined as any;
    private readonly _dart_didReplace: (oldRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_didPopNext: (nextRoute: IRoute<any>) => void = undefined as any;
    private readonly _dart_didChangeNext: (nextRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getCompleted: () => IFuture<T | undefined> = undefined as any;
    private readonly _dart_getTransitionDuration: () => IDuration = undefined as any;
    private readonly _dart_getReverseTransitionDuration: () => IDuration = undefined as any;
    private readonly _dart_getFinishedWhenPopped: () => boolean = undefined as any;
    private readonly _dart_getController: () => IAnimationController | undefined = undefined as any;
    private readonly _dart_getDebugLabel: () => string = undefined as any;
    private readonly _dart_getOverlayEntries: () => IList<IOverlayEntry> = undefined as any;
    private readonly _dart_didComplete: (result?: T | undefined) => void = undefined as any;
    private readonly _dart_getNavigator: () => INavigatorState | undefined = undefined as any;
    private readonly _dart_getSettings: () => IRouteSettings = undefined as any;
    private readonly _dart_getRestorationScopeId: () => IValueListenable<string | undefined> = undefined as any;
    private readonly _dart_getCurrentResult: () => T | undefined = undefined as any;
    private readonly _dart_getPopped: () => IFuture<T | undefined> = undefined as any;
    private readonly _dart_getIsCurrent: () => boolean = undefined as any;
    private readonly _dart_getIsFirst: () => boolean = undefined as any;
    private readonly _dart_getHasActiveRouteBelow: () => boolean = undefined as any;
    private readonly _dart_getIsActive: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getOpaque() : boolean {
    return this._dart_getOpaque();
}
public getBarrierDismissible() : boolean {
    return this._dart_getBarrierDismissible();
}
public canTransitionTo(nextRoute: ITransitionRoute<any>) : boolean {
    return this._dart_canTransitionTo(nextRoute);
}
public canTransitionFrom(previousRoute: ITransitionRoute<any>) : boolean {
    return this._dart_canTransitionFrom(previousRoute);
}
public setState(fn : () => void) : void {
    return this._dart_setState(fn);
}
public buildPage(context: IBuildContext, animation: IAnimation<number>, secondaryAnimation: IAnimation<number>) : IWidget {
    return this._dart_buildPage(context, animation, secondaryAnimation);
}
public buildTransitions(context: IBuildContext, animation: IAnimation<number>, secondaryAnimation: IAnimation<number>, child: IWidget) : IWidget {
    return this._dart_buildTransitions(context, animation, secondaryAnimation, child);
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
public willPop() : IFuture<RoutePopDisposition> {
    return this._dart_willPop();
}
public addScopedWillPopCallback(callback : () => IFuture<boolean>) : void {
    return this._dart_addScopedWillPopCallback(callback);
}
public removeScopedWillPopCallback(callback : () => IFuture<boolean>) : void {
    return this._dart_removeScopedWillPopCallback(callback);
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
public createOverlayEntries() : IIterable<IOverlayEntry> {
    return this._dart_createOverlayEntries();
}
public toString() : string {
    return this._dart_toString();
}
public getSemanticsDismissible() : boolean {
    return this._dart_getSemanticsDismissible();
}
public getBarrierColor() : IColor | undefined {
    return this._dart_getBarrierColor();
}
public getBarrierLabel() : string | undefined {
    return this._dart_getBarrierLabel();
}
public getBarrierCurve() : ICurve {
    return this._dart_getBarrierCurve();
}
public getMaintainState() : boolean {
    return this._dart_getMaintainState();
}
public getOffstage() : boolean {
    return this._dart_getOffstage();
}
public setOffstage(value: boolean) : void {
    return this._dart_setOffstage(value);
}
public getSubtreeContext() : IBuildContext | undefined {
    return this._dart_getSubtreeContext();
}
public getAnimation() : IAnimation<number> | undefined {
    return this._dart_getAnimation();
}
public getSecondaryAnimation() : IAnimation<number> | undefined {
    return this._dart_getSecondaryAnimation();
}
public getHasScopedWillPopCallback() : boolean {
    return this._dart_getHasScopedWillPopCallback();
}
public getCanPop() : boolean {
    return this._dart_getCanPop();
}
public addLocalHistoryEntry(entry: ILocalHistoryEntry) : void {
    return this._dart_addLocalHistoryEntry(entry);
}
public removeLocalHistoryEntry(entry: ILocalHistoryEntry) : void {
    return this._dart_removeLocalHistoryEntry(entry);
}
public didPop(result?: T | undefined) : boolean {
    return this._dart_didPop(result);
}
public getWillHandlePopInternally() : boolean {
    return this._dart_getWillHandlePopInternally();
}
public createAnimationController() : IAnimationController {
    return this._dart_createAnimationController();
}
public createAnimation() : IAnimation<number> {
    return this._dart_createAnimation();
}
public didReplace(oldRoute?: IRoute<any> | undefined) : void {
    return this._dart_didReplace(oldRoute);
}
public didPopNext(nextRoute: IRoute<any>) : void {
    return this._dart_didPopNext(nextRoute);
}
public didChangeNext(nextRoute?: IRoute<any> | undefined) : void {
    return this._dart_didChangeNext(nextRoute);
}
public dispose() : void {
    return this._dart_dispose();
}
public getCompleted() : IFuture<T | undefined> {
    return this._dart_getCompleted();
}
public getTransitionDuration() : IDuration {
    return this._dart_getTransitionDuration();
}
public getReverseTransitionDuration() : IDuration {
    return this._dart_getReverseTransitionDuration();
}
public getFinishedWhenPopped() : boolean {
    return this._dart_getFinishedWhenPopped();
}
public getController() : IAnimationController | undefined {
    return this._dart_getController();
}
public getDebugLabel() : string {
    return this._dart_getDebugLabel();
}
public getOverlayEntries() : IList<IOverlayEntry> {
    return this._dart_getOverlayEntries();
}
public didComplete(result?: T | undefined) : void {
    return this._dart_didComplete(result);
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
public getCurrentResult() : T | undefined {
    return this._dart_getCurrentResult();
}
public getPopped() : IFuture<T | undefined> {
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
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const pageRouteDefaultProps = {
    fullscreenDialog: false,
};
