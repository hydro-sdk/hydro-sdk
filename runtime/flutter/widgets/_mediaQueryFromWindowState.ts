import { IFuture } from "../../dart/async/future";
import { IList } from "../../dart/core/list";
import { AppLifecycleState } from "../../dart/ui/appLifecycleState";
import { ILocale } from "../../dart/ui/locale";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { I_MediaQueryFromWindow } from "./_mediaQueryFromWindow";
import { IBuildContext } from "./buildContext";
import { IRouteInformation } from "./routeInformation";
import { IState } from "./state";
import { IWidget } from "./widget";
import { IWidgetsBindingObserver } from "./widgetsBindingObserver";
declare const flutter: {
    widgets: {
        _mediaQueryFromWindowState: (
            this: void,
            _mediaQueryFromWindowState: I_MediaQueryFromWindowState
        ) => I_MediaQueryFromWindowState;
    };
};
export interface I_MediaQueryFromWindowState {
    initState: () => void;
    didChangeAccessibilityFeatures: () => void;
    didChangeMetrics: () => void;
    didChangeTextScaleFactor: () => void;
    didChangePlatformBrightness: () => void;
    build: (context: IBuildContext) => IWidget;
    dispose: () => void;
    didPopRoute: () => IFuture<boolean>;
    didPushRoute: (route: string) => IFuture<boolean>;
    didPushRouteInformation: (
        routeInformation: IRouteInformation
    ) => IFuture<boolean>;
    didChangeLocales: (locales?: IList<ILocale> | undefined) => void;
    didChangeAppLifecycleState: (state: AppLifecycleState) => void;
    didHaveMemoryPressure: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    didChangeDependencies: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getWidget: () => I_MediaQueryFromWindow;
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
export class _MediaQueryFromWindowState
    implements
        Omit<
            IState<I_MediaQueryFromWindow>,
            "toString" | "debugFillProperties"
        >,
        IWidgetsBindingObserver,
        IDiagnosticable
{
    public constructor() {
        flutter.widgets._mediaQueryFromWindowState(this);
    }
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didChangeAccessibilityFeatures: () => void =
        undefined as any;
    private readonly _dart_didChangeMetrics: () => void = undefined as any;
    private readonly _dart_didChangeTextScaleFactor: () => void =
        undefined as any;
    private readonly _dart_didChangePlatformBrightness: () => void =
        undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didPopRoute: () => IFuture<boolean> =
        undefined as any;
    private readonly _dart_didPushRoute: (route: string) => IFuture<boolean> =
        undefined as any;
    private readonly _dart_didPushRouteInformation: (
        routeInformation: IRouteInformation
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_didChangeLocales: (
        locales?: IList<ILocale> | undefined
    ) => void = undefined as any;
    private readonly _dart_didChangeAppLifecycleState: (
        state: AppLifecycleState
    ) => void = undefined as any;
    private readonly _dart_didHaveMemoryPressure: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getWidget: () => I_MediaQueryFromWindow =
        undefined as any;
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
    public didChangeAccessibilityFeatures(): void {
        return this._dart_didChangeAccessibilityFeatures();
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
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public dispose(): void {
        return this._dart_dispose();
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
    public didChangeLocales(locales?: IList<ILocale> | undefined): void {
        return this._dart_didChangeLocales(locales);
    }
    public didChangeAppLifecycleState(state: AppLifecycleState): void {
        return this._dart_didChangeAppLifecycleState(state);
    }
    public didHaveMemoryPressure(): void {
        return this._dart_didHaveMemoryPressure();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public reassemble(): void {
        return this._dart_reassemble();
    }
    public setState(fn: () => void): void {
        return this._dart_setState(fn);
    }
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public activate(): void {
        return this._dart_activate();
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getWidget(): I_MediaQueryFromWindow {
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
