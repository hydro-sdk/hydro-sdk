
import { IWidget } from "./widget";
import { IKey } from "../foundation/key";
import { IScrollNotification } from "./scrollNotification";
import { AxisDirection } from "../painting/axisDirection";
import { IColor } from "../../dart/ui/color";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { Axis } from "../painting/axis";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
glowingOverscrollIndicator: (this: void, glowingOverscrollIndicator: IGlowingOverscrollIndicator, props : {  child? : IWidget | undefined, key? : IKey | undefined, notificationPredicate : (notification: IScrollNotification) => boolean, showLeading : boolean, showTrailing : boolean, axisDirection : AxisDirection, color : IColor,}) => IGlowingOverscrollIndicator
}
};
export interface IGlowingOverscrollIndicator


{
showLeading: boolean;
showTrailing: boolean;
axisDirection: AxisDirection;
color: IColor;
child: IWidget | undefined;
key: IKey | undefined;
getAxis: () => Axis;
createState: () => IState<IGlowingOverscrollIndicator>;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IStatefulElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class GlowingOverscrollIndicator

 implements IStatefulWidget, IDiagnosticable
{    public readonly showLeading: boolean = undefined as any;
    public readonly showTrailing: boolean = undefined as any;
    public readonly axisDirection: AxisDirection = undefined as any;
    public readonly color: IColor = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  child? : IWidget | undefined, key? : IKey | undefined, notificationPredicate : (notification: IScrollNotification) => boolean, showLeading? : boolean, showTrailing? : boolean, axisDirection : AxisDirection, color : IColor,}){
flutter.widgets.glowingOverscrollIndicator(this, {
...glowingOverscrollIndicatorDefaultProps,
...props
});}
    private readonly _dart_getAxis: () => Axis = undefined as any;
    private readonly _dart_createState: () => IState<IGlowingOverscrollIndicator> = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public getAxis() : Axis {
    return this._dart_getAxis();
}
public createState() : IState<IGlowingOverscrollIndicator> {
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
const glowingOverscrollIndicatorDefaultProps = {
    showLeading: true,
    showTrailing: true,
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
