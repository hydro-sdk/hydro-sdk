
import { Axis } from "../painting/axis";
import { IWidget } from "./widget";
import { DragAnchor } from "./dragAnchor";
import { IBuildContext } from "./buildContext";
import { IOffset,Offset } from "../../dart/ui/offset";
import { HitTestBehavior } from "../rendering/hitTestBehavior";
import { IKey } from "../foundation/key";
import { IDraggableDetails } from "./draggableDetails";
import { IDragUpdateDetails } from "../gestures/dragUpdateDetails";
import { IVelocity } from "../gestures/velocity";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDrag } from "../gestures/drag";
import { IMultiDragGestureRecognizer } from "../gestures/multiDragGestureRecognizer";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
draggable: <T>(this: void, draggable: IDraggable<T>, props : {  affinity? : Axis | undefined, axis? : Axis | undefined, childWhenDragging? : IWidget | undefined, data? : T | undefined, dragAnchor : DragAnchor, dragAnchorStrategy? : (draggable: IDraggable<Object>, context: IBuildContext, position: IOffset) => IOffset | undefined, feedbackOffset : IOffset, hitTestBehavior : HitTestBehavior, ignoringFeedbackSemantics : boolean, key? : IKey | undefined, maxSimultaneousDrags? : number | undefined, onDragCompleted? : () => void | undefined, onDragEnd? : (details: IDraggableDetails) => void | undefined, onDragStarted? : () => void | undefined, onDragUpdate? : (details: IDragUpdateDetails) => void | undefined, onDraggableCanceled? : (velocity: IVelocity, offset: IOffset) => void | undefined, rootOverlay : boolean, child : IWidget, feedback : IWidget,}) => IDraggable<T>
}
};
export interface IDraggable
<T>

{
axis: Axis | undefined;
child: IWidget;
childWhenDragging: IWidget | undefined;
feedback: IWidget;
feedbackOffset: IOffset;
dragAnchor: DragAnchor;
ignoringFeedbackSemantics: boolean;
affinity: Axis | undefined;
maxSimultaneousDrags: number | undefined;
rootOverlay: boolean;
hitTestBehavior: HitTestBehavior;
key: IKey | undefined;
createRecognizer: (onStart : (position: IOffset) => IDrag | undefined) => IMultiDragGestureRecognizer;
createState: () => IState<IDraggable<T>>;
createElement: () => IStatefulElement;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class Draggable
<T>
 implements IStatefulWidget, IDiagnosticable
{    public readonly axis: Axis | undefined = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly childWhenDragging: IWidget | undefined = undefined as any;
    public readonly feedback: IWidget = undefined as any;
    public readonly feedbackOffset: IOffset = undefined as any;
    public readonly dragAnchor: DragAnchor = undefined as any;
    public readonly ignoringFeedbackSemantics: boolean = undefined as any;
    public readonly affinity: Axis | undefined = undefined as any;
    public readonly maxSimultaneousDrags: number | undefined = undefined as any;
    public readonly rootOverlay: boolean = undefined as any;
    public readonly hitTestBehavior: HitTestBehavior = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  affinity? : Axis | undefined, axis? : Axis | undefined, childWhenDragging? : IWidget | undefined, data? : T | undefined, dragAnchor? : DragAnchor, dragAnchorStrategy? : (draggable: IDraggable<Object>, context: IBuildContext, position: IOffset) => IOffset | undefined, feedbackOffset? : IOffset, hitTestBehavior? : HitTestBehavior, ignoringFeedbackSemantics? : boolean, key? : IKey | undefined, maxSimultaneousDrags? : number | undefined, onDragCompleted? : () => void | undefined, onDragEnd? : (details: IDraggableDetails) => void | undefined, onDragStarted? : () => void | undefined, onDragUpdate? : (details: IDragUpdateDetails) => void | undefined, onDraggableCanceled? : (velocity: IVelocity, offset: IOffset) => void | undefined, rootOverlay? : boolean, child : IWidget, feedback : IWidget,}){
flutter.widgets.draggable(this, {
...draggableDefaultProps,
...props
});}
    private readonly _dart_createRecognizer: (onStart : (position: IOffset) => IDrag | undefined) => IMultiDragGestureRecognizer = undefined as any;
    private readonly _dart_createState: () => IState<IDraggable<T>> = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createRecognizer(onStart : (position: IOffset) => IDrag | undefined) : IMultiDragGestureRecognizer {
    return this._dart_createRecognizer(onStart);
}
public createState() : IState<IDraggable<T>> {
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
const draggableDefaultProps = {
    dragAnchor: DragAnchor.child,
    feedbackOffset: Offset.zero,
    hitTestBehavior: HitTestBehavior.deferToChild,
    ignoringFeedbackSemantics: true,
    rootOverlay: false,
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
