import { IFuture } from "../../dart/async/future";
import { IList } from "../../dart/core/list";
import { AppLifecycleState } from "../../dart/ui/appLifecycleState";
import { ILocale } from "../../dart/ui/locale";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IBuildContext } from "./buildContext";
import { IImage } from "./image";
import { IRouteInformation } from "./routeInformation";
import { IState } from "./state";
import { IWidget } from "./widget";
import { IWidgetsBindingObserver } from "./widgetsBindingObserver";
declare const flutter: {
    widgets: {
        _imageState: (this: void, _imageState: I_ImageState) => I_ImageState;
    };
};
export interface I_ImageState {
    initState: () => void;
    dispose: () => void;
    didChangeDependencies: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    didChangeAccessibilityFeatures: () => void;
    reassemble: () => void;
    build: (context: IBuildContext) => IWidget;
    debugFillProperties: (description: IDiagnosticPropertiesBuilder) => void;
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
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    getWidget: () => IImage;
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
export class _ImageState
    implements
        Omit<IState<IImage>, "toString" | "debugFillProperties">,
        IWidgetsBindingObserver,
        IDiagnosticable
{
    public constructor() {
        flutter.widgets._imageState(this);
    }
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_didChangeAccessibilityFeatures: () => void =
        undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        description: IDiagnosticPropertiesBuilder
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
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => IImage = undefined as any;
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
    public dispose(): void {
        return this._dart_dispose();
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public didChangeAccessibilityFeatures(): void {
        return this._dart_didChangeAccessibilityFeatures();
    }
    public reassemble(): void {
        return this._dart_reassemble();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public debugFillProperties(
        description: IDiagnosticPropertiesBuilder
    ): void {
        return this._dart_debugFillProperties(description);
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
    public setState(fn: () => void): void {
        return this._dart_setState(fn);
    }
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public activate(): void {
        return this._dart_activate();
    }
    public getWidget(): IImage {
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
