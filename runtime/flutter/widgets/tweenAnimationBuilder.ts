
import { IWidget } from "./widget";
import { ICurve } from "../animation/curve";
import { IKey } from "../foundation/key";
import { IBuildContext } from "./buildContext";
import { IDuration } from "../../dart/core/duration";
import { ITween } from "../animation/tween";
import { IImplicitlyAnimatedWidget } from "./implicitlyAnimatedWidget";
import { IImplicitlyAnimatedWidgetState } from "./implicitlyAnimatedWidgetState";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IStatefulElement } from "./statefulElement";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
import { Curves } from "../animation/curves";
declare const flutter: {
widgets: {
tweenAnimationBuilder: <T>(this: void, tweenAnimationBuilder: ITweenAnimationBuilder<T>, props : {  child? : IWidget | undefined, curve : ICurve, key? : IKey | undefined, onEnd? : () => void | undefined, builder : (context: IBuildContext, value: T, child?: IWidget | undefined) => IWidget, duration : IDuration, tween : ITween<T>,}) => ITweenAnimationBuilder<T>
}
};
export interface ITweenAnimationBuilder
<T>

{
tween: ITween<T>;
child: IWidget | undefined;
curve: ICurve;
duration: IDuration;
onEnd: () => void | undefined;
key: IKey | undefined;
createState: () => IImplicitlyAnimatedWidgetState<IImplicitlyAnimatedWidget>;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IStatefulElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class TweenAnimationBuilder
<T>
 implements IImplicitlyAnimatedWidget, IDiagnosticable
{    public readonly tween: ITween<T> = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly curve: ICurve = undefined as any;
    public readonly duration: IDuration = undefined as any;
    public readonly onEnd: () => void | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  child? : IWidget | undefined, curve? : ICurve, key? : IKey | undefined, onEnd? : () => void | undefined, builder : (context: IBuildContext, value: T, child?: IWidget | undefined) => IWidget, duration : IDuration, tween : ITween<T>,}){
flutter.widgets.tweenAnimationBuilder(this, {
...tweenAnimationBuilderDefaultProps,
...props
});}
    private readonly _dart_createState: () => IImplicitlyAnimatedWidgetState<IImplicitlyAnimatedWidget> = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : IImplicitlyAnimatedWidgetState<IImplicitlyAnimatedWidget> {
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
const tweenAnimationBuilderDefaultProps = {
    curve: Curves.linear,
};
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
