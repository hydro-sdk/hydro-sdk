
import { IAnimatedWidgetBaseState } from "./animatedWidgetBaseState";
import { IAnimatedPhysicalModel } from "./animatedPhysicalModel";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { ISingleTickerProviderStateMixin } from "./singleTickerProviderStateMixin";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { ITween } from "../animation/tween";
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { IAnimationController } from "../animation/animationController";
import { IAnimation } from "../animation/animation";
import { IDuration } from "../../dart/core/duration";
import { ITicker } from "../scheduler/ticker";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
_animatedPhysicalModelState: (this: void, _animatedPhysicalModelState: I_AnimatedPhysicalModelState) => I_AnimatedPhysicalModelState
}
};
export interface I_AnimatedPhysicalModelState


{
forEachTween: (visitor : (tween: ITween<any> | undefined, targetValue: any, constructor : (targetValue: any) => ITween<any>) => ITween<any> | undefined) => void;
build: (context: IBuildContext) => IWidget;
initState: () => void;
didUpdateWidget: (oldWidget: unknown) => void;
dispose: () => void;
didUpdateTweens: () => void;
getController: () => IAnimationController;
getAnimation: () => IAnimation<number>;
createTicker: (onTick : (elapsed: IDuration) => void) => ITicker;
didChangeDependencies: () => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
reassemble: () => void;
setState: (fn : () => void) => void;
deactivate: () => void;
activate: () => void;
getWidget: () => IAnimatedPhysicalModel;
getContext: () => IBuildContext;
getMounted: () => boolean;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
getHashCode: () => number;
}export class _AnimatedPhysicalModelState

 implements IAnimatedWidgetBaseState<IAnimatedPhysicalModel>, ISingleTickerProviderStateMixin<IAnimatedPhysicalModel>, IDiagnosticable, ITickerProvider
{public constructor(){
flutter.widgets._animatedPhysicalModelState(this);}
    private readonly _dart_forEachTween: (visitor : (tween: ITween<any> | undefined, targetValue: any, constructor : (targetValue: any) => ITween<any>) => ITween<any> | undefined) => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didUpdateTweens: () => void = undefined as any;
    private readonly _dart_getController: () => IAnimationController = undefined as any;
    private readonly _dart_getAnimation: () => IAnimation<number> = undefined as any;
    private readonly _dart_createTicker: (onTick : (elapsed: IDuration) => void) => ITicker = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn : () => void) => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => IAnimatedPhysicalModel = undefined as any;
    private readonly _dart_getContext: () => IBuildContext = undefined as any;
    private readonly _dart_getMounted: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public forEachTween(visitor : (tween: ITween<any> | undefined, targetValue: any, constructor : (targetValue: any) => ITween<any>) => ITween<any> | undefined) : void {
    return this._dart_forEachTween(visitor);
}
public build(context: IBuildContext) : IWidget {
    return this._dart_build(context);
}
public initState() : void {
    return this._dart_initState();
}
public didUpdateWidget(oldWidget: any) : void {
    return this._dart_didUpdateWidget(oldWidget);
}
public dispose() : void {
    return this._dart_dispose();
}
public didUpdateTweens() : void {
    return this._dart_didUpdateTweens();
}
public getController() : IAnimationController {
    return this._dart_getController();
}
public getAnimation() : IAnimation<number> {
    return this._dart_getAnimation();
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
public getWidget() : IAnimatedPhysicalModel {
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
