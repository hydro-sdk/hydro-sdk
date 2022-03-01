
import { IRenderSliverBoxChildManager } from "./renderSliverBoxChildManager";
import { IRenderSliverMultiBoxAdaptor } from "./renderSliverMultiBoxAdaptor";
import { IContainerRenderObjectMixin } from "./containerRenderObjectMixin";
import { IRenderSliverHelpers } from "./renderSliverHelpers";
import { IRenderSliverWithKeepAliveMixin } from "./renderSliverWithKeepAliveMixin";
import { IRenderObject } from "./renderObject";
import { IRenderBox } from "./renderBox";
import { IPipelineOwner } from "./pipelineOwner";
import { IBoxConstraints } from "./boxConstraints";
import { ISliverHitTestResult } from "./sliverHitTestResult";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IPaintingContext } from "./paintingContext";
import { IOffset } from "../../dart/ui/offset";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IList } from "../../dart/core/list";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IRenderSliver } from "./renderSliver";
import { IHitTestTarget } from "../gestures/hitTestTarget";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { IDiagnosticableTreeMixin } from "../foundation/diagnosticableTreeMixin";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { ISliverConstraints } from "./sliverConstraints";
import { IBoxHitTestResult } from "./boxHitTestResult";
import { ISize } from "../../dart/ui/size";
import { IPointerEvent } from "../gestures/pointerEvent";
import { ISliverHitTestEntry } from "./sliverHitTestEntry";
import { ISliverGeometry } from "./sliverGeometry";
import { IRect } from "../../dart/ui/rect";
import { IConstraints } from "./constraints";
import { IDuration,Duration } from "../../dart/core/duration";
import { IContainerLayer } from "./containerLayer";
import { IOffsetLayer } from "./offsetLayer";
import { ISemanticsConfiguration } from "../semantics/semanticsConfiguration";
import { ISemanticsEvent } from "../semantics/semanticsEvent";
import { ISemanticsNode } from "../semantics/semanticsNode";
import { IIterable } from "../../dart/core/iterable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { ICurve } from "../animation/curve";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IAbstractNode } from "../foundation/abstractNode";
import { IParentData } from "./parentData";
import { Curves } from "../animation/curves";
declare const flutter: {
rendering: {
renderSliverFixedExtentBoxAdaptor: (this: void, renderSliverFixedExtentBoxAdaptor: IRenderSliverFixedExtentBoxAdaptor, props : {  childManager : IRenderSliverBoxChildManager,}) => IRenderSliverFixedExtentBoxAdaptor
}
};
export interface IRenderSliverFixedExtentBoxAdaptor


