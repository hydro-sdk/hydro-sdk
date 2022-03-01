
import { IKey } from "../foundation/key";
import { ICurve } from "../animation/curve";
import { IDuration } from "../../dart/core/duration";
import { IWidget } from "./widget";
import { IProxyAnimation } from "../animation/proxyAnimation";
import { IImplicitlyAnimatedWidget } from "./implicitlyAnimatedWidget";
import { IImplicitlyAnimatedWidgetState } from "./implicitlyAnimatedWidgetState";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { I_AnimatedFadeOutFadeInState } from "./_animatedFadeOutFadeInState";
import { IStatefulElement } from "./statefulElement";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
_animatedFadeOutFadeIn: (this: void, _animatedFadeOutFadeIn: I_AnimatedFadeOutFadeIn, props : {  key? : IKey | undefined, fadeInCurve : ICurve, fadeInDuration : IDuration, fadeOutCurve : ICurve, fadeOutDuration : IDuration, isTargetLoaded : boolean, placeholder : IWidget, placeholderProxyAnimation : IProxyAnimation, target : IWidget, targetProxyAnimation : IProxyAnimation,}) => I_AnimatedFadeOutFadeIn
}
};
export interface I_AnimatedFadeOutFadeIn


{
target: IWidget;
targetProxyAnimation: IProxyAnimation;
placeholder: IWidget;
placeholderProxyAnimation: IProxyAnimation;
isTargetLoaded: boolean;
fadeInDuration: IDuration;
fadeOutDuration: IDuration;
fadeInCurve: ICurve;
fadeOutCurve: ICurve;
curve: ICurve;
duration: IDuration;
onEnd: () => void | undefined;
key: IKey | undefined;
createState: () => I_AnimatedFadeOutFadeInState;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IStatefulElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class _AnimatedFadeOutFadeIn

 implements IImplicitlyAnimatedWidget, IDiagnosticable
{    public readonly target: IWidget = undefined as any;
    public readonly targetProxyAnimation: IProxyAnimation = undefined as any;
    public readonly placeholder: IWidget = undefined as any;
    public readonly placeholderProxyAnimation: IProxyAnimation = undefined as any;
    public readonly isTargetLoaded: boolean = undefined as any;
    public readonly fadeInDuration: IDuration = undefined as any;
    public readonly fadeOutDuration: IDuration = undefined as any;
    public readonly fadeInCurve: ICurve = undefined as any;
    public readonly fadeOutCurve: ICurve = undefined as any;
    public readonly curve: ICurve = undefined as any;
    public readonly duration: IDuration = undefined as any;
    public readonly onEnd: () => void | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  key? : IKey | undefined, fadeInCurve : ICurve, fadeInDuration : IDuration, fadeOutCurve : ICurve, fadeOutDuration : IDuration, isTargetLoaded : boolean, placeholder : IWidget, placeholderProxyAnimation : IProxyAnimation, target : IWidget, targetProxyAnimation : IProxyAnimation,}){
flutter.widgets._animatedFadeOutFadeIn(this, props);}
    private readonly _dart_createState: () => I_AnimatedFadeOutFadeInState = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : I_AnimatedFadeOutFadeInState {
    return this._dart_createState();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public createElement() : IStatefulElement {
    return this._dart_createElement();
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toStringShallow( props : {  joiner? : string, minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toStringShallow({
...toStringShallowDefaultProps,
...props
});
}
public toStringDeep( props : {  minLevel? : DiagnosticLevel, prefixLineOne? : string, prefixOtherLines? : string | undefined,}) : string {
    return this._dart_toStringDeep({
...toStringDeepDefaultProps,
...props
});
}
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
public debugDescribeChildren() : IList<IDiagnosticsNode> {
    return this._dart_debugDescribeChildren();
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
}
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
