
import { IState } from "./state";
import { ISliverAnimatedList } from "./sliverAnimatedList";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { ITickerProviderStateMixin } from "./tickerProviderStateMixin";
import { IDuration,Duration } from "../../dart/core/duration";
import { IAnimation } from "../animation/animation";
import { ITicker } from "../scheduler/ticker";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
sliverAnimatedListState: (this: void, sliverAnimatedListState: ISliverAnimatedListState) => ISliverAnimatedListState
}
};
export interface ISliverAnimatedListState


{
initState: () => void;
dispose: () => void;
insertItem: (index: number, props : {  duration : IDuration,}) => void;
removeItem: (index: number, builder : (context: IBuildContext, animation: IAnimation<number>) => IWidget, props : {  duration : IDuration,}) => void;
build: (context: IBuildContext) => IWidget;
createTicker: (onTick : (elapsed: IDuration) => void) => ITicker;
didChangeDependencies: () => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
didUpdateWidget: (oldWidget: unknown) => void;
reassemble: () => void;
setState: (fn : () => void) => void;
deactivate: () => void;
activate: () => void;
getWidget: () => ISliverAnimatedList;
getContext: () => IBuildContext;
getMounted: () => boolean;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
getHashCode: () => number;
}export class SliverAnimatedListState

 implements Omit<IState<ISliverAnimatedList>, "dispose" | "didChangeDependencies" | "debugFillProperties">, ITickerProviderStateMixin<ISliverAnimatedList>, IDiagnosticable, ITickerProvider
{public constructor(){
flutter.widgets.sliverAnimatedListState(this);}
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_insertItem: (index: number, props : {  duration : IDuration,}) => void = undefined as any;
    private readonly _dart_removeItem: (index: number, builder : (context: IBuildContext, animation: IAnimation<number>) => IWidget, props : {  duration : IDuration,}) => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget = undefined as any;
    private readonly _dart_createTicker: (onTick : (elapsed: IDuration) => void) => ITicker = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn : () => void) => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => ISliverAnimatedList = undefined as any;
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
public insertItem(index: number, props : {  duration? : IDuration,}) : void {
    return this._dart_insertItem(index, {
...insertItemDefaultProps,
...props
});
}
public removeItem(index: number, builder : (context: IBuildContext, animation: IAnimation<number>) => IWidget, props : {  duration? : IDuration,}) : void {
    return this._dart_removeItem(index, builder, {
...removeItemDefaultProps,
...props
});
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
public getWidget() : ISliverAnimatedList {
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
const insertItemDefaultProps = {
    duration: new Duration({ milliseconds: 300 }),
};
const removeItemDefaultProps = {
    duration: new Duration({ milliseconds: 300 }),
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