{
parentData: IParentData | undefined;
debugCreator: Object | undefined;
getItemExtent: () => number;
indexToLayoutOffset: (itemExtent: number, index: number) => number;
getMinChildIndexForScrollOffset: (scrollOffset: number, itemExtent: number) => number;
getMaxChildIndexForScrollOffset: (scrollOffset: number, itemExtent: number) => number;
estimateMaxScrollOffset: (constraints: ISliverConstraints, props? : {  firstIndex? : number | undefined, lastIndex? : number | undefined, leadingScrollOffset? : number | undefined, trailingScrollOffset? : number | undefined,}) => number;
computeMaxScrollOffset: (constraints: ISliverConstraints, itemExtent: number) => number;
performLayout: () => void;
setupParentData: (child: unknown) => void;
adoptChild: (child: unknown) => void;
insert: (child: IRenderBox, props? : {  after? : IRenderBox | undefined,}) => void;
move: (child: IRenderBox, props? : {  after? : IRenderBox | undefined,}) => void;
remove: (child: IRenderBox) => void;
removeAll: () => void;
attach: (owner: unknown) => void;
detach: () => void;
redepthChildren: () => void;
visitChildren: (visitor : (child: IRenderObject) => void) => void;
visitChildrenForSemantics: (visitor : (child: IRenderObject) => void) => void;
addInitialChild: ( props : {  index : number, layoutOffset : number,}) => boolean;
insertAndLayoutLeadingChild: (childConstraints: IBoxConstraints, props : {  parentUsesSize : boolean,}) => IRenderBox | undefined;
insertAndLayoutChild: (childConstraints: IBoxConstraints, props : {  parentUsesSize : boolean, after? : IRenderBox | undefined,}) => IRenderBox | undefined;
collectGarbage: (leadingGarbage: number, trailingGarbage: number) => void;
indexOf: (child: IRenderBox) => number;
paintExtentOf: (child: IRenderBox) => number;
hitTestChildren: (result: ISliverHitTestResult, props : {  crossAxisPosition : number, mainAxisPosition : number,}) => boolean;
childMainAxisPosition: (child: unknown) => number;
childScrollOffset: (child: unknown) => number | undefined;
applyPaintTransform: (child: unknown, transform: IMatrix4) => void;
paint: (context: IPaintingContext, offset: IOffset) => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
debugAssertChildListIsNonEmptyAndContiguous: () => boolean;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
getChildManager: () => IRenderSliverBoxChildManager;
getDebugChildIntegrityEnabled: () => boolean;
setDebugChildIntegrityEnabled: (enabled: boolean) => void;
debugValidateChild: (child: IRenderObject) => boolean;
add: (child: IRenderBox) => void;
addAll: (children?: IList<IRenderBox> | undefined) => void;
childBefore: (child: IRenderBox) => IRenderBox | undefined;
childAfter: (child: IRenderBox) => IRenderBox | undefined;
getChildCount: () => number;
getFirstChild: () => IRenderBox | undefined;
getLastChild: () => IRenderBox | undefined;
hitTestBoxChild: (result: IBoxHitTestResult, child: IRenderBox, props : {  crossAxisPosition : number, mainAxisPosition : number,}) => boolean;
applyPaintTransformForBoxChild: (child: IRenderBox, transform: IMatrix4) => void;
debugResetSize: () => void;
debugAssertDoesMeetConstraints: () => void;
performResize: () => void;
hitTest: (result: ISliverHitTestResult, props : {  crossAxisPosition : number, mainAxisPosition : number,}) => boolean;
hitTestSelf: ( props : {  crossAxisPosition : number, mainAxisPosition : number,}) => boolean;
calculatePaintOffset: (constraints: ISliverConstraints, props : {  from : number, to : number,}) => number;
calculateCacheOffset: (constraints: ISliverConstraints, props : {  from : number, to : number,}) => number;
childCrossAxisPosition: (child: unknown) => number;
getAbsoluteSizeRelativeToOrigin: () => ISize;
getAbsoluteSize: () => ISize;
debugPaint: (context: IPaintingContext, offset: IOffset) => void;
handleEvent: (event: IPointerEvent, entry: unknown) => void;
getConstraints: () => ISliverConstraints;
getGeometry: () => ISliverGeometry | undefined;
setGeometry: (value?: ISliverGeometry | undefined) => void;
getSemanticBounds: () => IRect;
getPaintBounds: () => IRect;
getCenterOffsetAdjustment: () => number;
reassemble: () => void;
dispose: () => void;
dropChild: (child: unknown) => void;
markNeedsLayout: () => void;
markParentNeedsLayout: () => void;
markNeedsLayoutForSizedByParentChange: () => void;
scheduleInitialLayout: () => void;
layout: (constraints: IConstraints, props : {  parentUsesSize : boolean,}) => void;
invokeLayoutCallback: <T>(callback : (constraints: T) => void) => void;
rotate: ( props? : {  newAngle? : number | undefined, oldAngle? : number | undefined, time? : IDuration | undefined,}) => void;
debugRegisterRepaintBoundaryPaint: ( props : {  includedChild : boolean, includedParent : boolean,}) => void;
markNeedsCompositingBitsUpdate: () => void;
markNeedsPaint: () => void;
scheduleInitialPaint: (rootLayer: IContainerLayer) => void;
replaceRootLayer: (rootLayer: IOffsetLayer) => void;
getTransformTo: (ancestor?: IRenderObject | undefined) => IMatrix4;
describeApproximatePaintClip: (child: unknown) => IRect | undefined;
describeSemanticsClip: (child: unknown) => IRect | undefined;
scheduleInitialSemantics: () => void;
describeSemanticsConfiguration: (config: ISemanticsConfiguration) => void;
sendSemanticsEvent: (semanticsEvent: ISemanticsEvent) => void;
clearSemantics: () => void;
markNeedsSemanticsUpdate: () => void;
assembleSemanticsNode: (node: ISemanticsNode, config: ISemanticsConfiguration, children: IIterable<ISemanticsNode>) => void;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
showOnScreen: ( props : {  curve : ICurve, descendant? : IRenderObject | undefined, duration : IDuration, rect? : IRect | undefined,}) => void;
describeForError: (name: string, props : {  style : DiagnosticsTreeStyle,}) => IDiagnosticsNode;
getDebugDisposed: () => boolean | undefined;
getDebugDoingThisResize: () => boolean;
getDebugDoingThisLayout: () => boolean;
getDebugCanParentUseSize: () => boolean;
getOwner: () => IPipelineOwner | undefined;
getDebugNeedsLayout: () => boolean;
getDebugDoingThisLayoutWithCallback: () => boolean;
getSizedByParent: () => boolean;
getDebugDoingThisPaint: () => boolean;
getIsRepaintBoundary: () => boolean;
getAlwaysNeedsCompositing: () => boolean;
getLayer: () => IContainerLayer | undefined;
setLayer: (newLayer?: IContainerLayer | undefined) => void;
getDebugLayer: () => IContainerLayer | undefined;
getNeedsCompositing: () => boolean;
getDebugNeedsPaint: () => boolean;
getDebugSemantics: () => ISemanticsNode | undefined;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
redepthChild: (child: IAbstractNode) => void;
getDepth: () => number;
getAttached: () => boolean;
getParent: () => IAbstractNode | undefined;
getHashCode: () => number;
}export class RenderSliverFixedExtentBoxAdaptor

 implements Omit<IRenderSliverMultiBoxAdaptor, "insert" | "move" | "remove" | "removeAll" | "attach" | "detach" | "redepthChildren" | "visitChildren" | "debugDescribeChildren" | "hitTestChildren" | "childMainAxisPosition" | "childScrollOffset" | "applyPaintTransform" | "debugFillProperties" | "toStringShort" | "toString" | "toStringDeep" | "toStringShallow" | "toDiagnosticsNode">, IContainerRenderObjectMixin<IRenderBox,ISliverMultiBoxAdaptorParentData>, IRenderSliverHelpers, IRenderSliverWithKeepAliveMixin, IDiagnosticableTreeMixin, IDiagnosticable, IRenderSliver, IHitTestTarget, Omit<IDiagnosticableTree, "debugDescribeChildren" | "debugFillProperties" | "toStringShallow" | "toStringDeep" | "toStringShort" | "toDiagnosticsNode">
{    public readonly parentData: IParentData | undefined = undefined as any;
    public readonly debugCreator: Object | undefined = undefined as any;
public constructor( props : {  childManager : IRenderSliverBoxChildManager,}){
flutter.rendering.renderSliverFixedExtentBoxAdaptor(this, props);}
    private readonly _dart_getItemExtent: () => number = undefined as any;
    private readonly _dart_indexToLayoutOffset: (itemExtent: number, index: number) => number = undefined as any;
    private readonly _dart_getMinChildIndexForScrollOffset: (scrollOffset: number, itemExtent: number) => number = undefined as any;
    private readonly _dart_getMaxChildIndexForScrollOffset: (scrollOffset: number, itemExtent: number) => number = undefined as any;
    private readonly _dart_estimateMaxScrollOffset: (constraints: ISliverConstraints, props? : {  firstIndex? : number | undefined, lastIndex? : number | undefined, leadingScrollOffset? : number | undefined, trailingScrollOffset? : number | undefined,}) => number = undefined as any;
    private readonly _dart_computeMaxScrollOffset: (constraints: ISliverConstraints, itemExtent: number) => number = undefined as any;
    private readonly _dart_performLayout: () => void = undefined as any;
    private readonly _dart_setupParentData: (child: any) => void = undefined as any;
    private readonly _dart_adoptChild: (child: any) => void = undefined as any;
    private readonly _dart_insert: (child: IRenderBox, props? : {  after? : IRenderBox | undefined,}) => void = undefined as any;
    private readonly _dart_move: (child: IRenderBox, props? : {  after? : IRenderBox | undefined,}) => void = undefined as any;
    private readonly _dart_remove: (child: IRenderBox) => void = undefined as any;
    private readonly _dart_removeAll: () => void = undefined as any;
    private readonly _dart_attach: (owner: any) => void = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_redepthChildren: () => void = undefined as any;
    private readonly _dart_visitChildren: (visitor : (child: IRenderObject) => void) => void = undefined as any;
    private readonly _dart_visitChildrenForSemantics: (visitor : (child: IRenderObject) => void) => void = undefined as any;
    private readonly _dart_addInitialChild: ( props : {  index : number, layoutOffset : number,}) => boolean = undefined as any;
    private readonly _dart_insertAndLayoutLeadingChild: (childConstraints: IBoxConstraints, props : {  parentUsesSize : boolean,}) => IRenderBox | undefined = undefined as any;
    private readonly _dart_insertAndLayoutChild: (childConstraints: IBoxConstraints, props : {  parentUsesSize : boolean, after? : IRenderBox | undefined,}) => IRenderBox | undefined = undefined as any;
    private readonly _dart_collectGarbage: (leadingGarbage: number, trailingGarbage: number) => void = undefined as any;
    private readonly _dart_indexOf: (child: IRenderBox) => number = undefined as any;
    private readonly _dart_paintExtentOf: (child: IRenderBox) => number = undefined as any;
    private readonly _dart_hitTestChildren: (result: ISliverHitTestResult, props : {  crossAxisPosition : number, mainAxisPosition : number,}) => boolean = undefined as any;
    private readonly _dart_childMainAxisPosition: (child: any) => number = undefined as any;
    private readonly _dart_childScrollOffset: (child: any) => number | undefined = undefined as any;
    private readonly _dart_applyPaintTransform: (child: any, transform: IMatrix4) => void = undefined as any;
    private readonly _dart_paint: (context: IPaintingContext, offset: IOffset) => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_debugAssertChildListIsNonEmptyAndContiguous: () => boolean = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_getChildManager: () => IRenderSliverBoxChildManager = undefined as any;
    private readonly _dart_getDebugChildIntegrityEnabled: () => boolean = undefined as any;
    private readonly _dart_setDebugChildIntegrityEnabled: (enabled: boolean) => void = undefined as any;
    private readonly _dart_debugValidateChild: (child: IRenderObject) => boolean = undefined as any;
    private readonly _dart_add: (child: IRenderBox) => void = undefined as any;
    private readonly _dart_addAll: (children?: IList<IRenderBox> | undefined) => void = undefined as any;
    private readonly _dart_childBefore: (child: IRenderBox) => IRenderBox | undefined = undefined as any;
    private readonly _dart_childAfter: (child: IRenderBox) => IRenderBox | undefined = undefined as any;
    private readonly _dart_getChildCount: () => number = undefined as any;
    private readonly _dart_getFirstChild: () => IRenderBox | undefined = undefined as any;
    private readonly _dart_getLastChild: () => IRenderBox | undefined = undefined as any;
    private readonly _dart_hitTestBoxChild: (result: IBoxHitTestResult, child: IRenderBox, props : {  crossAxisPosition : number, mainAxisPosition : number,}) => boolean = undefined as any;
    private readonly _dart_applyPaintTransformForBoxChild: (child: IRenderBox, transform: IMatrix4) => void = undefined as any;
    private readonly _dart_debugResetSize: () => void = undefined as any;
    private readonly _dart_debugAssertDoesMeetConstraints: () => void = undefined as any;
    private readonly _dart_performResize: () => void = undefined as any;
    private readonly _dart_hitTest: (result: ISliverHitTestResult, props : {  crossAxisPosition : number, mainAxisPosition : number,}) => boolean = undefined as any;
    private readonly _dart_hitTestSelf: ( props : {  crossAxisPosition : number, mainAxisPosition : number,}) => boolean = undefined as any;
    private readonly _dart_calculatePaintOffset: (constraints: ISliverConstraints, props : {  from : number, to : number,}) => number = undefined as any;
    private readonly _dart_calculateCacheOffset: (constraints: ISliverConstraints, props : {  from : number, to : number,}) => number = undefined as any;
    private readonly _dart_childCrossAxisPosition: (child: any) => number = undefined as any;
    private readonly _dart_getAbsoluteSizeRelativeToOrigin: () => ISize = undefined as any;
    private readonly _dart_getAbsoluteSize: () => ISize = undefined as any;
    private readonly _dart_debugPaint: (context: IPaintingContext, offset: IOffset) => void = undefined as any;
    private readonly _dart_handleEvent: (event: IPointerEvent, entry: any) => void = undefined as any;
    private readonly _dart_getConstraints: () => ISliverConstraints = undefined as any;
    private readonly _dart_getGeometry: () => ISliverGeometry | undefined = undefined as any;
    private readonly _dart_setGeometry: (value?: ISliverGeometry | undefined) => void = undefined as any;
    private readonly _dart_getSemanticBounds: () => IRect = undefined as any;
    private readonly _dart_getPaintBounds: () => IRect = undefined as any;
    private readonly _dart_getCenterOffsetAdjustment: () => number = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_dropChild: (child: any) => void = undefined as any;
    private readonly _dart_markNeedsLayout: () => void = undefined as any;
    private readonly _dart_markParentNeedsLayout: () => void = undefined as any;
    private readonly _dart_markNeedsLayoutForSizedByParentChange: () => void = undefined as any;
    private readonly _dart_scheduleInitialLayout: () => void = undefined as any;
    private readonly _dart_layout: (constraints: IConstraints, props : {  parentUsesSize : boolean,}) => void = undefined as any;
    private readonly _dart_invokeLayoutCallback: <T>(callback : (constraints: T) => void) => void = undefined as any;
    private readonly _dart_rotate: ( props? : {  newAngle? : number | undefined, oldAngle? : number | undefined, time? : IDuration | undefined,}) => void = undefined as any;
    private readonly _dart_debugRegisterRepaintBoundaryPaint: ( props : {  includedChild : boolean, includedParent : boolean,}) => void = undefined as any;
    private readonly _dart_markNeedsCompositingBitsUpdate: () => void = undefined as any;
    private readonly _dart_markNeedsPaint: () => void = undefined as any;
    private readonly _dart_scheduleInitialPaint: (rootLayer: IContainerLayer) => void = undefined as any;
    private readonly _dart_replaceRootLayer: (rootLayer: IOffsetLayer) => void = undefined as any;
    private readonly _dart_getTransformTo: (ancestor?: IRenderObject | undefined) => IMatrix4 = undefined as any;
    private readonly _dart_describeApproximatePaintClip: (child: any) => IRect | undefined = undefined as any;
    private readonly _dart_describeSemanticsClip: (child: any) => IRect | undefined = undefined as any;
    private readonly _dart_scheduleInitialSemantics: () => void = undefined as any;
    private readonly _dart_describeSemanticsConfiguration: (config: ISemanticsConfiguration) => void = undefined as any;
    private readonly _dart_sendSemanticsEvent: (semanticsEvent: ISemanticsEvent) => void = undefined as any;
    private readonly _dart_clearSemantics: () => void = undefined as any;
    private readonly _dart_markNeedsSemanticsUpdate: () => void = undefined as any;
    private readonly _dart_assembleSemanticsNode: (node: ISemanticsNode, config: ISemanticsConfiguration, children: IIterable<ISemanticsNode>) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_showOnScreen: ( props : {  curve : ICurve, descendant? : IRenderObject | undefined, duration : IDuration, rect? : IRect | undefined,}) => void = undefined as any;
    private readonly _dart_describeForError: (name: string, props : {  style : DiagnosticsTreeStyle,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getDebugDisposed: () => boolean | undefined = undefined as any;
    private readonly _dart_getDebugDoingThisResize: () => boolean = undefined as any;
    private readonly _dart_getDebugDoingThisLayout: () => boolean = undefined as any;
    private readonly _dart_getDebugCanParentUseSize: () => boolean = undefined as any;
    private readonly _dart_getOwner: () => IPipelineOwner | undefined = undefined as any;
    private readonly _dart_getDebugNeedsLayout: () => boolean = undefined as any;
    private readonly _dart_getDebugDoingThisLayoutWithCallback: () => boolean = undefined as any;
    private readonly _dart_getSizedByParent: () => boolean = undefined as any;
    private readonly _dart_getDebugDoingThisPaint: () => boolean = undefined as any;
    private readonly _dart_getIsRepaintBoundary: () => boolean = undefined as any;
    private readonly _dart_getAlwaysNeedsCompositing: () => boolean = undefined as any;
    private readonly _dart_getLayer: () => IContainerLayer | undefined = undefined as any;
    private readonly _dart_setLayer: (newLayer?: IContainerLayer | undefined) => void = undefined as any;
    private readonly _dart_getDebugLayer: () => IContainerLayer | undefined = undefined as any;
    private readonly _dart_getNeedsCompositing: () => boolean = undefined as any;
    private readonly _dart_getDebugNeedsPaint: () => boolean = undefined as any;
    private readonly _dart_getDebugSemantics: () => ISemanticsNode | undefined = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_redepthChild: (child: IAbstractNode) => void = undefined as any;
    private readonly _dart_getDepth: () => number = undefined as any;
    private readonly _dart_getAttached: () => boolean = undefined as any;
    private readonly _dart_getParent: () => IAbstractNode | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getItemExtent() : number {
    return this._dart_getItemExtent();
}
public indexToLayoutOffset(itemExtent: number, index: number) : number {
    return this._dart_indexToLayoutOffset(itemExtent, index);
}
public getMinChildIndexForScrollOffset(scrollOffset: number, itemExtent: number) : number {
    return this._dart_getMinChildIndexForScrollOffset(scrollOffset, itemExtent);
}
public getMaxChildIndexForScrollOffset(scrollOffset: number, itemExtent: number) : number {
    return this._dart_getMaxChildIndexForScrollOffset(scrollOffset, itemExtent);
}
public estimateMaxScrollOffset(constraints: ISliverConstraints, props? : {  firstIndex? : number | undefined, lastIndex? : number | undefined, leadingScrollOffset? : number | undefined, trailingScrollOffset? : number | undefined,}) : number {
    return this._dart_estimateMaxScrollOffset(constraints, props);
}
public computeMaxScrollOffset(constraints: ISliverConstraints, itemExtent: number) : number {
    return this._dart_computeMaxScrollOffset(constraints, itemExtent);
}
public performLayout() : void {
    return this._dart_performLayout();
}
public setupParentData(child: any) : void {
    return this._dart_setupParentData(child);
}
public adoptChild(child: any) : void {
    return this._dart_adoptChild(child);
}
public insert(child: IRenderBox, props? : {  after? : IRenderBox | undefined,}) : void {
    return this._dart_insert(child, props);
}
public move(child: IRenderBox, props? : {  after? : IRenderBox | undefined,}) : void {
    return this._dart_move(child, props);
}
public remove(child: IRenderBox) : void {
    return this._dart_remove(child);
}
public removeAll() : void {
    return this._dart_removeAll();
}
public attach(owner: any) : void {
    return this._dart_attach(owner);
}
public detach() : void {
    return this._dart_detach();
}
public redepthChildren() : void {
    return this._dart_redepthChildren();
}
public visitChildren(visitor : (child: IRenderObject) => void) : void {
    return this._dart_visitChildren(visitor);
}
public visitChildrenForSemantics(visitor : (child: IRenderObject) => void) : void {
    return this._dart_visitChildrenForSemantics(visitor);
}
public addInitialChild( props : {  index? : number, layoutOffset? : number,}) : boolean {
    return this._dart_addInitialChild({
...addInitialChildDefaultProps,
...props
});
}
public insertAndLayoutLeadingChild(childConstraints: IBoxConstraints, props : {  parentUsesSize? : boolean,}) : IRenderBox | undefined {
    return this._dart_insertAndLayoutLeadingChild(childConstraints, {
...insertAndLayoutLeadingChildDefaultProps,
...props
});
}
public insertAndLayoutChild(childConstraints: IBoxConstraints, props : {  parentUsesSize? : boolean, after? : IRenderBox | undefined,}) : IRenderBox | undefined {
    return this._dart_insertAndLayoutChild(childConstraints, {
...insertAndLayoutChildDefaultProps,
...props
});
}
public collectGarbage(leadingGarbage: number, trailingGarbage: number) : void {
    return this._dart_collectGarbage(leadingGarbage, trailingGarbage);
}
public indexOf(child: IRenderBox) : number {
    return this._dart_indexOf(child);
}
public paintExtentOf(child: IRenderBox) : number {
    return this._dart_paintExtentOf(child);
}
public hitTestChildren(result: ISliverHitTestResult, props : {  crossAxisPosition : number, mainAxisPosition : number,}) : boolean {
    return this._dart_hitTestChildren(result, props);
}
public childMainAxisPosition(child: any) : number {
    return this._dart_childMainAxisPosition(child);
}
public childScrollOffset(child: any) : number | undefined {
    return this._dart_childScrollOffset(child);
}
public applyPaintTransform(child: any, transform: IMatrix4) : void {
    return this._dart_applyPaintTransform(child, transform);
}
public paint(context: IPaintingContext, offset: IOffset) : void {
    return this._dart_paint(context, offset);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public debugAssertChildListIsNonEmptyAndContiguous() : boolean {
    return this._dart_debugAssertChildListIsNonEmptyAndContiguous();
}
public debugDescribeChildren() : IList<IDiagnosticsNode> {
    return this._dart_debugDescribeChildren();
}
public getChildManager() : IRenderSliverBoxChildManager {
    return this._dart_getChildManager();
}
public getDebugChildIntegrityEnabled() : boolean {
    return this._dart_getDebugChildIntegrityEnabled();
}
public setDebugChildIntegrityEnabled(enabled: boolean) : void {
    return this._dart_setDebugChildIntegrityEnabled(enabled);
}
public debugValidateChild(child: IRenderObject) : boolean {
    return this._dart_debugValidateChild(child);
}
public add(child: IRenderBox) : void {
    return this._dart_add(child);
}
public addAll(children?: IList<IRenderBox> | undefined) : void {
    return this._dart_addAll(children);
}
public childBefore(child: IRenderBox) : IRenderBox | undefined {
    return this._dart_childBefore(child);
}
public childAfter(child: IRenderBox) : IRenderBox | undefined {
    return this._dart_childAfter(child);
}
public getChildCount() : number {
    return this._dart_getChildCount();
}
public getFirstChild() : IRenderBox | undefined {
    return this._dart_getFirstChild();
}
public getLastChild() : IRenderBox | undefined {
    return this._dart_getLastChild();
}
public hitTestBoxChild(result: IBoxHitTestResult, child: IRenderBox, props : {  crossAxisPosition : number, mainAxisPosition : number,}) : boolean {
    return this._dart_hitTestBoxChild(result, child, props);
}
public applyPaintTransformForBoxChild(child: IRenderBox, transform: IMatrix4) : void {
    return this._dart_applyPaintTransformForBoxChild(child, transform);
}
public debugResetSize() : void {
    return this._dart_debugResetSize();
}
public debugAssertDoesMeetConstraints() : void {
    return this._dart_debugAssertDoesMeetConstraints();
}
public performResize() : void {
    return this._dart_performResize();
}
public hitTest(result: ISliverHitTestResult, props : {  crossAxisPosition : number, mainAxisPosition : number,}) : boolean {
    return this._dart_hitTest(result, props);
}
public hitTestSelf( props : {  crossAxisPosition : number, mainAxisPosition : number,}) : boolean {
    return this._dart_hitTestSelf(props);
}
public calculatePaintOffset(constraints: ISliverConstraints, props : {  from : number, to : number,}) : number {
    return this._dart_calculatePaintOffset(constraints, props);
}
public calculateCacheOffset(constraints: ISliverConstraints, props : {  from : number, to : number,}) : number {
    return this._dart_calculateCacheOffset(constraints, props);
}
public childCrossAxisPosition(child: any) : number {
    return this._dart_childCrossAxisPosition(child);
}
public getAbsoluteSizeRelativeToOrigin() : ISize {
    return this._dart_getAbsoluteSizeRelativeToOrigin();
}
public getAbsoluteSize() : ISize {
    return this._dart_getAbsoluteSize();
}
public debugPaint(context: IPaintingContext, offset: IOffset) : void {
    return this._dart_debugPaint(context, offset);
}
public handleEvent(event: IPointerEvent, entry: any) : void {
    return this._dart_handleEvent(event, entry);
}
public getConstraints() : ISliverConstraints {
    return this._dart_getConstraints();
}
public getGeometry() : ISliverGeometry | undefined {
    return this._dart_getGeometry();
}
public setGeometry(value?: ISliverGeometry | undefined) : void {
    return this._dart_setGeometry(value);
}
public getSemanticBounds() : IRect {
    return this._dart_getSemanticBounds();
}
public getPaintBounds() : IRect {
    return this._dart_getPaintBounds();
}
public getCenterOffsetAdjustment() : number {
    return this._dart_getCenterOffsetAdjustment();
}
public reassemble() : void {
    return this._dart_reassemble();
}
public dispose() : void {
    return this._dart_dispose();
}
public dropChild(child: any) : void {
    return this._dart_dropChild(child);
}
public markNeedsLayout() : void {
    return this._dart_markNeedsLayout();
}
public markParentNeedsLayout() : void {
    return this._dart_markParentNeedsLayout();
}
public markNeedsLayoutForSizedByParentChange() : void {
    return this._dart_markNeedsLayoutForSizedByParentChange();
}
public scheduleInitialLayout() : void {
    return this._dart_scheduleInitialLayout();
}
public layout(constraints: IConstraints, props : {  parentUsesSize? : boolean,}) : void {
    return this._dart_layout(constraints, {
...layoutDefaultProps,
...props
});
}
public invokeLayoutCallback<T>(callback : (constraints: T) => void) : void {
    return this._dart_invokeLayoutCallback(callback);
}
public rotate( props? : {  newAngle? : number | undefined, oldAngle? : number | undefined, time? : IDuration | undefined,}) : void {
    return this._dart_rotate(props);
}
public debugRegisterRepaintBoundaryPaint( props : {  includedChild? : boolean, includedParent? : boolean,}) : void {
    return this._dart_debugRegisterRepaintBoundaryPaint({
...debugRegisterRepaintBoundaryPaintDefaultProps,
...props
});
}
public markNeedsCompositingBitsUpdate() : void {
    return this._dart_markNeedsCompositingBitsUpdate();
}
public markNeedsPaint() : void {
    return this._dart_markNeedsPaint();
}
public scheduleInitialPaint(rootLayer: IContainerLayer) : void {
    return this._dart_scheduleInitialPaint(rootLayer);
}
public replaceRootLayer(rootLayer: IOffsetLayer) : void {
    return this._dart_replaceRootLayer(rootLayer);
}
public getTransformTo(ancestor?: IRenderObject | undefined) : IMatrix4 {
    return this._dart_getTransformTo(ancestor);
}
public describeApproximatePaintClip(child: any) : IRect | undefined {
    return this._dart_describeApproximatePaintClip(child);
}
public describeSemanticsClip(child: any) : IRect | undefined {
    return this._dart_describeSemanticsClip(child);
}
public scheduleInitialSemantics() : void {
    return this._dart_scheduleInitialSemantics();
}
public describeSemanticsConfiguration(config: ISemanticsConfiguration) : void {
    return this._dart_describeSemanticsConfiguration(config);
}
public sendSemanticsEvent(semanticsEvent: ISemanticsEvent) : void {
    return this._dart_sendSemanticsEvent(semanticsEvent);
}
public clearSemantics() : void {
    return this._dart_clearSemantics();
}
public markNeedsSemanticsUpdate() : void {
    return this._dart_markNeedsSemanticsUpdate();
}
public assembleSemanticsNode(node: ISemanticsNode, config: ISemanticsConfiguration, children: IIterable<ISemanticsNode>) : void {
    return this._dart_assembleSemanticsNode(node, config, children);
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
public toStringDeep( props : {  minLevel? : DiagnosticLevel, prefixLineOne? : string, prefixOtherLines? : string | undefined,}) : string {
    return this._dart_toStringDeep({
...toStringDeepDefaultProps,
...props
});
}
public toStringShallow( props : {  joiner? : string, minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toStringShallow({
...toStringShallowDefaultProps,
...props
});
}
public showOnScreen( props : {  curve? : ICurve, descendant? : IRenderObject | undefined, duration? : IDuration, rect? : IRect | undefined,}) : void {
    return this._dart_showOnScreen({
...showOnScreenDefaultProps,
...props
});
}
public describeForError(name: string, props : {  style? : DiagnosticsTreeStyle,}) : IDiagnosticsNode {
    return this._dart_describeForError(name, {
...describeForErrorDefaultProps,
...props
});
}
public getDebugDisposed() : boolean | undefined {
    return this._dart_getDebugDisposed();
}
public getDebugDoingThisResize() : boolean {
    return this._dart_getDebugDoingThisResize();
}
public getDebugDoingThisLayout() : boolean {
    return this._dart_getDebugDoingThisLayout();
}
public getDebugCanParentUseSize() : boolean {
    return this._dart_getDebugCanParentUseSize();
}
public getOwner() : IPipelineOwner | undefined {
    return this._dart_getOwner();
}
public getDebugNeedsLayout() : boolean {
    return this._dart_getDebugNeedsLayout();
}
public getDebugDoingThisLayoutWithCallback() : boolean {
    return this._dart_getDebugDoingThisLayoutWithCallback();
}
public getSizedByParent() : boolean {
    return this._dart_getSizedByParent();
}
public getDebugDoingThisPaint() : boolean {
    return this._dart_getDebugDoingThisPaint();
}
public getIsRepaintBoundary() : boolean {
    return this._dart_getIsRepaintBoundary();
}
public getAlwaysNeedsCompositing() : boolean {
    return this._dart_getAlwaysNeedsCompositing();
}
public getLayer() : IContainerLayer | undefined {
    return this._dart_getLayer();
}
public setLayer(newLayer?: IContainerLayer | undefined) : void {
    return this._dart_setLayer(newLayer);
}
public getDebugLayer() : IContainerLayer | undefined {
    return this._dart_getDebugLayer();
}
public getNeedsCompositing() : boolean {
    return this._dart_getNeedsCompositing();
}
public getDebugNeedsPaint() : boolean {
    return this._dart_getDebugNeedsPaint();
}
public getDebugSemantics() : ISemanticsNode | undefined {
    return this._dart_getDebugSemantics();
}
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
public redepthChild(child: IAbstractNode) : void {
    return this._dart_redepthChild(child);
}
public getDepth() : number {
    return this._dart_getDepth();
}
public getAttached() : boolean {
    return this._dart_getAttached();
}
public getParent() : IAbstractNode | undefined {
    return this._dart_getParent();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const addInitialChildDefaultProps = {
    index: 0,
    layoutOffset: 0.0,
};
const insertAndLayoutLeadingChildDefaultProps = {
    parentUsesSize: false,
};
const insertAndLayoutChildDefaultProps = {
    parentUsesSize: false,
};
const layoutDefaultProps = {
    parentUsesSize: false,
};
const debugRegisterRepaintBoundaryPaintDefaultProps = {
    includedChild: false,
    includedParent: true,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
    prefixOtherLines: "",
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const showOnScreenDefaultProps = {
    curve: Curves.ease,
    duration: Duration.zero,
};
const describeForErrorDefaultProps = {
    style: DiagnosticsTreeStyle.shallow,
};
