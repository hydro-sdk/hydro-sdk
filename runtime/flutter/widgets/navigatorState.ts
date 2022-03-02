import { IFuture } from "../../dart/async/future";
import { IDuration } from "../../dart/core/duration";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IValueNotifier } from "../foundation/valueNotifier";
import { ITicker } from "../scheduler/ticker";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IRestorationBucket } from "../services/restorationBucket";
import { IBuildContext } from "./buildContext";
import { IFocusScopeNode } from "./focusScopeNode";
import { INavigator } from "./navigator";
import { IOverlayState } from "./overlayState";
import { IRestorableProperty } from "./restorableProperty";
import { IRestorationMixin } from "./restorationMixin";
import { IRoute } from "./route";
import { IState } from "./state";
import { ITickerProviderStateMixin } from "./tickerProviderStateMixin";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        navigatorState: (
            this: void,
            navigatorState: INavigatorState
        ) => INavigatorState;
    };
};
export interface INavigatorState {
    focusScopeNode: IFocusScopeNode;
    userGestureInProgressNotifier: IValueNotifier<boolean>;
    initState: () => void;
    restoreState: (
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ) => void;
    didToggleBucket: (oldBucket?: IRestorationBucket | undefined) => void;
    getRestorationId: () => string | undefined;
    didChangeDependencies: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    deactivate: () => void;
    activate: () => void;
    dispose: () => void;
    getOverlay: () => IOverlayState | undefined;
    pushNamed: <T>(
        routeName: string,
        props?: { arguments?: Object | undefined }
    ) => IFuture<T | undefined>;
    restorablePushNamed: <T>(
        routeName: string,
        props?: { arguments?: Object | undefined }
    ) => string;
    pushReplacementNamed: <T, TO>(
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ) => IFuture<T | undefined>;
    restorablePushReplacementNamed: <T, TO>(
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ) => string;
    popAndPushNamed: <T, TO>(
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ) => IFuture<T | undefined>;
    restorablePopAndPushNamed: <T, TO>(
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ) => string;
    pushNamedAndRemoveUntil: <T>(
        newRouteName: string,
        predicate: (route: IRoute<any>) => boolean,
        props?: { arguments?: Object | undefined }
    ) => IFuture<T | undefined>;
    restorablePushNamedAndRemoveUntil: <T>(
        newRouteName: string,
        predicate: (route: IRoute<any>) => boolean,
        props?: { arguments?: Object | undefined }
    ) => string;
    push: <T>(route: IRoute<T>) => IFuture<T | undefined>;
    restorablePush: <T>(
        routeBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>,
        props?: { arguments?: Object | undefined }
    ) => string;
    pushReplacement: <T, TO>(
        newRoute: IRoute<T>,
        props?: { result?: TO | undefined }
    ) => IFuture<T | undefined>;
    restorablePushReplacement: <T, TO>(
        routeBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ) => string;
    pushAndRemoveUntil: <T>(
        newRoute: IRoute<T>,
        predicate: (route: IRoute<any>) => boolean
    ) => IFuture<T | undefined>;
    restorablePushAndRemoveUntil: <T>(
        newRouteBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>,
        predicate: (route: IRoute<any>) => boolean,
        props?: { arguments?: Object | undefined }
    ) => string;
    replace: <T>(props: { newRoute: IRoute<T>; oldRoute: IRoute<any> }) => void;
    restorableReplace: <T>(props: {
        arguments?: Object | undefined;
        newRouteBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>;
        oldRoute: IRoute<any>;
    }) => string;
    replaceRouteBelow: <T>(props: {
        anchorRoute: IRoute<any>;
        newRoute: IRoute<T>;
    }) => void;
    restorableReplaceRouteBelow: <T>(props: {
        arguments?: Object | undefined;
        anchorRoute: IRoute<any>;
        newRouteBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>;
    }) => string;
    canPop: () => boolean;
    maybePop: <T>(result?: T | undefined) => IFuture<boolean>;
    pop: <T>(result?: T | undefined) => void;
    popUntil: (predicate: (route: IRoute<any>) => boolean) => void;
    removeRoute: (route: IRoute<any>) => void;
    removeRouteBelow: (anchorRoute: IRoute<any>) => void;
    finalizeRoute: (route: IRoute<any>) => void;
    getUserGestureInProgress: () => boolean;
    didStartUserGesture: () => void;
    didStopUserGesture: () => void;
    build: (context: IBuildContext) => IWidget;
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    registerForRestoration: (
        property: IRestorableProperty<Object | undefined>,
        restorationId: string
    ) => void;
    unregisterFromRestoration: (
        property: IRestorableProperty<Object | undefined>
    ) => void;
    didUpdateRestorationId: () => void;
    getBucket: () => IRestorationBucket | undefined;
    getRestorePending: () => boolean;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    getWidget: () => INavigator;
    getContext: () => IBuildContext;
    getMounted: () => boolean;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    getHashCode: () => number;
}
export class NavigatorState
    implements
        Omit<
            IState<INavigator>,
            | "dispose"
            | "didChangeDependencies"
            | "debugFillProperties"
            | "didUpdateWidget"
        >,
        ITickerProviderStateMixin<INavigator>,
        IRestorationMixin<INavigator>,
        IDiagnosticable,
        ITickerProvider
{
    public readonly focusScopeNode: IFocusScopeNode = undefined as any;
    public readonly userGestureInProgressNotifier: IValueNotifier<boolean> =
        undefined as any;
    public constructor() {
        flutter.widgets.navigatorState(this);
    }
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_restoreState: (
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ) => void = undefined as any;
    private readonly _dart_didToggleBucket: (
        oldBucket?: IRestorationBucket | undefined
    ) => void = undefined as any;
    private readonly _dart_getRestorationId: () => string | undefined =
        undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getOverlay: () => IOverlayState | undefined =
        undefined as any;
    private readonly _dart_pushNamed: <T>(
        routeName: string,
        props?: { arguments?: Object | undefined }
    ) => IFuture<T | undefined> = undefined as any;
    private readonly _dart_restorablePushNamed: <T>(
        routeName: string,
        props?: { arguments?: Object | undefined }
    ) => string = undefined as any;
    private readonly _dart_pushReplacementNamed: <T, TO>(
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ) => IFuture<T | undefined> = undefined as any;
    private readonly _dart_restorablePushReplacementNamed: <T, TO>(
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ) => string = undefined as any;
    private readonly _dart_popAndPushNamed: <T, TO>(
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ) => IFuture<T | undefined> = undefined as any;
    private readonly _dart_restorablePopAndPushNamed: <T, TO>(
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ) => string = undefined as any;
    private readonly _dart_pushNamedAndRemoveUntil: <T>(
        newRouteName: string,
        predicate: (route: IRoute<any>) => boolean,
        props?: { arguments?: Object | undefined }
    ) => IFuture<T | undefined> = undefined as any;
    private readonly _dart_restorablePushNamedAndRemoveUntil: <T>(
        newRouteName: string,
        predicate: (route: IRoute<any>) => boolean,
        props?: { arguments?: Object | undefined }
    ) => string = undefined as any;
    private readonly _dart_push: <T>(
        route: IRoute<T>
    ) => IFuture<T | undefined> = undefined as any;
    private readonly _dart_restorablePush: <T>(
        routeBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>,
        props?: { arguments?: Object | undefined }
    ) => string = undefined as any;
    private readonly _dart_pushReplacement: <T, TO>(
        newRoute: IRoute<T>,
        props?: { result?: TO | undefined }
    ) => IFuture<T | undefined> = undefined as any;
    private readonly _dart_restorablePushReplacement: <T, TO>(
        routeBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ) => string = undefined as any;
    private readonly _dart_pushAndRemoveUntil: <T>(
        newRoute: IRoute<T>,
        predicate: (route: IRoute<any>) => boolean
    ) => IFuture<T | undefined> = undefined as any;
    private readonly _dart_restorablePushAndRemoveUntil: <T>(
        newRouteBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>,
        predicate: (route: IRoute<any>) => boolean,
        props?: { arguments?: Object | undefined }
    ) => string = undefined as any;
    private readonly _dart_replace: <T>(props: {
        newRoute: IRoute<T>;
        oldRoute: IRoute<any>;
    }) => void = undefined as any;
    private readonly _dart_restorableReplace: <T>(props: {
        arguments?: Object | undefined;
        newRouteBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>;
        oldRoute: IRoute<any>;
    }) => string = undefined as any;
    private readonly _dart_replaceRouteBelow: <T>(props: {
        anchorRoute: IRoute<any>;
        newRoute: IRoute<T>;
    }) => void = undefined as any;
    private readonly _dart_restorableReplaceRouteBelow: <T>(props: {
        arguments?: Object | undefined;
        anchorRoute: IRoute<any>;
        newRouteBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>;
    }) => string = undefined as any;
    private readonly _dart_canPop: () => boolean = undefined as any;
    private readonly _dart_maybePop: <T>(
        result?: T | undefined
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_pop: <T>(result?: T | undefined) => void =
        undefined as any;
    private readonly _dart_popUntil: (
        predicate: (route: IRoute<any>) => boolean
    ) => void = undefined as any;
    private readonly _dart_removeRoute: (route: IRoute<any>) => void =
        undefined as any;
    private readonly _dart_removeRouteBelow: (
        anchorRoute: IRoute<any>
    ) => void = undefined as any;
    private readonly _dart_finalizeRoute: (route: IRoute<any>) => void =
        undefined as any;
    private readonly _dart_getUserGestureInProgress: () => boolean =
        undefined as any;
    private readonly _dart_didStartUserGesture: () => void = undefined as any;
    private readonly _dart_didStopUserGesture: () => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_createTicker: (
        onTick: (elapsed: IDuration) => void
    ) => ITicker = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_registerForRestoration: (
        property: IRestorableProperty<Object | undefined>,
        restorationId: string
    ) => void = undefined as any;
    private readonly _dart_unregisterFromRestoration: (
        property: IRestorableProperty<Object | undefined>
    ) => void = undefined as any;
    private readonly _dart_didUpdateRestorationId: () => void =
        undefined as any;
    private readonly _dart_getBucket: () => IRestorationBucket | undefined =
        undefined as any;
    private readonly _dart_getRestorePending: () => boolean = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_getWidget: () => INavigator = undefined as any;
    private readonly _dart_getContext: () => IBuildContext = undefined as any;
    private readonly _dart_getMounted: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public initState(): void {
        return this._dart_initState();
    }
    public restoreState(
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ): void {
        return this._dart_restoreState(oldBucket, initialRestore);
    }
    public didToggleBucket(oldBucket?: IRestorationBucket | undefined): void {
        return this._dart_didToggleBucket(oldBucket);
    }
    public getRestorationId(): string | undefined {
        return this._dart_getRestorationId();
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public activate(): void {
        return this._dart_activate();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getOverlay(): IOverlayState | undefined {
        return this._dart_getOverlay();
    }
    public pushNamed<T>(
        routeName: string,
        props?: { arguments?: Object | undefined }
    ): IFuture<T | undefined> {
        return this._dart_pushNamed(routeName, props);
    }
    public restorablePushNamed<T>(
        routeName: string,
        props?: { arguments?: Object | undefined }
    ): string {
        return this._dart_restorablePushNamed(routeName, props);
    }
    public pushReplacementNamed<T, TO>(
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ): IFuture<T | undefined> {
        return this._dart_pushReplacementNamed(routeName, props);
    }
    public restorablePushReplacementNamed<T, TO>(
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ): string {
        return this._dart_restorablePushReplacementNamed(routeName, props);
    }
    public popAndPushNamed<T, TO>(
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ): IFuture<T | undefined> {
        return this._dart_popAndPushNamed(routeName, props);
    }
    public restorablePopAndPushNamed<T, TO>(
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ): string {
        return this._dart_restorablePopAndPushNamed(routeName, props);
    }
    public pushNamedAndRemoveUntil<T>(
        newRouteName: string,
        predicate: (route: IRoute<any>) => boolean,
        props?: { arguments?: Object | undefined }
    ): IFuture<T | undefined> {
        return this._dart_pushNamedAndRemoveUntil(
            newRouteName,
            predicate,
            props
        );
    }
    public restorablePushNamedAndRemoveUntil<T>(
        newRouteName: string,
        predicate: (route: IRoute<any>) => boolean,
        props?: { arguments?: Object | undefined }
    ): string {
        return this._dart_restorablePushNamedAndRemoveUntil(
            newRouteName,
            predicate,
            props
        );
    }
    public push<T>(route: IRoute<T>): IFuture<T | undefined> {
        return this._dart_push(route);
    }
    public restorablePush<T>(
        routeBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>,
        props?: { arguments?: Object | undefined }
    ): string {
        return this._dart_restorablePush(routeBuilder, props);
    }
    public pushReplacement<T, TO>(
        newRoute: IRoute<T>,
        props?: { result?: TO | undefined }
    ): IFuture<T | undefined> {
        return this._dart_pushReplacement(newRoute, props);
    }
    public restorablePushReplacement<T, TO>(
        routeBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ): string {
        return this._dart_restorablePushReplacement(routeBuilder, props);
    }
    public pushAndRemoveUntil<T>(
        newRoute: IRoute<T>,
        predicate: (route: IRoute<any>) => boolean
    ): IFuture<T | undefined> {
        return this._dart_pushAndRemoveUntil(newRoute, predicate);
    }
    public restorablePushAndRemoveUntil<T>(
        newRouteBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>,
        predicate: (route: IRoute<any>) => boolean,
        props?: { arguments?: Object | undefined }
    ): string {
        return this._dart_restorablePushAndRemoveUntil(
            newRouteBuilder,
            predicate,
            props
        );
    }
    public replace<T>(props: {
        newRoute: IRoute<T>;
        oldRoute: IRoute<any>;
    }): void {
        return this._dart_replace(props);
    }
    public restorableReplace<T>(props: {
        arguments?: Object | undefined;
        newRouteBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>;
        oldRoute: IRoute<any>;
    }): string {
        return this._dart_restorableReplace(props);
    }
    public replaceRouteBelow<T>(props: {
        anchorRoute: IRoute<any>;
        newRoute: IRoute<T>;
    }): void {
        return this._dart_replaceRouteBelow(props);
    }
    public restorableReplaceRouteBelow<T>(props: {
        arguments?: Object | undefined;
        anchorRoute: IRoute<any>;
        newRouteBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>;
    }): string {
        return this._dart_restorableReplaceRouteBelow(props);
    }
    public canPop(): boolean {
        return this._dart_canPop();
    }
    public maybePop<T>(result?: T | undefined): IFuture<boolean> {
        return this._dart_maybePop(result);
    }
    public pop<T>(result?: T | undefined): void {
        return this._dart_pop(result);
    }
    public popUntil(predicate: (route: IRoute<any>) => boolean): void {
        return this._dart_popUntil(predicate);
    }
    public removeRoute(route: IRoute<any>): void {
        return this._dart_removeRoute(route);
    }
    public removeRouteBelow(anchorRoute: IRoute<any>): void {
        return this._dart_removeRouteBelow(anchorRoute);
    }
    public finalizeRoute(route: IRoute<any>): void {
        return this._dart_finalizeRoute(route);
    }
    public getUserGestureInProgress(): boolean {
        return this._dart_getUserGestureInProgress();
    }
    public didStartUserGesture(): void {
        return this._dart_didStartUserGesture();
    }
    public didStopUserGesture(): void {
        return this._dart_didStopUserGesture();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public createTicker(onTick: (elapsed: IDuration) => void): ITicker {
        return this._dart_createTicker(onTick);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public registerForRestoration(
        property: IRestorableProperty<Object | undefined>,
        restorationId: string
    ): void {
        return this._dart_registerForRestoration(property, restorationId);
    }
    public unregisterFromRestoration(
        property: IRestorableProperty<Object | undefined>
    ): void {
        return this._dart_unregisterFromRestoration(property);
    }
    public didUpdateRestorationId(): void {
        return this._dart_didUpdateRestorationId();
    }
    public getBucket(): IRestorationBucket | undefined {
        return this._dart_getBucket();
    }
    public getRestorePending(): boolean {
        return this._dart_getRestorePending();
    }
    public reassemble(): void {
        return this._dart_reassemble();
    }
    public setState(fn: () => void): void {
        return this._dart_setState(fn);
    }
    public getWidget(): INavigator {
        return this._dart_getWidget();
    }
    public getContext(): IBuildContext {
        return this._dart_getContext();
    }
    public getMounted(): boolean {
        return this._dart_getMounted();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
