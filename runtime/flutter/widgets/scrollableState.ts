
import { IState } from "./state";
import { IScrollable } from "./scrollable";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IScrollContext } from "./scrollContext";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { ITickerProviderStateMixin } from "./tickerProviderStateMixin";
import { IRestorationMixin } from "./restorationMixin";
import { IScrollPosition } from "./scrollPosition";
import { AxisDirection } from "../painting/axisDirection";
import { IRestorationBucket } from "../services/restorationBucket";
import { ISet } from "../../dart/core/set";
import { ISemanticsAction } from "../../dart/ui/semanticsAction";
import { IDuration } from "../../dart/core/duration";
import { ITicker } from "../scheduler/ticker";
import { IRestorableProperty } from "./restorableProperty";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
scrollableState: (this: void, scrollableState: IScrollableState) => IScrollableState
}
};
export interface IScrollableState


{
getPosition: () => IScrollPosition;
getAxisDirection: () => AxisDirection;
restoreState: (oldBucket: IRestorationBucket | undefined, initialRestore: boolean) => void;
saveOffset: (offset: number) => void;
initState: () => void;
didChangeDependencies: () => void;
didUpdateWidget: (oldWidget: unknown) => void;
dispose: () => void;
setSemanticsActions: (actions: ISet<ISemanticsAction>) => void;
setCanDrag: (value: boolean) => void;
getVsync: () => ITickerProvider;
setIgnorePointer: (value: boolean) => void;
getNotificationContext: () => IBuildContext | undefined;
getStorageContext: () => IBuildContext;
build: (context: IBuildContext) => IWidget;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getRestorationId: () => string | undefined;
createTicker: (onTick : (elapsed: IDuration) => void) => ITicker;
didToggleBucket: (oldBucket?: IRestorationBucket | undefined) => void;
registerForRestoration: (property: IRestorableProperty<Object | undefined>, restorationId: string) => void;
unregisterFromRestoration: (property: IRestorableProperty<Object | undefined>) => void;
didUpdateRestorationId: () => void;
getBucket: () => IRestorationBucket | undefined;
getRestorePending: () => boolean;
reassemble: () => void;
setState: (fn : () => void) => void;
deactivate: () => void;
activate: () => void;
getWidget: () => IScrollable;
getContext: () => IBuildContext;
getMounted: () => boolean;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
getHashCode: () => number;
}export class ScrollableState

 implements Omit<IState<IScrollable>, "dispose" | "didChangeDependencies" | "debugFillProperties" | "didUpdateWidget">, ITickerProviderStateMixin<IScrollable>, IRestorationMixin<IScrollable>, IDiagnosticable, IScrollContext, ITickerProvider
{public constructor(){
flutter.widgets.scrollableState(this);}
    private readonly _dart_getPosition: () => IScrollPosition = undefined as any;
    private readonly _dart_getAxisDirection: () => AxisDirection = undefined as any;
    private readonly _dart_restoreState: (oldBucket: IRestorationBucket | undefined, initialRestore: boolean) => void = undefined as any;
    private readonly _dart_saveOffset: (offset: number) => void = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_setSemanticsActions: (actions: ISet<ISemanticsAction>) => void = undefined as any;
    private readonly _dart_setCanDrag: (value: boolean) => void = undefined as any;
    private readonly _dart_getVsync: () => ITickerProvider = undefined as any;
    private readonly _dart_setIgnorePointer: (value: boolean) => void = undefined as any;
    private readonly _dart_getNotificationContext: () => IBuildContext | undefined = undefined as any;
    private readonly _dart_getStorageContext: () => IBuildContext = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getRestorationId: () => string | undefined = undefined as any;
    private readonly _dart_createTicker: (onTick : (elapsed: IDuration) => void) => ITicker = undefined as any;
    private readonly _dart_didToggleBucket: (oldBucket?: IRestorationBucket | undefined) => void = undefined as any;
    private readonly _dart_registerForRestoration: (property: IRestorableProperty<Object | undefined>, restorationId: string) => void = undefined as any;
    private readonly _dart_unregisterFromRestoration: (property: IRestorableProperty<Object | undefined>) => void = undefined as any;
    private readonly _dart_didUpdateRestorationId: () => void = undefined as any;
    private readonly _dart_getBucket: () => IRestorationBucket | undefined = undefined as any;
    private readonly _dart_getRestorePending: () => boolean = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn : () => void) => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => IScrollable = undefined as any;
    private readonly _dart_getContext: () => IBuildContext = undefined as any;
    private readonly _dart_getMounted: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getPosition() : IScrollPosition {
    return this._dart_getPosition();
}
public getAxisDirection() : AxisDirection {
    return this._dart_getAxisDirection();
}
public restoreState(oldBucket: IRestorationBucket | undefined, initialRestore: boolean) : void {
    return this._dart_restoreState(oldBucket, initialRestore);
}
public saveOffset(offset: number) : void {
    return this._dart_saveOffset(offset);
}
public initState() : void {
    return this._dart_initState();
}
public didChangeDependencies() : void {
    return this._dart_didChangeDependencies();
}
public didUpdateWidget(oldWidget: any) : void {
    return this._dart_didUpdateWidget(oldWidget);
}
public dispose() : void {
    return this._dart_dispose();
}
public setSemanticsActions(actions: ISet<ISemanticsAction>) : void {
    return this._dart_setSemanticsActions(actions);
}
public setCanDrag(value: boolean) : void {
    return this._dart_setCanDrag(value);
}
public getVsync() : ITickerProvider {
    return this._dart_getVsync();
}
public setIgnorePointer(value: boolean) : void {
    return this._dart_setIgnorePointer(value);
}
public getNotificationContext() : IBuildContext | undefined {
    return this._dart_getNotificationContext();
}
public getStorageContext() : IBuildContext {
    return this._dart_getStorageContext();
}
public build(context: IBuildContext) : IWidget {
    return this._dart_build(context);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public getRestorationId() : string | undefined {
    return this._dart_getRestorationId();
}
public createTicker(onTick : (elapsed: IDuration) => void) : ITicker {
    return this._dart_createTicker(onTick);
}
public didToggleBucket(oldBucket?: IRestorationBucket | undefined) : void {
    return this._dart_didToggleBucket(oldBucket);
}
public registerForRestoration(property: IRestorableProperty<Object | undefined>, restorationId: string) : void {
    return this._dart_registerForRestoration(property, restorationId);
}
public unregisterFromRestoration(property: IRestorableProperty<Object | undefined>) : void {
    return this._dart_unregisterFromRestoration(property);
}
public didUpdateRestorationId() : void {
    return this._dart_didUpdateRestorationId();
}
public getBucket() : IRestorationBucket | undefined {
    return this._dart_getBucket();
}
public getRestorePending() : boolean {
    return this._dart_getRestorePending();
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
public getWidget() : IScrollable {
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
