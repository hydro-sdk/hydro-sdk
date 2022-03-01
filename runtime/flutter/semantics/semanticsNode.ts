
import { IKey } from "../foundation/key";
import { IAbstractNode } from "../foundation/abstractNode";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { IDiagnosticableTreeMixin } from "../foundation/diagnosticableTreeMixin";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IRect } from "../../dart/ui/rect";
import { ISemanticsOwner } from "./semanticsOwner";
import { ISemanticsTag } from "./semanticsTag";
import { ISemanticsFlag } from "../../dart/ui/semanticsFlag";
import { IAttributedString } from "./attributedString";
import { ISemanticsHintOverrides } from "./semanticsHintOverrides";
import { TextDirection } from "../../dart/ui/textDirection";
import { ISemanticsSortKey } from "./semanticsSortKey";
import { ITextSelection } from "../services/textSelection";
import { IList } from "../../dart/core/list";
import { ISemanticsConfiguration } from "./semanticsConfiguration";
import { ISemanticsData } from "./semanticsData";
import { ISemanticsEvent } from "./semanticsEvent";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DebugSemanticsDumpOrder } from "./debugSemanticsDumpOrder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { ISet } from "../../dart/core/set";
declare const flutter: {
semantics: {
semanticsNode: (this: void, semanticsNode: ISemanticsNode, props? : {  key? : IKey | undefined, showOnScreen? : () => void | undefined,}) => ISemanticsNode
}
};
export interface ISemanticsNode


