import { IFuture } from "../../dart/async/future";
import { IDuration } from "../../dart/core/duration";
import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { IAnimation } from "../animation/animation";
import { IAnimationController } from "../animation/animationController";
import { IValueListenable } from "../foundation/valueListenable";
import { ITickerFuture } from "../scheduler/tickerFuture";
import { INavigatorState } from "./navigatorState";
import { IOverlayEntry } from "./overlayEntry";
import { IOverlayRoute } from "./overlayRoute";
import { IRoute } from "./route";
import { RoutePopDisposition } from "./routePopDisposition";
import { IRouteSettings } from "./routeSettings";
declare const flutter: {
    widgets: {
        transitionRoute: <T>(
            this: void,
            transitionRoute: ITransitionRoute<T>,
            props?: { settings?: IRouteSettings | undefined }
        ) => ITransitionRoute<T>;
    };
};
export interface ITransitionRoute<T> {
    willDisposeAnimationController: boolean;
    getCompleted: () => IFuture<T | undefined>;
    getTransitionDuration: () => IDuration;
    getReverseTransitionDuration: () => IDuration;
    getOpaque: () => boolean;
    getFinishedWhenPopped: () => boolean;
    getAnimation: () => IAnimation<number> | undefined;
    getController: () => IAnimationController | undefined;
    getSecondaryAnimation: () => IAnimation<number> | undefined;
    createAnimationController: () => IAnimationController;
    createAnimation: () => IAnimation<number>;
    install: () => void;
    didPush: () => ITickerFuture;
    didAdd: () => void;
    didReplace: (oldRoute?: IRoute<any> | undefined) => void;
    didPop: (result?: T | undefined) => boolean;
    didPopNext: (nextRoute: IRoute<any>) => void;
    didChangeNext: (nextRoute?: IRoute<any> | undefined) => void;
    canTransitionTo: (nextRoute: ITransitionRoute<any>) => boolean;
    canTransitionFrom: (previousRoute: ITransitionRoute<any>) => boolean;
    dispose: () => void;
    getDebugLabel: () => string;
    toString: () => string;
    createOverlayEntries: () => IIterable<IOverlayEntry>;
    getOverlayEntries: () => IList<IOverlayEntry>;
    willPop: () => IFuture<RoutePopDisposition>;
    didComplete: (result?: T | undefined) => void;
    didChangePrevious: (previousRoute?: IRoute<any> | undefined) => void;
    changedInternalState: () => void;
    changedExternalState: () => void;
    getNavigator: () => INavigatorState | undefined;
    getSettings: () => IRouteSettings;
    getRestorationScopeId: () => IValueListenable<string | undefined>;
    getWillHandlePopInternally: () => boolean;
    getCurrentResult: () => T | undefined;
    getPopped: () => IFuture<T | undefined>;
    getIsCurrent: () => boolean;
    getIsFirst: () => boolean;
    getHasActiveRouteBelow: () => boolean;
    getIsActive: () => boolean;
    getHashCode: () => number;
}
export class TransitionRoute<T> implements IOverlayRoute<T> {
    public readonly willDisposeAnimationController: boolean = undefined as any;
    public constructor(props?: { settings?: IRouteSettings | undefined }) {
        flutter.widgets.transitionRoute(this, props);
    }
    private readonly _dart_getCompleted: () => IFuture<T | undefined> =
        undefined as any;
    private readonly _dart_getTransitionDuration: () => IDuration =
        undefined as any;
    private readonly _dart_getReverseTransitionDuration: () => IDuration =
        undefined as any;
    private readonly _dart_getOpaque: () => boolean = undefined as any;
    private readonly _dart_getFinishedWhenPopped: () => boolean =
        undefined as any;
    private readonly _dart_getAnimation: () => IAnimation<number> | undefined =
        undefined as any;
    private readonly _dart_getController: () =>
        | IAnimationController
        | undefined = undefined as any;
    private readonly _dart_getSecondaryAnimation: () =>
        | IAnimation<number>
        | undefined = undefined as any;
    private readonly _dart_createAnimationController: () => IAnimationController =
        undefined as any;
    private readonly _dart_createAnimation: () => IAnimation<number> =
        undefined as any;
    private readonly _dart_install: () => void = undefined as any;
    private readonly _dart_didPush: () => ITickerFuture = undefined as any;
    private readonly _dart_didAdd: () => void = undefined as any;
    private readonly _dart_didReplace: (
        oldRoute?: IRoute<any> | undefined
    ) => void = undefined as any;
    private readonly _dart_didPop: (result?: T | undefined) => boolean =
        undefined as any;
    private readonly _dart_didPopNext: (nextRoute: IRoute<any>) => void =
        undefined as any;
    private readonly _dart_didChangeNext: (
        nextRoute?: IRoute<any> | undefined
    ) => void = undefined as any;
    private readonly _dart_canTransitionTo: (
        nextRoute: ITransitionRoute<any>
    ) => boolean = undefined as any;
    private readonly _dart_canTransitionFrom: (
        previousRoute: ITransitionRoute<any>
    ) => boolean = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getDebugLabel: () => string = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_createOverlayEntries: () => IIterable<IOverlayEntry> =
        undefined as any;
    private readonly _dart_getOverlayEntries: () => IList<IOverlayEntry> =
        undefined as any;
    private readonly _dart_willPop: () => IFuture<RoutePopDisposition> =
        undefined as any;
    private readonly _dart_didComplete: (result?: T | undefined) => void =
        undefined as any;
    private readonly _dart_didChangePrevious: (
        previousRoute?: IRoute<any> | undefined
    ) => void = undefined as any;
    private readonly _dart_changedInternalState: () => void = undefined as any;
    private readonly _dart_changedExternalState: () => void = undefined as any;
    private readonly _dart_getNavigator: () => INavigatorState | undefined =
        undefined as any;
    private readonly _dart_getSettings: () => IRouteSettings = undefined as any;
    private readonly _dart_getRestorationScopeId: () => IValueListenable<
        string | undefined
    > = undefined as any;
    private readonly _dart_getWillHandlePopInternally: () => boolean =
        undefined as any;
    private readonly _dart_getCurrentResult: () => T | undefined =
        undefined as any;
    private readonly _dart_getPopped: () => IFuture<T | undefined> =
        undefined as any;
    private readonly _dart_getIsCurrent: () => boolean = undefined as any;
    private readonly _dart_getIsFirst: () => boolean = undefined as any;
    private readonly _dart_getHasActiveRouteBelow: () => boolean =
        undefined as any;
    private readonly _dart_getIsActive: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getCompleted(): IFuture<T | undefined> {
        return this._dart_getCompleted();
    }
    public getTransitionDuration(): IDuration {
        return this._dart_getTransitionDuration();
    }
    public getReverseTransitionDuration(): IDuration {
        return this._dart_getReverseTransitionDuration();
    }
    public getOpaque(): boolean {
        return this._dart_getOpaque();
    }
    public getFinishedWhenPopped(): boolean {
        return this._dart_getFinishedWhenPopped();
    }
    public getAnimation(): IAnimation<number> | undefined {
        return this._dart_getAnimation();
    }
    public getController(): IAnimationController | undefined {
        return this._dart_getController();
    }
    public getSecondaryAnimation(): IAnimation<number> | undefined {
        return this._dart_getSecondaryAnimation();
    }
    public createAnimationController(): IAnimationController {
        return this._dart_createAnimationController();
    }
    public createAnimation(): IAnimation<number> {
        return this._dart_createAnimation();
    }
    public install(): void {
        return this._dart_install();
    }
    public didPush(): ITickerFuture {
        return this._dart_didPush();
    }
    public didAdd(): void {
        return this._dart_didAdd();
    }
    public didReplace(oldRoute?: IRoute<any> | undefined): void {
        return this._dart_didReplace(oldRoute);
    }
    public didPop(result?: T | undefined): boolean {
        return this._dart_didPop(result);
    }
    public didPopNext(nextRoute: IRoute<any>): void {
        return this._dart_didPopNext(nextRoute);
    }
    public didChangeNext(nextRoute?: IRoute<any> | undefined): void {
        return this._dart_didChangeNext(nextRoute);
    }
    public canTransitionTo(nextRoute: ITransitionRoute<any>): boolean {
        return this._dart_canTransitionTo(nextRoute);
    }
    public canTransitionFrom(previousRoute: ITransitionRoute<any>): boolean {
        return this._dart_canTransitionFrom(previousRoute);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getDebugLabel(): string {
        return this._dart_getDebugLabel();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public createOverlayEntries(): IIterable<IOverlayEntry> {
        return this._dart_createOverlayEntries();
    }
    public getOverlayEntries(): IList<IOverlayEntry> {
        return this._dart_getOverlayEntries();
    }
    public willPop(): IFuture<RoutePopDisposition> {
        return this._dart_willPop();
    }
    public didComplete(result?: T | undefined): void {
        return this._dart_didComplete(result);
    }
    public didChangePrevious(previousRoute?: IRoute<any> | undefined): void {
        return this._dart_didChangePrevious(previousRoute);
    }
    public changedInternalState(): void {
        return this._dart_changedInternalState();
    }
    public changedExternalState(): void {
        return this._dart_changedExternalState();
    }
    public getNavigator(): INavigatorState | undefined {
        return this._dart_getNavigator();
    }
    public getSettings(): IRouteSettings {
        return this._dart_getSettings();
    }
    public getRestorationScopeId(): IValueListenable<string | undefined> {
        return this._dart_getRestorationScopeId();
    }
    public getWillHandlePopInternally(): boolean {
        return this._dart_getWillHandlePopInternally();
    }
    public getCurrentResult(): T | undefined {
        return this._dart_getCurrentResult();
    }
    public getPopped(): IFuture<T | undefined> {
        return this._dart_getPopped();
    }
    public getIsCurrent(): boolean {
        return this._dart_getIsCurrent();
    }
    public getIsFirst(): boolean {
        return this._dart_getIsFirst();
    }
    public getHasActiveRouteBelow(): boolean {
        return this._dart_getHasActiveRouteBelow();
    }
    public getIsActive(): boolean {
        return this._dart_getIsActive();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
