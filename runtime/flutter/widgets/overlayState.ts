
import { IState } from "./state";
import { IOverlay } from "./overlay";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { ITickerProviderStateMixin } from "./tickerProviderStateMixin";
import { IOverlayEntry } from "./overlayEntry";
import { IIterable } from "../../dart/core/iterable";
import { IDuration } from "../../dart/core/duration";
import { ITicker } from "../scheduler/ticker";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
overlayState: (this: void, overlayState: IOverlayState) => IOverlayState
}
};
export interface IOverlayState


{
initState: () => void;
insert: (entry: IOverlayEntry, props? : {  above? : IOverlayEntry | undefined, below? : IOverlayEntry | undefined,}) => void;
insertAll: (entries: IIterable<IOverlayEntry>, props? : {  above? : IOverlayEntry | undefined, below? : IOverlayEntry | undefined,}) => void;
rearrange: (newEntries: IIterable<IOverlayEntry>, props? : {  above? : IOverlayEntry | undefined, below? : IOverlayEntry | undefined,}) => void;
debugIsVisible: (entry: IOverlayEntry) => boolean;
build: (context: IBuildContext) => IWidget;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createTicker: (onTick : (elapsed: IDuration) => void) => ITicker;
dispose: () => void;
didChangeDependencies: () => void;
didUpdateWidget: (oldWidget: unknown) => void;
reassemble: () => void;
setState: (fn : () => void) => void;
deactivate: () => void;
activate: () => void;
getWidget: () => IOverlay;
getContext: () => IBuildContext;
getMounted: () => boolean;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
getHashCode: () => number;
}export class OverlayState

 implements Omit<IState<IOverlay>, "dispose" | "didChangeDependencies" | "debugFillProperties">, ITickerProviderStateMixin<IOverlay>, IDiagnosticable, ITickerProvider
{public constructor(){
flutter.widgets.overlayState(this);}
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_insert: (entry: IOverlayEntry, props? : {  above? : IOverlayEntry | undefined, below? : IOverlayEntry | undefined,}) => void = undefined as any;
    private readonly _dart_insertAll: (entries: IIterable<IOverlayEntry>, props? : {  above? : IOverlayEntry | undefined, below? : IOverlayEntry | undefined,}) => void = undefined as any;
    private readonly _dart_rearrange: (newEntries: IIterable<IOverlayEntry>, props? : {  above? : IOverlayEntry | undefined, below? : IOverlayEntry | undefined,}) => void = undefined as any;
    private readonly _dart_debugIsVisible: (entry: IOverlayEntry) => boolean = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createTicker: (onTick : (elapsed: IDuration) => void) => ITicker = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn : () => void) => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => IOverlay = undefined as any;
    private readonly _dart_getContext: () => IBuildContext = undefined as any;
    private readonly _dart_getMounted: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public initState() : void {
    return this._dart_initState();
}
public insert(entry: IOverlayEntry, props? : {  above? : IOverlayEntry | undefined, below? : IOverlayEntry | undefined,}) : void {
    return this._dart_insert(entry, props);
}
public insertAll(entries: IIterable<IOverlayEntry>, props? : {  above? : IOverlayEntry | undefined, below? : IOverlayEntry | undefined,}) : void {
    return this._dart_insertAll(entries, props);
}
public rearrange(newEntries: IIterable<IOverlayEntry>, props? : {  above? : IOverlayEntry | undefined, below? : IOverlayEntry | undefined,}) : void {
    return this._dart_rearrange(newEntries, props);
}
public debugIsVisible(entry: IOverlayEntry) : boolean {
    return this._dart_debugIsVisible(entry);
}
public build(context: IBuildContext) : IWidget {
    return this._dart_build(context);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public createTicker(onTick : (elapsed: IDuration) => void) : ITicker {
    return this._dart_createTicker(onTick);
}
public dispose() : void {
    return this._dart_dispose();
}
public didChangeDependencies() : void {
    return this._dart_didChangeDependencies();
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
public getWidget() : IOverlay {
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
