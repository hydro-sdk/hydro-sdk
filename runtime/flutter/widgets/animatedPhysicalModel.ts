
import { IBorderRadius,BorderRadius } from "../painting/borderRadius";
import { Clip } from "../../dart/ui/clip";
import { ICurve } from "../animation/curve";
import { IKey } from "../foundation/key";
import { IWidget } from "./widget";
import { IColor } from "../../dart/ui/color";
import { IDuration } from "../../dart/core/duration";
import { BoxShape } from "../painting/boxShape";
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
animatedPhysicalModel: (this: void, animatedPhysicalModel: IAnimatedPhysicalModel, props : {  animateColor : boolean, animateShadowColor : boolean, borderRadius : IBorderRadius, clipBehavior : Clip, curve : ICurve, key? : IKey | undefined, onEnd? : () => void | undefined, child : IWidget, color : IColor, duration : IDuration, elevation : number, shadowColor : IColor, shape : BoxShape,}) => IAnimatedPhysicalModel
}
};
export interface IAnimatedPhysicalModel


{
child: IWidget;
shape: BoxShape;
clipBehavior: Clip;
borderRadius: IBorderRadius;
elevation: number;
color: IColor;
animateColor: boolean;
shadowColor: IColor;
animateShadowColor: boolean;
curve: ICurve;
duration: IDuration;
onEnd: () => void | undefined;
key: IKey | undefined;
createState: () => IAnimatedWidgetBaseState<IAnimatedPhysicalModel>;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IStatefulElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class AnimatedPhysicalModel

 implements IImplicitlyAnimatedWidget, IDiagnosticable
{    public readonly child: IWidget = undefined as any;
    public readonly shape: BoxShape = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly borderRadius: IBorderRadius = undefined as any;
    public readonly elevation: number = undefined as any;
    public readonly color: IColor = undefined as any;
    public readonly animateColor: boolean = undefined as any;
    public readonly shadowColor: IColor = undefined as any;
    public readonly animateShadowColor: boolean = undefined as any;
    public readonly curve: ICurve = undefined as any;
    public readonly duration: IDuration = undefined as any;
    public readonly onEnd: () => void | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  animateColor? : boolean, animateShadowColor? : boolean, borderRadius? : IBorderRadius, clipBehavior? : Clip, curve? : ICurve, key? : IKey | undefined, onEnd? : () => void | undefined, child : IWidget, color : IColor, duration : IDuration, elevation : number, shadowColor : IColor, shape : BoxShape,}){
flutter.widgets.animatedPhysicalModel(this, {
...animatedPhysicalModelDefaultProps,
...props
});}
    private readonly _dart_createState: () => IAnimatedWidgetBaseState<IAnimatedPhysicalModel> = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : IAnimatedWidgetBaseState<IAnimatedPhysicalModel> {
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
const animatedPhysicalModelDefaultProps = {
    animateColor: true,
    animateShadowColor: true,
    borderRadius: BorderRadius.zero,
    clipBehavior: Clip.none,
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
