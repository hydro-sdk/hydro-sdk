
import { AxisDirection } from "../painting/axisDirection";
import { IScrollController } from "./scrollController";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { IScrollIncrementDetails } from "./scrollIncrementDetails";
import { IKey } from "../foundation/key";
import { IScrollPhysics } from "./scrollPhysics";
import { IScrollBehavior } from "./scrollBehavior";
import { IBuildContext } from "./buildContext";
import { IViewportOffset } from "../rendering/viewportOffset";
import { IWidget } from "./widget";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IScrollableState } from "./scrollableState";
import { ScrollPositionAlignmentPolicy } from "./scrollPositionAlignmentPolicy";
import { ICurve } from "../animation/curve";
import { IDuration,Duration } from "../../dart/core/duration";
import { IFuture } from "../../dart/async/future";
import { Axis } from "../painting/axis";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
import { Curves } from "../animation/curves";
declare const flutter: {
widgets: {
scrollable: (this: void, scrollable: IScrollable, props : {  axisDirection : AxisDirection, controller? : IScrollController | undefined, dragStartBehavior : DragStartBehavior, excludeFromSemantics : boolean, incrementCalculator? : (details: IScrollIncrementDetails) => number | undefined, key? : IKey | undefined, physics? : IScrollPhysics | undefined, restorationId? : string | undefined, scrollBehavior? : IScrollBehavior | undefined, semanticChildCount? : number | undefined, viewportBuilder : (context: IBuildContext, position: IViewportOffset) => IWidget,}) => IScrollable;
scrollableOf: (context: IBuildContext) => IScrollableState | undefined;
scrollableRecommendDeferredLoadingForContext: (context: IBuildContext) => boolean;
scrollableEnsureVisible: (context: IBuildContext, props : {  alignment : number, alignmentPolicy : ScrollPositionAlignmentPolicy, curve : ICurve, duration : IDuration,}) => IFuture<void>
}
};
export interface IScrollable


{
axisDirection: AxisDirection;
controller: IScrollController | undefined;
physics: IScrollPhysics | undefined;
excludeFromSemantics: boolean;
semanticChildCount: number | undefined;
dragStartBehavior: DragStartBehavior;
restorationId: string | undefined;
scrollBehavior: IScrollBehavior | undefined;
key: IKey | undefined;
getAxis: () => Axis;
createState: () => IScrollableState;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IStatefulElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class Scrollable

 implements IStatefulWidget, IDiagnosticable
{    public readonly axisDirection: AxisDirection = undefined as any;
    public readonly controller: IScrollController | undefined = undefined as any;
    public readonly physics: IScrollPhysics | undefined = undefined as any;
    public readonly excludeFromSemantics: boolean = undefined as any;
    public readonly semanticChildCount: number | undefined = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly scrollBehavior: IScrollBehavior | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  axisDirection? : AxisDirection, controller? : IScrollController | undefined, dragStartBehavior? : DragStartBehavior, excludeFromSemantics? : boolean, incrementCalculator? : (details: IScrollIncrementDetails) => number | undefined, key? : IKey | undefined, physics? : IScrollPhysics | undefined, restorationId? : string | undefined, scrollBehavior? : IScrollBehavior | undefined, semanticChildCount? : number | undefined, viewportBuilder : (context: IBuildContext, position: IViewportOffset) => IWidget,}){
flutter.widgets.scrollable(this, {
...scrollableDefaultProps,
...props
});}
public static of(context: IBuildContext) : IScrollableState | undefined{
return flutter.widgets.scrollableOf(context);
}public static recommendDeferredLoadingForContext(context: IBuildContext) : boolean{
return flutter.widgets.scrollableRecommendDeferredLoadingForContext(context);
}public static ensureVisible(context: IBuildContext, props : {  alignment? : number, alignmentPolicy? : ScrollPositionAlignmentPolicy, curve? : ICurve, duration? : IDuration,}) : IFuture<void>{
return flutter.widgets.scrollableEnsureVisible(context, {
...ensureVisibleDefaultProps,
...props
});
}    private readonly _dart_getAxis: () => Axis = undefined as any;
    private readonly _dart_createState: () => IScrollableState = undefined as any;
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
public createState() : IScrollableState {
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
const scrollableDefaultProps = {
    axisDirection: AxisDirection.down,
    dragStartBehavior: DragStartBehavior.start,
    excludeFromSemantics: false,
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
const ensureVisibleDefaultProps = {
    alignment: 0.0,
    alignmentPolicy: ScrollPositionAlignmentPolicy.explicit,
    curve: Curves.ease,
    duration: Duration.zero,
};
