
import { Axis } from "../painting/axis";
import { IWidget } from "./widget";
import { IDuration,Duration } from "../../dart/core/duration";
import { DragAnchor } from "./dragAnchor";
import { IDraggable } from "./draggable";
import { IBuildContext } from "./buildContext";
import { IOffset,Offset } from "../../dart/ui/offset";
import { IKey } from "../foundation/key";
import { IDraggableDetails } from "./draggableDetails";
import { IDragUpdateDetails } from "../gestures/dragUpdateDetails";
import { IVelocity } from "../gestures/velocity";
import { IDrag } from "../gestures/drag";
import { IMultiDragGestureRecognizer } from "../gestures/multiDragGestureRecognizer";
import { IState } from "./state";
import { HitTestBehavior } from "../rendering/hitTestBehavior";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDelayedMultiDragGestureRecognizer } from "../gestures/delayedMultiDragGestureRecognizer";
import { IStatefulElement } from "./statefulElement";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
longPressDraggable: <T>(this: void, longPressDraggable: ILongPressDraggable<T>, props : {  axis? : Axis | undefined, childWhenDragging? : IWidget | undefined, data? : T | undefined, delay : IDuration, dragAnchor : DragAnchor, dragAnchorStrategy? : (draggable: IDraggable<Object>, context: IBuildContext, position: IOffset) => IOffset | undefined, feedbackOffset : IOffset, hapticFeedbackOnStart : boolean, ignoringFeedbackSemantics : boolean, key? : IKey | undefined, maxSimultaneousDrags? : number | undefined, onDragCompleted? : () => void | undefined, onDragEnd? : (details: IDraggableDetails) => void | undefined, onDragStarted? : () => void | undefined, onDragUpdate? : (details: IDragUpdateDetails) => void | undefined, onDraggableCanceled? : (velocity: IVelocity, offset: IOffset) => void | undefined, child : IWidget, feedback : IWidget,}) => ILongPressDraggable<T>
}
};
export interface ILongPressDraggable
<T>

{
hapticFeedbackOnStart: boolean;
delay: IDuration;
data: T | undefined;
axis: Axis | undefined;
child: IWidget;
childWhenDragging: IWidget | undefined;
feedback: IWidget;
feedbackOffset: IOffset;
dragAnchor: DragAnchor;
dragAnchorStrategy: (draggable: IDraggable<Object>, context: IBuildContext, position: IOffset) => IOffset | undefined;
ignoringFeedbackSemantics: boolean;
affinity: Axis | undefined;
maxSimultaneousDrags: number | undefined;
onDragStarted: () => void | undefined;
onDragUpdate: (details: IDragUpdateDetails) => void | undefined;
onDraggableCanceled: (velocity: IVelocity, offset: IOffset) => void | undefined;
onDragCompleted: () => void | undefined;
onDragEnd: (details: IDraggableDetails) => void | undefined;
rootOverlay: boolean;
hitTestBehavior: HitTestBehavior;
key: IKey | undefined;
createRecognizer: (onStart : (position: IOffset) => IDrag | undefined) => IDelayedMultiDragGestureRecognizer;
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
}export class LongPressDraggable
<T>
 implements IDraggable<T>, IDiagnosticable
{    public readonly hapticFeedbackOnStart: boolean = undefined as any;
    public readonly delay: IDuration = undefined as any;
    public readonly data: T | undefined = undefined as any;
    public readonly axis: Axis | undefined = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly childWhenDragging: IWidget | undefined = undefined as any;
    public readonly feedback: IWidget = undefined as any;
    public readonly feedbackOffset: IOffset = undefined as any;
    public readonly dragAnchor: DragAnchor = undefined as any;
    public readonly dragAnchorStrategy: (draggable: IDraggable<Object>, context: IBuildContext, position: IOffset) => IOffset | undefined = undefined as any;
    public readonly ignoringFeedbackSemantics: boolean = undefined as any;
    public readonly affinity: Axis | undefined = undefined as any;
    public readonly maxSimultaneousDrags: number | undefined = undefined as any;
    public readonly onDragStarted: () => void | undefined = undefined as any;
    public readonly onDragUpdate: (details: IDragUpdateDetails) => void | undefined = undefined as any;
    public readonly onDraggableCanceled: (velocity: IVelocity, offset: IOffset) => void | undefined = undefined as any;
    public readonly onDragCompleted: () => void | undefined = undefined as any;
    public readonly onDragEnd: (details: IDraggableDetails) => void | undefined = undefined as any;
    public readonly rootOverlay: boolean = undefined as any;
    public readonly hitTestBehavior: HitTestBehavior = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  axis? : Axis | undefined, childWhenDragging? : IWidget | undefined, data? : T | undefined, delay? : IDuration, dragAnchor? : DragAnchor, dragAnchorStrategy? : (draggable: IDraggable<Object>, context: IBuildContext, position: IOffset) => IOffset | undefined, feedbackOffset? : IOffset, hapticFeedbackOnStart? : boolean, ignoringFeedbackSemantics? : boolean, key? : IKey | undefined, maxSimultaneousDrags? : number | undefined, onDragCompleted? : () => void | undefined, onDragEnd? : (details: IDraggableDetails) => void | undefined, onDragStarted? : () => void | undefined, onDragUpdate? : (details: IDragUpdateDetails) => void | undefined, onDraggableCanceled? : (velocity: IVelocity, offset: IOffset) => void | undefined, child : IWidget, feedback : IWidget,}){
flutter.widgets.longPressDraggable(this, {
...longPressDraggableDefaultProps,
...props
});}
    private readonly _dart_createRecognizer: (onStart : (position: IOffset) => IDrag | undefined) => IDelayedMultiDragGestureRecognizer = undefined as any;
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
public createRecognizer(onStart : (position: IOffset) => IDrag | undefined) : IDelayedMultiDragGestureRecognizer {
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
const longPressDraggableDefaultProps = {
    delay: new Duration({ milliseconds: 500 }),
    dragAnchor: DragAnchor.child,
    feedbackOffset: Offset.zero,
    hapticFeedbackOnStart: true,
    ignoringFeedbackSemantics: true,
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
