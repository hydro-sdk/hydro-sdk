
import { ICurve } from "../animation/curve";
import { IKey } from "../foundation/key";
import { IWidget } from "./widget";
import { IDuration } from "../../dart/core/duration";
import { IImplicitlyAnimatedWidget } from "./implicitlyAnimatedWidget";
import { IImplicitlyAnimatedWidgetState } from "./implicitlyAnimatedWidgetState";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IAnimatedWidgetBaseState } from "./animatedWidgetBaseState";
import { IStatefulElement } from "./statefulElement";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
import { Curves } from "../animation/curves";
declare const flutter: {
widgets: {
animatedPositionedDirectional: (this: void, animatedPositionedDirectional: IAnimatedPositionedDirectional, props : {  bottom? : number | undefined, curve : ICurve, end? : number | undefined, height? : number | undefined, key? : IKey | undefined, onEnd? : () => void | undefined, start? : number | undefined, top? : number | undefined, width? : number | undefined, child : IWidget, duration : IDuration,}) => IAnimatedPositionedDirectional
}
};
export interface IAnimatedPositionedDirectional


{
child: IWidget;
start: number | undefined;
top: number | undefined;
end: number | undefined;
bottom: number | undefined;
width: number | undefined;
height: number | undefined;
curve: ICurve;
duration: IDuration;
onEnd: () => void | undefined;
key: IKey | undefined;
createState: () => IAnimatedWidgetBaseState<IAnimatedPositionedDirectional>;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IStatefulElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class AnimatedPositionedDirectional

 implements IImplicitlyAnimatedWidget, IDiagnosticable
{    public readonly child: IWidget = undefined as any;
    public readonly start: number | undefined = undefined as any;
    public readonly top: number | undefined = undefined as any;
    public readonly end: number | undefined = undefined as any;
    public readonly bottom: number | undefined = undefined as any;
    public readonly width: number | undefined = undefined as any;
    public readonly height: number | undefined = undefined as any;
    public readonly curve: ICurve = undefined as any;
    public readonly duration: IDuration = undefined as any;
    public readonly onEnd: () => void | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  bottom? : number | undefined, curve? : ICurve, end? : number | undefined, height? : number | undefined, key? : IKey | undefined, onEnd? : () => void | undefined, start? : number | undefined, top? : number | undefined, width? : number | undefined, child : IWidget, duration : IDuration,}){
flutter.widgets.animatedPositionedDirectional(this, {
...animatedPositionedDirectionalDefaultProps,
...props
});}
    private readonly _dart_createState: () => IAnimatedWidgetBaseState<IAnimatedPositionedDirectional> = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : IAnimatedWidgetBaseState<IAnimatedPositionedDirectional> {
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
const animatedPositionedDirectionalDefaultProps = {
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
