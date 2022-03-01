
import { IState } from "./state";
import { IDismissible } from "./dismissible";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { ITickerProviderStateMixin } from "./tickerProviderStateMixin";
import { IAutomaticKeepAliveClientMixin } from "./automaticKeepAliveClientMixin";
import { IDuration } from "../../dart/core/duration";
import { ITicker } from "../scheduler/ticker";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
_dismissibleState: (this: void, _dismissibleState: I_DismissibleState) => I_DismissibleState
}
};
export interface I_DismissibleState


{
initState: () => void;
getWantKeepAlive: () => boolean;
dispose: () => void;
build: (context: IBuildContext) => IWidget;
createTicker: (onTick : (elapsed: IDuration) => void) => ITicker;
didChangeDependencies: () => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
updateKeepAlive: () => void;
deactivate: () => void;
didUpdateWidget: (oldWidget: unknown) => void;
reassemble: () => void;
setState: (fn : () => void) => void;
activate: () => void;
getWidget: () => IDismissible;
getContext: () => IBuildContext;
getMounted: () => boolean;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
getHashCode: () => number;
}export class _DismissibleState

 implements Omit<IState<IDismissible>, "dispose" | "didChangeDependencies" | "debugFillProperties" | "initState" | "deactivate" | "build">, ITickerProviderStateMixin<IDismissible>, IAutomaticKeepAliveClientMixin<IDismissible>, IDiagnosticable, ITickerProvider
{public constructor(){
flutter.widgets._dismissibleState(this);}
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_getWantKeepAlive: () => boolean = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget = undefined as any;
    private readonly _dart_createTicker: (onTick : (elapsed: IDuration) => void) => ITicker = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_updateKeepAlive: () => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn : () => void) => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => IDismissible = undefined as any;
    private readonly _dart_getContext: () => IBuildContext = undefined as any;
    private readonly _dart_getMounted: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public initState() : void {
    return this._dart_initState();
}
public getWantKeepAlive() : boolean {
    return this._dart_getWantKeepAlive();
}
public dispose() : void {
    return this._dart_dispose();
}
public build(context: IBuildContext) : IWidget {
    return this._dart_build(context);
}
public createTicker(onTick : (elapsed: IDuration) => void) : ITicker {
    return this._dart_createTicker(onTick);
}
public didChangeDependencies() : void {
    return this._dart_didChangeDependencies();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public updateKeepAlive() : void {
    return this._dart_updateKeepAlive();
}
public deactivate() : void {
    return this._dart_deactivate();
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
public activate() : void {
    return this._dart_activate();
}
public getWidget() : IDismissible {
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
