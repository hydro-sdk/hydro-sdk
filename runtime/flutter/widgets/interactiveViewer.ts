
import { IEdgeInsets,EdgeInsets } from "../painting/edgeInsets";
import { Clip } from "../../dart/ui/clip";
import { IKey } from "../foundation/key";
import { IScaleEndDetails } from "../gestures/scaleEndDetails";
import { IScaleStartDetails } from "../gestures/scaleStartDetails";
import { IScaleUpdateDetails } from "../gestures/scaleUpdateDetails";
import { ITransformationController } from "./transformationController";
import { IWidget } from "./widget";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IVector3 } from "../../vector_math/vector3";
import { IQuad } from "../../vector_math/quad";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
interactiveViewer: (this: void, interactiveViewer: IInteractiveViewer, props : {  alignPanAxis : boolean, boundaryMargin : IEdgeInsets, clipBehavior : Clip, constrained : boolean, key? : IKey | undefined, maxScale : number, minScale : number, onInteractionEnd? : (details: IScaleEndDetails) => void | undefined, onInteractionStart? : (details: IScaleStartDetails) => void | undefined, onInteractionUpdate? : (details: IScaleUpdateDetails) => void | undefined, panEnabled : boolean, scaleEnabled : boolean, transformationController? : ITransformationController | undefined, child : IWidget,}) => IInteractiveViewer;
interactiveViewerGetNearestPointOnLine: (point: IVector3, l1: IVector3, l2: IVector3) => IVector3;
interactiveViewerGetAxisAlignedBoundingBox: (quad: IQuad) => IQuad;
interactiveViewerPointIsInside: (point: IVector3, quad: IQuad) => boolean;
interactiveViewerGetNearestPointInside: (point: IVector3, quad: IQuad) => IVector3
}
};
export interface IInteractiveViewer


{
clipBehavior: Clip;
alignPanAxis: boolean;
boundaryMargin: IEdgeInsets;
child: IWidget | undefined;
constrained: boolean;
panEnabled: boolean;
scaleEnabled: boolean;
maxScale: number;
minScale: number;
transformationController: ITransformationController | undefined;
key: IKey | undefined;
createState: () => IState<IInteractiveViewer>;
createElement: () => IStatefulElement;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class InteractiveViewer

 implements IStatefulWidget, IDiagnosticable
{    public readonly clipBehavior: Clip = undefined as any;
    public readonly alignPanAxis: boolean = undefined as any;
    public readonly boundaryMargin: IEdgeInsets = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly constrained: boolean = undefined as any;
    public readonly panEnabled: boolean = undefined as any;
    public readonly scaleEnabled: boolean = undefined as any;
    public readonly maxScale: number = undefined as any;
    public readonly minScale: number = undefined as any;
    public readonly transformationController: ITransformationController | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  alignPanAxis? : boolean, boundaryMargin? : IEdgeInsets, clipBehavior? : Clip, constrained? : boolean, key? : IKey | undefined, maxScale? : number, minScale? : number, onInteractionEnd? : (details: IScaleEndDetails) => void | undefined, onInteractionStart? : (details: IScaleStartDetails) => void | undefined, onInteractionUpdate? : (details: IScaleUpdateDetails) => void | undefined, panEnabled? : boolean, scaleEnabled? : boolean, transformationController? : ITransformationController | undefined, child : IWidget,}){
flutter.widgets.interactiveViewer(this, {
...interactiveViewerDefaultProps,
...props
});}
public static getNearestPointOnLine(point: IVector3, l1: IVector3, l2: IVector3) : IVector3{
return flutter.widgets.interactiveViewerGetNearestPointOnLine(point, l1, l2);
}public static getAxisAlignedBoundingBox(quad: IQuad) : IQuad{
return flutter.widgets.interactiveViewerGetAxisAlignedBoundingBox(quad);
}public static pointIsInside(point: IVector3, quad: IQuad) : boolean{
return flutter.widgets.interactiveViewerPointIsInside(point, quad);
}public static getNearestPointInside(point: IVector3, quad: IQuad) : IVector3{
return flutter.widgets.interactiveViewerGetNearestPointInside(point, quad);
}    private readonly _dart_createState: () => IState<IInteractiveViewer> = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : IState<IInteractiveViewer> {
    return this._dart_createState();
}
public createElement() : IStatefulElement {
    return this._dart_createElement();
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
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
const interactiveViewerDefaultProps = {
    alignPanAxis: false,
    boundaryMargin: EdgeInsets.zero,
    clipBehavior: Clip.hardEdge,
    constrained: true,
    maxScale: 2.5,
    minScale: 0.8,
    panEnabled: true,
    scaleEnabled: true,
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