{
key: IKey | undefined;
parentSemanticsClipRect: IRect | undefined;
parentPaintClipRect: IRect | undefined;
elevationAdjustment: number | undefined;
indexInParent: number | undefined;
tags: ISet<ISemanticsTag> | undefined;
getId: () => number;
getTransform: () => IMatrix4 | undefined;
setTransform: (value?: IMatrix4 | undefined) => void;
getRect: () => IRect;
setRect: (value: IRect) => void;
getIsInvisible: () => boolean;
getIsMergedIntoParent: () => boolean;
setIsMergedIntoParent: (value: boolean) => void;
getIsPartOfNodeMerging: () => boolean;
getMergeAllDescendantsIntoThisNode: () => boolean;
getHasChildren: () => boolean;
getChildrenCount: () => number;
visitChildren: (visitor : (node: ISemanticsNode) => boolean) => void;
getOwner: () => ISemanticsOwner | undefined;
getParent: () => ISemanticsNode | undefined;
redepthChildren: () => void;
attach: (owner: unknown) => void;
detach: () => void;
isTagged: (tag: ISemanticsTag) => boolean;
hasFlag: (flag: ISemanticsFlag) => boolean;
getLabel: () => string;
getAttributedLabel: () => IAttributedString;
getValue: () => string;
getAttributedValue: () => IAttributedString;
getIncreasedValue: () => string;
getAttributedIncreasedValue: () => IAttributedString;
getDecreasedValue: () => string;
getAttributedDecreasedValue: () => IAttributedString;
getHint: () => string;
getAttributedHint: () => IAttributedString;
getElevation: () => number;
getThickness: () => number;
getHintOverrides: () => ISemanticsHintOverrides | undefined;
getTextDirection: () => TextDirection | undefined;
getSortKey: () => ISemanticsSortKey | undefined;
getTextSelection: () => ITextSelection | undefined;
getIsMultiline: () => boolean | undefined;
getScrollChildCount: () => number | undefined;
getScrollIndex: () => number | undefined;
getScrollPosition: () => number | undefined;
getScrollExtentMax: () => number | undefined;
getScrollExtentMin: () => number | undefined;
getPlatformViewId: () => number | undefined;
getMaxValueLength: () => number | undefined;
getCurrentValueLength: () => number | undefined;
updateWith: ( props? : {  childrenInInversePaintOrder? : IList<ISemanticsNode> | undefined, config? : ISemanticsConfiguration | undefined,}) => void;
getSemanticsData: () => ISemanticsData;
sendEvent: (event: ISemanticsEvent) => void;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
toStringDeep: ( props : {  childOrder : DebugSemanticsDumpOrder, minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props : {  childOrder : DebugSemanticsDumpOrder, name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: ( props : {  childOrder : DebugSemanticsDumpOrder,}) => IList<IDiagnosticsNode>;
debugListChildrenInOrder: (childOrder: DebugSemanticsDumpOrder) => IList<ISemanticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
redepthChild: (child: IAbstractNode) => void;
adoptChild: (child: unknown) => void;
dropChild: (child: unknown) => void;
getDepth: () => number;
getAttached: () => boolean;
getHashCode: () => number;
}export class SemanticsNode

 implements IAbstractNode, IDiagnosticableTreeMixin, IDiagnosticable, Omit<IDiagnosticableTree, "toStringShallow" | "toStringDeep" | "debugDescribeChildren" | "debugFillProperties" | "toStringShort" | "toDiagnosticsNode">
{    public static _maxFrameworkAccessibilityIdentifier = Unknown-1;
    public readonly key: IKey | undefined = undefined as any;
    public readonly parentSemanticsClipRect: IRect | undefined = undefined as any;
    public readonly parentPaintClipRect: IRect | undefined = undefined as any;
    public readonly elevationAdjustment: number | undefined = undefined as any;
    public readonly indexInParent: number | undefined = undefined as any;
    public readonly tags: ISet<ISemanticsTag> | undefined = undefined as any;
public constructor( props? : {  key? : IKey | undefined, showOnScreen? : () => void | undefined,}){
flutter.semantics.semanticsNode(this, props);}
    private readonly _dart_getId: () => number = undefined as any;
    private readonly _dart_getTransform: () => IMatrix4 | undefined = undefined as any;
    private readonly _dart_setTransform: (value?: IMatrix4 | undefined) => void = undefined as any;
    private readonly _dart_getRect: () => IRect = undefined as any;
    private readonly _dart_setRect: (value: IRect) => void = undefined as any;
    private readonly _dart_getIsInvisible: () => boolean = undefined as any;
    private readonly _dart_getIsMergedIntoParent: () => boolean = undefined as any;
    private readonly _dart_setIsMergedIntoParent: (value: boolean) => void = undefined as any;
    private readonly _dart_getIsPartOfNodeMerging: () => boolean = undefined as any;
    private readonly _dart_getMergeAllDescendantsIntoThisNode: () => boolean = undefined as any;
    private readonly _dart_getHasChildren: () => boolean = undefined as any;
    private readonly _dart_getChildrenCount: () => number = undefined as any;
    private readonly _dart_visitChildren: (visitor : (node: ISemanticsNode) => boolean) => void = undefined as any;
    private readonly _dart_getOwner: () => ISemanticsOwner | undefined = undefined as any;
    private readonly _dart_getParent: () => ISemanticsNode | undefined = undefined as any;
    private readonly _dart_redepthChildren: () => void = undefined as any;
    private readonly _dart_attach: (owner: any) => void = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_isTagged: (tag: ISemanticsTag) => boolean = undefined as any;
    private readonly _dart_hasFlag: (flag: ISemanticsFlag) => boolean = undefined as any;
    private readonly _dart_getLabel: () => string = undefined as any;
    private readonly _dart_getAttributedLabel: () => IAttributedString = undefined as any;
    private readonly _dart_getValue: () => string = undefined as any;
    private readonly _dart_getAttributedValue: () => IAttributedString = undefined as any;
    private readonly _dart_getIncreasedValue: () => string = undefined as any;
    private readonly _dart_getAttributedIncreasedValue: () => IAttributedString = undefined as any;
    private readonly _dart_getDecreasedValue: () => string = undefined as any;
    private readonly _dart_getAttributedDecreasedValue: () => IAttributedString = undefined as any;
    private readonly _dart_getHint: () => string = undefined as any;
    private readonly _dart_getAttributedHint: () => IAttributedString = undefined as any;
    private readonly _dart_getElevation: () => number = undefined as any;
    private readonly _dart_getThickness: () => number = undefined as any;
    private readonly _dart_getHintOverrides: () => ISemanticsHintOverrides | undefined = undefined as any;
    private readonly _dart_getTextDirection: () => TextDirection | undefined = undefined as any;
    private readonly _dart_getSortKey: () => ISemanticsSortKey | undefined = undefined as any;
    private readonly _dart_getTextSelection: () => ITextSelection | undefined = undefined as any;
    private readonly _dart_getIsMultiline: () => boolean | undefined = undefined as any;
    private readonly _dart_getScrollChildCount: () => number | undefined = undefined as any;
    private readonly _dart_getScrollIndex: () => number | undefined = undefined as any;
    private readonly _dart_getScrollPosition: () => number | undefined = undefined as any;
    private readonly _dart_getScrollExtentMax: () => number | undefined = undefined as any;
    private readonly _dart_getScrollExtentMin: () => number | undefined = undefined as any;
    private readonly _dart_getPlatformViewId: () => number | undefined = undefined as any;
    private readonly _dart_getMaxValueLength: () => number | undefined = undefined as any;
    private readonly _dart_getCurrentValueLength: () => number | undefined = undefined as any;
    private readonly _dart_updateWith: ( props? : {  childrenInInversePaintOrder? : IList<ISemanticsNode> | undefined, config? : ISemanticsConfiguration | undefined,}) => void = undefined as any;
    private readonly _dart_getSemanticsData: () => ISemanticsData = undefined as any;
    private readonly _dart_sendEvent: (event: ISemanticsEvent) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  childOrder : DebugSemanticsDumpOrder, minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props : {  childOrder : DebugSemanticsDumpOrder, name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: ( props : {  childOrder : DebugSemanticsDumpOrder,}) => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_debugListChildrenInOrder: (childOrder: DebugSemanticsDumpOrder) => IList<ISemanticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_redepthChild: (child: IAbstractNode) => void = undefined as any;
    private readonly _dart_adoptChild: (child: any) => void = undefined as any;
    private readonly _dart_dropChild: (child: any) => void = undefined as any;
    private readonly _dart_getDepth: () => number = undefined as any;
    private readonly _dart_getAttached: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getId() : number {
    return this._dart_getId();
}
public getTransform() : IMatrix4 | undefined {
    return this._dart_getTransform();
}
public setTransform(value?: IMatrix4 | undefined) : void {
    return this._dart_setTransform(value);
}
public getRect() : IRect {
    return this._dart_getRect();
}
public setRect(value: IRect) : void {
    return this._dart_setRect(value);
}
public getIsInvisible() : boolean {
    return this._dart_getIsInvisible();
}
public getIsMergedIntoParent() : boolean {
    return this._dart_getIsMergedIntoParent();
}
public setIsMergedIntoParent(value: boolean) : void {
    return this._dart_setIsMergedIntoParent(value);
}
public getIsPartOfNodeMerging() : boolean {
    return this._dart_getIsPartOfNodeMerging();
}
public getMergeAllDescendantsIntoThisNode() : boolean {
    return this._dart_getMergeAllDescendantsIntoThisNode();
}
public getHasChildren() : boolean {
    return this._dart_getHasChildren();
}
public getChildrenCount() : number {
    return this._dart_getChildrenCount();
}
public visitChildren(visitor : (node: ISemanticsNode) => boolean) : void {
    return this._dart_visitChildren(visitor);
}
public getOwner() : ISemanticsOwner | undefined {
    return this._dart_getOwner();
}
public getParent() : ISemanticsNode | undefined {
    return this._dart_getParent();
}
public redepthChildren() : void {
    return this._dart_redepthChildren();
}
public attach(owner: any) : void {
    return this._dart_attach(owner);
}
public detach() : void {
    return this._dart_detach();
}
public isTagged(tag: ISemanticsTag) : boolean {
    return this._dart_isTagged(tag);
}
public hasFlag(flag: ISemanticsFlag) : boolean {
    return this._dart_hasFlag(flag);
}
public getLabel() : string {
    return this._dart_getLabel();
}
public getAttributedLabel() : IAttributedString {
    return this._dart_getAttributedLabel();
}
public getValue() : string {
    return this._dart_getValue();
}
public getAttributedValue() : IAttributedString {
    return this._dart_getAttributedValue();
}
public getIncreasedValue() : string {
    return this._dart_getIncreasedValue();
}
public getAttributedIncreasedValue() : IAttributedString {
    return this._dart_getAttributedIncreasedValue();
}
public getDecreasedValue() : string {
    return this._dart_getDecreasedValue();
}
public getAttributedDecreasedValue() : IAttributedString {
    return this._dart_getAttributedDecreasedValue();
}
public getHint() : string {
    return this._dart_getHint();
}
public getAttributedHint() : IAttributedString {
    return this._dart_getAttributedHint();
}
public getElevation() : number {
    return this._dart_getElevation();
}
public getThickness() : number {
    return this._dart_getThickness();
}
public getHintOverrides() : ISemanticsHintOverrides | undefined {
    return this._dart_getHintOverrides();
}
public getTextDirection() : TextDirection | undefined {
    return this._dart_getTextDirection();
}
public getSortKey() : ISemanticsSortKey | undefined {
    return this._dart_getSortKey();
}
public getTextSelection() : ITextSelection | undefined {
    return this._dart_getTextSelection();
}
public getIsMultiline() : boolean | undefined {
    return this._dart_getIsMultiline();
}
public getScrollChildCount() : number | undefined {
    return this._dart_getScrollChildCount();
}
public getScrollIndex() : number | undefined {
    return this._dart_getScrollIndex();
}
public getScrollPosition() : number | undefined {
    return this._dart_getScrollPosition();
}
public getScrollExtentMax() : number | undefined {
    return this._dart_getScrollExtentMax();
}
public getScrollExtentMin() : number | undefined {
    return this._dart_getScrollExtentMin();
}
public getPlatformViewId() : number | undefined {
    return this._dart_getPlatformViewId();
}
public getMaxValueLength() : number | undefined {
    return this._dart_getMaxValueLength();
}
public getCurrentValueLength() : number | undefined {
    return this._dart_getCurrentValueLength();
}
public updateWith( props? : {  childrenInInversePaintOrder? : IList<ISemanticsNode> | undefined, config? : ISemanticsConfiguration | undefined,}) : void {
    return this._dart_updateWith(props);
}
public getSemanticsData() : ISemanticsData {
    return this._dart_getSemanticsData();
}
public sendEvent(event: ISemanticsEvent) : void {
    return this._dart_sendEvent(event);
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public toStringDeep( props : {  childOrder? : DebugSemanticsDumpOrder, minLevel? : DiagnosticLevel, prefixLineOne? : string, prefixOtherLines? : string | undefined,}) : string {
    return this._dart_toStringDeep({
...toStringDeepDefaultProps,
...props
});
}
public toDiagnosticsNode( props : {  childOrder? : DebugSemanticsDumpOrder, name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode({
...toDiagnosticsNodeDefaultProps,
...props
});
}
public debugDescribeChildren( props : {  childOrder? : DebugSemanticsDumpOrder,}) : IList<IDiagnosticsNode> {
    return this._dart_debugDescribeChildren({
...debugDescribeChildrenDefaultProps,
...props
});
}
public debugListChildrenInOrder(childOrder: DebugSemanticsDumpOrder) : IList<ISemanticsNode> {
    return this._dart_debugListChildrenInOrder(childOrder);
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
public toStringShallow( props : {  joiner? : string, minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toStringShallow({
...toStringShallowDefaultProps,
...props
});
}
public redepthChild(child: IAbstractNode) : void {
    return this._dart_redepthChild(child);
}
public adoptChild(child: any) : void {
    return this._dart_adoptChild(child);
}
public dropChild(child: any) : void {
    return this._dart_dropChild(child);
}
public getDepth() : number {
    return this._dart_getDepth();
}
public getAttached() : boolean {
    return this._dart_getAttached();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const toStringDeepDefaultProps = {
    childOrder: DebugSemanticsDumpOrder.traversalOrder,
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const toDiagnosticsNodeDefaultProps = {
    childOrder: DebugSemanticsDumpOrder.traversalOrder,
    style: DiagnosticsTreeStyle.sparse,
};
const debugDescribeChildrenDefaultProps = {
    childOrder: DebugSemanticsDumpOrder.inverseHitTest,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
