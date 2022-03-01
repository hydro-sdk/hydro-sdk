
import { IState } from "./state";
import { IWidgetInspector } from "./widgetInspector";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IWidgetsBindingObserver } from "./widgetsBindingObserver";
import { IOffset } from "../../dart/ui/offset";
import { IRenderObject } from "../rendering/renderObject";
import { IList } from "../../dart/core/list";
import { IFuture } from "../../dart/async/future";
import { IRouteInformation } from "./routeInformation";
import { ILocale } from "../../dart/ui/locale";
import { AppLifecycleState } from "../../dart/ui/appLifecycleState";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IInspectorSelection } from "./inspectorSelection";
declare const flutter: {
widgets: {
_widgetInspectorState: (this: void, _widgetInspectorState: I_WidgetInspectorState) => I_WidgetInspectorState
}
};
export interface I_WidgetInspectorState


{
selection: IInspectorSelection;
isSelectMode: boolean;
initState: () => void;
dispose: () => void;
hitTest: (position: IOffset, root: IRenderObject) => IList<IRenderObject>;
build: (context: IBuildContext) => IWidget;
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
didUpdateWidget: (oldWidget: unknown) => void;
reassemble: () => void;
setState: (fn : () => void) => void;
deactivate: () => void;
activate: () => void;
didChangeDependencies: () => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getWidget: () => IWidgetInspector;
getContext: () => IBuildContext;
getMounted: () => boolean;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
getHashCode: () => number;
}export class _WidgetInspectorState

 implements Omit<IState<IWidgetInspector>, "toString" | "debugFillProperties">, IWidgetsBindingObserver, IDiagnosticable
{    public static _edgeHitMargin = 2.0;
    public readonly selection: IInspectorSelection = undefined as any;
    public readonly isSelectMode: boolean = undefined as any;
public constructor(){
flutter.widgets._widgetInspectorState(this);}
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_hitTest: (position: IOffset, root: IRenderObject) => IList<IRenderObject> = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget = undefined as any;
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
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn : () => void) => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getWidget: () => IWidgetInspector = undefined as any;
    private readonly _dart_getContext: () => IBuildContext = undefined as any;
    private readonly _dart_getMounted: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public initState() : void {
    return this._dart_initState();
}
public dispose() : void {
    return this._dart_dispose();
}
public hitTest(position: IOffset, root: IRenderObject) : IList<IRenderObject> {
    return this._dart_hitTest(position, root);
}
public build(context: IBuildContext) : IWidget {
    return this._dart_build(context);
}
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
public didUpdateWidget(oldWidget: any) : void {
    return this._dart_didUpdateWidget(oldWidget);
}
public reassemble() : void {
    return this._dart_reassemble();
}
public setState(fn : () => void) : void {
    return this._dart_setState(fn);
}
public deactivate() : void {
    return this._dart_deactivate();
}
public activate() : void {
    return this._dart_activate();
}
public didChangeDependencies() : void {
    return this._dart_didChangeDependencies();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public getWidget() : IWidgetInspector {
    return this._dart_getWidget();
}
public getContext() : IBuildContext {
    return this._dart_getContext();
}
public getMounted() : boolean {
    return this._dart_getMounted();
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
