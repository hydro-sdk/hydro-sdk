
import { IAttributedString } from "../semantics/attributedString";
import { IRenderBox } from "./renderBox";
import { IMap } from "../../dart/core/map";
import { ICustomSemanticsAction } from "../semantics/customSemanticsAction";
import { ISemanticsHintOverrides } from "../semantics/semanticsHintOverrides";
import { ITextSelection } from "../services/textSelection";
import { ISemanticsSortKey } from "../semantics/semanticsSortKey";
import { ISemanticsTag } from "../semantics/semanticsTag";
import { TextDirection } from "../../dart/ui/textDirection";
import { IRenderProxyBox } from "./renderProxyBox";
import { IRenderObjectWithChildMixin } from "./renderObjectWithChildMixin";
import { IRenderProxyBoxMixin } from "./renderProxyBoxMixin";
import { IHitTestTarget } from "../gestures/hitTestTarget";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { IDiagnosticableTreeMixin } from "../foundation/diagnosticableTreeMixin";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IRenderObject } from "./renderObject";
import { ISemanticsConfiguration } from "../semantics/semanticsConfiguration";
import { IPipelineOwner } from "./pipelineOwner";
import { IList } from "../../dart/core/list";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { TextBaseline } from "../../dart/ui/textBaseline";
import { IBoxConstraints } from "./boxConstraints";
import { ISize } from "../../dart/ui/size";
import { IOffset } from "../../dart/ui/offset";
import { IBoxHitTestResult } from "./boxHitTestResult";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IPaintingContext } from "./paintingContext";
import { IFlutterError } from "../foundation/flutterError";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IBoxHitTestEntry } from "./boxHitTestEntry";
import { IHitTestEntry } from "../gestures/hitTestEntry";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IRect } from "../../dart/ui/rect";
import { IConstraints } from "./constraints";
import { IDuration,Duration } from "../../dart/core/duration";
import { IContainerLayer } from "./containerLayer";
import { IOffsetLayer } from "./offsetLayer";
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
renderSemanticsAnnotations: (this: void, renderSemanticsAnnotations: IRenderSemanticsAnnotations, props : {  attributedDecreasedValue? : IAttributedString | undefined, attributedHint? : IAttributedString | undefined, attributedIncreasedValue? : IAttributedString | undefined, attributedLabel? : IAttributedString | undefined, attributedValue? : IAttributedString | undefined, button? : boolean | undefined, checked? : boolean | undefined, child? : IRenderBox | undefined, container : boolean, currentValueLength? : number | undefined, customSemanticsActions? : IMap<ICustomSemanticsAction, () => void> | undefined, enabled? : boolean | undefined, excludeSemantics : boolean, explicitChildNodes : boolean, focusable? : boolean | undefined, focused? : boolean | undefined, header? : boolean | undefined, hidden? : boolean | undefined, hintOverrides? : ISemanticsHintOverrides | undefined, image? : boolean | undefined, inMutuallyExclusiveGroup? : boolean | undefined, keyboardKey? : boolean | undefined, link? : boolean | undefined, liveRegion? : boolean | undefined, maxValueLength? : number | undefined, multiline? : boolean | undefined, namesRoute? : boolean | undefined, obscured? : boolean | undefined, onCopy? : () => void | undefined, onCut? : () => void | undefined, onDecrease? : () => void | undefined, onDidGainAccessibilityFocus? : () => void | undefined, onDidLoseAccessibilityFocus? : () => void | undefined, onDismiss? : () => void | undefined, onIncrease? : () => void | undefined, onLongPress? : () => void | undefined, onMoveCursorBackwardByCharacter? : (extendSelection: boolean) => void | undefined, onMoveCursorBackwardByWord? : (extendSelection: boolean) => void | undefined, onMoveCursorForwardByCharacter? : (extendSelection: boolean) => void | undefined, onMoveCursorForwardByWord? : (extendSelection: boolean) => void | undefined, onPaste? : () => void | undefined, onScrollDown? : () => void | undefined, onScrollLeft? : () => void | undefined, onScrollRight? : () => void | undefined, onScrollUp? : () => void | undefined, onSetSelection? : (selection: ITextSelection) => void | undefined, onSetText? : (text: string) => void | undefined, onTap? : () => void | undefined, readOnly? : boolean | undefined, scopesRoute? : boolean | undefined, selected? : boolean | undefined, slider? : boolean | undefined, sortKey? : ISemanticsSortKey | undefined, tagForChildren? : ISemanticsTag | undefined, textDirection? : TextDirection | undefined, textField? : boolean | undefined, toggled? : boolean | undefined,}) => IRenderSemanticsAnnotations
}
};
export interface IRenderSemanticsAnnotations


{
parentData: IParentData | undefined;
debugCreator: Object | undefined;
getContainer: () => boolean;
setContainer: (value: boolean) => void;
getExplicitChildNodes: () => boolean;
setExplicitChildNodes: (value: boolean) => void;
getExcludeSemantics: () => boolean;
setExcludeSemantics: (value: boolean) => void;
getChecked: () => boolean | undefined;
setChecked: (value?: boolean | undefined) => void;
getEnabled: () => boolean | undefined;
setEnabled: (value?: boolean | undefined) => void;
getSelected: () => boolean | undefined;
setSelected: (value?: boolean | undefined) => void;
getButton: () => boolean | undefined;
setButton: (value?: boolean | undefined) => void;
getSlider: () => boolean | undefined;
setSlider: (value?: boolean | undefined) => void;
getKeyboardKey: () => boolean | undefined;
setKeyboardKey: (value?: boolean | undefined) => void;
getLink: () => boolean | undefined;
setLink: (value?: boolean | undefined) => void;
getHeader: () => boolean | undefined;
setHeader: (value?: boolean | undefined) => void;
getTextField: () => boolean | undefined;
setTextField: (value?: boolean | undefined) => void;
getReadOnly: () => boolean | undefined;
setReadOnly: (value?: boolean | undefined) => void;
getFocusable: () => boolean | undefined;
setFocusable: (value?: boolean | undefined) => void;
getFocused: () => boolean | undefined;
setFocused: (value?: boolean | undefined) => void;
getInMutuallyExclusiveGroup: () => boolean | undefined;
setInMutuallyExclusiveGroup: (value?: boolean | undefined) => void;
getObscured: () => boolean | undefined;
setObscured: (value?: boolean | undefined) => void;
getMultiline: () => boolean | undefined;
setMultiline: (value?: boolean | undefined) => void;
getScopesRoute: () => boolean | undefined;
setScopesRoute: (value?: boolean | undefined) => void;
getNamesRoute: () => boolean | undefined;
setNamesRoute: (value?: boolean | undefined) => void;
getHidden: () => boolean | undefined;
setHidden: (value?: boolean | undefined) => void;
getImage: () => boolean | undefined;
setImage: (value?: boolean | undefined) => void;
getLiveRegion: () => boolean | undefined;
setLiveRegion: (value?: boolean | undefined) => void;
getMaxValueLength: () => number | undefined;
setMaxValueLength: (value?: number | undefined) => void;
getCurrentValueLength: () => number | undefined;
setCurrentValueLength: (value?: number | undefined) => void;
getToggled: () => boolean | undefined;
setToggled: (value?: boolean | undefined) => void;
getAttributedLabel: () => IAttributedString | undefined;
setAttributedLabel: (value?: IAttributedString | undefined) => void;
getAttributedValue: () => IAttributedString | undefined;
setAttributedValue: (value?: IAttributedString | undefined) => void;
getAttributedIncreasedValue: () => IAttributedString | undefined;
setAttributedIncreasedValue: (value?: IAttributedString | undefined) => void;
getAttributedDecreasedValue: () => IAttributedString | undefined;
setAttributedDecreasedValue: (value?: IAttributedString | undefined) => void;
getAttributedHint: () => IAttributedString | undefined;
setAttributedHint: (value?: IAttributedString | undefined) => void;
getHintOverrides: () => ISemanticsHintOverrides | undefined;
setHintOverrides: (value?: ISemanticsHintOverrides | undefined) => void;
getTextDirection: () => TextDirection | undefined;
setTextDirection: (value?: TextDirection | undefined) => void;
getSortKey: () => ISemanticsSortKey | undefined;
setSortKey: (value?: ISemanticsSortKey | undefined) => void;
getTagForChildren: () => ISemanticsTag | undefined;
setTagForChildren: (value?: ISemanticsTag | undefined) => void;
getOnTap: () => () => void | undefined;
setOnTap: (handler? : () => void) => void;
getOnDismiss: () => () => void | undefined;
setOnDismiss: (handler? : () => void) => void;
getOnLongPress: () => () => void | undefined;
setOnLongPress: (handler? : () => void) => void;
getOnScrollLeft: () => () => void | undefined;
setOnScrollLeft: (handler? : () => void) => void;
getOnScrollRight: () => () => void | undefined;
setOnScrollRight: (handler? : () => void) => void;
getOnScrollUp: () => () => void | undefined;
setOnScrollUp: (handler? : () => void) => void;
getOnScrollDown: () => () => void | undefined;
setOnScrollDown: (handler? : () => void) => void;
getOnIncrease: () => () => void | undefined;
setOnIncrease: (handler? : () => void) => void;
getOnDecrease: () => () => void | undefined;
setOnDecrease: (handler? : () => void) => void;
getOnCopy: () => () => void | undefined;
setOnCopy: (handler? : () => void) => void;
getOnCut: () => () => void | undefined;
setOnCut: (handler? : () => void) => void;
getOnPaste: () => () => void | undefined;
setOnPaste: (handler? : () => void) => void;
getOnMoveCursorForwardByCharacter: () => (extendSelection: boolean) => void | undefined;
setOnMoveCursorForwardByCharacter: (handler? : (extendSelection: boolean) => void) => void;
getOnMoveCursorBackwardByCharacter: () => (extendSelection: boolean) => void | undefined;
setOnMoveCursorBackwardByCharacter: (handler? : (extendSelection: boolean) => void) => void;
getOnMoveCursorForwardByWord: () => (extendSelection: boolean) => void | undefined;
setOnMoveCursorForwardByWord: (handler? : (extendSelection: boolean) => void) => void;
getOnMoveCursorBackwardByWord: () => (extendSelection: boolean) => void | undefined;
setOnMoveCursorBackwardByWord: (handler? : (extendSelection: boolean) => void) => void;
getOnSetSelection: () => (selection: ITextSelection) => void | undefined;
setOnSetSelection: (handler? : (selection: ITextSelection) => void) => void;
getOnSetText: () => (text: string) => void | undefined;
setOnSetText: (handler? : (text: string) => void) => void;
getOnDidGainAccessibilityFocus: () => () => void | undefined;
setOnDidGainAccessibilityFocus: (handler? : () => void) => void;
getOnDidLoseAccessibilityFocus: () => () => void | undefined;
setOnDidLoseAccessibilityFocus: (handler? : () => void) => void;
getCustomSemanticsActions: () => IMap<ICustomSemanticsAction, () => void> | undefined;
setCustomSemanticsActions: (value?: IMap<ICustomSemanticsAction, () => void> | undefined) => void;
visitChildrenForSemantics: (visitor : (child: IRenderObject) => void) => void;
describeSemanticsConfiguration: (config: ISemanticsConfiguration) => void;
debugValidateChild: (child: IRenderObject) => boolean;
attach: (owner: unknown) => void;
detach: () => void;
redepthChildren: () => void;
visitChildren: (visitor : (child: IRenderObject) => void) => void;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
getChild: () => IRenderBox | undefined;
setChild: (value?: IRenderBox | undefined) => void;
setupParentData: (child: unknown) => void;
computeMinIntrinsicWidth: (height: number) => number;
computeMaxIntrinsicWidth: (height: number) => number;
computeMinIntrinsicHeight: (width: number) => number;
computeMaxIntrinsicHeight: (width: number) => number;
computeDistanceToActualBaseline: (baseline: TextBaseline) => number | undefined;
computeDryLayout: (constraints: IBoxConstraints) => ISize;
performLayout: () => void;
computeSizeForNoChild: (constraints: IBoxConstraints) => ISize;
hitTestChildren: (result: IBoxHitTestResult, props : {  position : IOffset,}) => boolean;
applyPaintTransform: (child: unknown, transform: IMatrix4) => void;
paint: (context: IPaintingContext, offset: IOffset) => void;
getMinIntrinsicWidth: (height: number) => number;
getMaxIntrinsicWidth: (height: number) => number;
getMinIntrinsicHeight: (width: number) => number;
getMaxIntrinsicHeight: (width: number) => number;
getDryLayout: (constraints: IBoxConstraints) => ISize;
debugCannotComputeDryLayout: ( props? : {  error? : IFlutterError | undefined, reason? : string | undefined,}) => boolean;
debugAdoptSize: (value: ISize) => ISize;
debugResetSize: () => void;
getDistanceToBaseline: (baseline: TextBaseline, props : {  onlyReal : boolean,}) => number | undefined;
getDistanceToActualBaseline: (baseline: TextBaseline) => number | undefined;
debugAssertDoesMeetConstraints: () => void;
markNeedsLayout: () => void;
performResize: () => void;
hitTest: (result: IBoxHitTestResult, props : {  position : IOffset,}) => boolean;
hitTestSelf: (position: IOffset) => boolean;
globalToLocal: (point: IOffset, props? : {  ancestor? : IRenderObject | undefined,}) => IOffset;
localToGlobal: (point: IOffset, props? : {  ancestor? : IRenderObject | undefined,}) => IOffset;
handleEvent: (event: IPointerEvent, entry: unknown) => void;
debugHandleEvent: (event: IPointerEvent, entry: IHitTestEntry) => boolean;
debugPaint: (context: IPaintingContext, offset: IOffset) => void;
debugPaintSize: (context: IPaintingContext, offset: IOffset) => void;
debugPaintBaselines: (context: IPaintingContext, offset: IOffset) => void;
debugPaintPointers: (context: IPaintingContext, offset: IOffset) => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHasSize: () => boolean;
getSize: () => ISize;
setSize: (value: ISize) => void;
getSemanticBounds: () => IRect;
getConstraints: () => IBoxConstraints;
getPaintBounds: () => IRect;
reassemble: () => void;
dispose: () => void;
adoptChild: (child: unknown) => void;
dropChild: (child: unknown) => void;
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
}export class RenderSemanticsAnnotations

 implements Omit<IRenderProxyBox, "attach" | "detach" | "debugDescribeChildren" | "debugFillProperties" | "toStringShort" | "toString" | "toStringDeep" | "toStringShallow" | "toDiagnosticsNode">, IRenderObjectWithChildMixin<IRenderBox>, IRenderProxyBoxMixin<IRenderBox>, IDiagnosticableTreeMixin, IDiagnosticable, IHitTestTarget, Omit<IDiagnosticableTree, "debugDescribeChildren" | "toStringShallow" | "toStringDeep" | "debugFillProperties" | "toStringShort" | "toDiagnosticsNode">
{    public readonly parentData: IParentData | undefined = undefined as any;
    public readonly debugCreator: Object | undefined = undefined as any;
public constructor( props : {  attributedDecreasedValue? : IAttributedString | undefined, attributedHint? : IAttributedString | undefined, attributedIncreasedValue? : IAttributedString | undefined, attributedLabel? : IAttributedString | undefined, attributedValue? : IAttributedString | undefined, button? : boolean | undefined, checked? : boolean | undefined, child? : IRenderBox | undefined, container? : boolean, currentValueLength? : number | undefined, customSemanticsActions? : IMap<ICustomSemanticsAction, () => void> | undefined, enabled? : boolean | undefined, excludeSemantics? : boolean, explicitChildNodes? : boolean, focusable? : boolean | undefined, focused? : boolean | undefined, header? : boolean | undefined, hidden? : boolean | undefined, hintOverrides? : ISemanticsHintOverrides | undefined, image? : boolean | undefined, inMutuallyExclusiveGroup? : boolean | undefined, keyboardKey? : boolean | undefined, link? : boolean | undefined, liveRegion? : boolean | undefined, maxValueLength? : number | undefined, multiline? : boolean | undefined, namesRoute? : boolean | undefined, obscured? : boolean | undefined, onCopy? : () => void | undefined, onCut? : () => void | undefined, onDecrease? : () => void | undefined, onDidGainAccessibilityFocus? : () => void | undefined, onDidLoseAccessibilityFocus? : () => void | undefined, onDismiss? : () => void | undefined, onIncrease? : () => void | undefined, onLongPress? : () => void | undefined, onMoveCursorBackwardByCharacter? : (extendSelection: boolean) => void | undefined, onMoveCursorBackwardByWord? : (extendSelection: boolean) => void | undefined, onMoveCursorForwardByCharacter? : (extendSelection: boolean) => void | undefined, onMoveCursorForwardByWord? : (extendSelection: boolean) => void | undefined, onPaste? : () => void | undefined, onScrollDown? : () => void | undefined, onScrollLeft? : () => void | undefined, onScrollRight? : () => void | undefined, onScrollUp? : () => void | undefined, onSetSelection? : (selection: ITextSelection) => void | undefined, onSetText? : (text: string) => void | undefined, onTap? : () => void | undefined, readOnly? : boolean | undefined, scopesRoute? : boolean | undefined, selected? : boolean | undefined, slider? : boolean | undefined, sortKey? : ISemanticsSortKey | undefined, tagForChildren? : ISemanticsTag | undefined, textDirection? : TextDirection | undefined, textField? : boolean | undefined, toggled? : boolean | undefined,}){
flutter.rendering.renderSemanticsAnnotations(this, {
...renderSemanticsAnnotationsDefaultProps,
...props
});}
    private readonly _dart_getContainer: () => boolean = undefined as any;
    private readonly _dart_setContainer: (value: boolean) => void = undefined as any;
    private readonly _dart_getExplicitChildNodes: () => boolean = undefined as any;
    private readonly _dart_setExplicitChildNodes: (value: boolean) => void = undefined as any;
    private readonly _dart_getExcludeSemantics: () => boolean = undefined as any;
    private readonly _dart_setExcludeSemantics: (value: boolean) => void = undefined as any;
    private readonly _dart_getChecked: () => boolean | undefined = undefined as any;
    private readonly _dart_setChecked: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getEnabled: () => boolean | undefined = undefined as any;
    private readonly _dart_setEnabled: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getSelected: () => boolean | undefined = undefined as any;
    private readonly _dart_setSelected: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getButton: () => boolean | undefined = undefined as any;
    private readonly _dart_setButton: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getSlider: () => boolean | undefined = undefined as any;
    private readonly _dart_setSlider: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getKeyboardKey: () => boolean | undefined = undefined as any;
    private readonly _dart_setKeyboardKey: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getLink: () => boolean | undefined = undefined as any;
    private readonly _dart_setLink: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getHeader: () => boolean | undefined = undefined as any;
    private readonly _dart_setHeader: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getTextField: () => boolean | undefined = undefined as any;
    private readonly _dart_setTextField: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getReadOnly: () => boolean | undefined = undefined as any;
    private readonly _dart_setReadOnly: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getFocusable: () => boolean | undefined = undefined as any;
    private readonly _dart_setFocusable: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getFocused: () => boolean | undefined = undefined as any;
    private readonly _dart_setFocused: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getInMutuallyExclusiveGroup: () => boolean | undefined = undefined as any;
    private readonly _dart_setInMutuallyExclusiveGroup: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getObscured: () => boolean | undefined = undefined as any;
    private readonly _dart_setObscured: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getMultiline: () => boolean | undefined = undefined as any;
    private readonly _dart_setMultiline: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getScopesRoute: () => boolean | undefined = undefined as any;
    private readonly _dart_setScopesRoute: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getNamesRoute: () => boolean | undefined = undefined as any;
    private readonly _dart_setNamesRoute: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getHidden: () => boolean | undefined = undefined as any;
    private readonly _dart_setHidden: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getImage: () => boolean | undefined = undefined as any;
    private readonly _dart_setImage: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getLiveRegion: () => boolean | undefined = undefined as any;
    private readonly _dart_setLiveRegion: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getMaxValueLength: () => number | undefined = undefined as any;
    private readonly _dart_setMaxValueLength: (value?: number | undefined) => void = undefined as any;
    private readonly _dart_getCurrentValueLength: () => number | undefined = undefined as any;
    private readonly _dart_setCurrentValueLength: (value?: number | undefined) => void = undefined as any;
    private readonly _dart_getToggled: () => boolean | undefined = undefined as any;
    private readonly _dart_setToggled: (value?: boolean | undefined) => void = undefined as any;
    private readonly _dart_getAttributedLabel: () => IAttributedString | undefined = undefined as any;
    private readonly _dart_setAttributedLabel: (value?: IAttributedString | undefined) => void = undefined as any;
    private readonly _dart_getAttributedValue: () => IAttributedString | undefined = undefined as any;
    private readonly _dart_setAttributedValue: (value?: IAttributedString | undefined) => void = undefined as any;
    private readonly _dart_getAttributedIncreasedValue: () => IAttributedString | undefined = undefined as any;
    private readonly _dart_setAttributedIncreasedValue: (value?: IAttributedString | undefined) => void = undefined as any;
    private readonly _dart_getAttributedDecreasedValue: () => IAttributedString | undefined = undefined as any;
    private readonly _dart_setAttributedDecreasedValue: (value?: IAttributedString | undefined) => void = undefined as any;
    private readonly _dart_getAttributedHint: () => IAttributedString | undefined = undefined as any;
    private readonly _dart_setAttributedHint: (value?: IAttributedString | undefined) => void = undefined as any;
    private readonly _dart_getHintOverrides: () => ISemanticsHintOverrides | undefined = undefined as any;
    private readonly _dart_setHintOverrides: (value?: ISemanticsHintOverrides | undefined) => void = undefined as any;
    private readonly _dart_getTextDirection: () => TextDirection | undefined = undefined as any;
    private readonly _dart_setTextDirection: (value?: TextDirection | undefined) => void = undefined as any;
    private readonly _dart_getSortKey: () => ISemanticsSortKey | undefined = undefined as any;
    private readonly _dart_setSortKey: (value?: ISemanticsSortKey | undefined) => void = undefined as any;
    private readonly _dart_getTagForChildren: () => ISemanticsTag | undefined = undefined as any;
    private readonly _dart_setTagForChildren: (value?: ISemanticsTag | undefined) => void = undefined as any;
    private readonly _dart_getOnTap: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnTap: (handler? : () => void) => void = undefined as any;
    private readonly _dart_getOnDismiss: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnDismiss: (handler? : () => void) => void = undefined as any;
    private readonly _dart_getOnLongPress: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnLongPress: (handler? : () => void) => void = undefined as any;
    private readonly _dart_getOnScrollLeft: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnScrollLeft: (handler? : () => void) => void = undefined as any;
    private readonly _dart_getOnScrollRight: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnScrollRight: (handler? : () => void) => void = undefined as any;
    private readonly _dart_getOnScrollUp: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnScrollUp: (handler? : () => void) => void = undefined as any;
    private readonly _dart_getOnScrollDown: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnScrollDown: (handler? : () => void) => void = undefined as any;
    private readonly _dart_getOnIncrease: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnIncrease: (handler? : () => void) => void = undefined as any;
    private readonly _dart_getOnDecrease: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnDecrease: (handler? : () => void) => void = undefined as any;
    private readonly _dart_getOnCopy: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnCopy: (handler? : () => void) => void = undefined as any;
    private readonly _dart_getOnCut: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnCut: (handler? : () => void) => void = undefined as any;
    private readonly _dart_getOnPaste: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnPaste: (handler? : () => void) => void = undefined as any;
    private readonly _dart_getOnMoveCursorForwardByCharacter: () => (extendSelection: boolean) => void | undefined = undefined as any;
    private readonly _dart_setOnMoveCursorForwardByCharacter: (handler? : (extendSelection: boolean) => void) => void = undefined as any;
    private readonly _dart_getOnMoveCursorBackwardByCharacter: () => (extendSelection: boolean) => void | undefined = undefined as any;
    private readonly _dart_setOnMoveCursorBackwardByCharacter: (handler? : (extendSelection: boolean) => void) => void = undefined as any;
    private readonly _dart_getOnMoveCursorForwardByWord: () => (extendSelection: boolean) => void | undefined = undefined as any;
    private readonly _dart_setOnMoveCursorForwardByWord: (handler? : (extendSelection: boolean) => void) => void = undefined as any;
    private readonly _dart_getOnMoveCursorBackwardByWord: () => (extendSelection: boolean) => void | undefined = undefined as any;
    private readonly _dart_setOnMoveCursorBackwardByWord: (handler? : (extendSelection: boolean) => void) => void = undefined as any;
    private readonly _dart_getOnSetSelection: () => (selection: ITextSelection) => void | undefined = undefined as any;
    private readonly _dart_setOnSetSelection: (handler? : (selection: ITextSelection) => void) => void = undefined as any;
    private readonly _dart_getOnSetText: () => (text: string) => void | undefined = undefined as any;
    private readonly _dart_setOnSetText: (handler? : (text: string) => void) => void = undefined as any;
    private readonly _dart_getOnDidGainAccessibilityFocus: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnDidGainAccessibilityFocus: (handler? : () => void) => void = undefined as any;
    private readonly _dart_getOnDidLoseAccessibilityFocus: () => () => void | undefined = undefined as any;
    private readonly _dart_setOnDidLoseAccessibilityFocus: (handler? : () => void) => void = undefined as any;
    private readonly _dart_getCustomSemanticsActions: () => IMap<ICustomSemanticsAction, () => void> | undefined = undefined as any;
    private readonly _dart_setCustomSemanticsActions: (value?: IMap<ICustomSemanticsAction, () => void> | undefined) => void = undefined as any;
    private readonly _dart_visitChildrenForSemantics: (visitor : (child: IRenderObject) => void) => void = undefined as any;
    private readonly _dart_describeSemanticsConfiguration: (config: ISemanticsConfiguration) => void = undefined as any;
    private readonly _dart_debugValidateChild: (child: IRenderObject) => boolean = undefined as any;
    private readonly _dart_attach: (owner: any) => void = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_redepthChildren: () => void = undefined as any;
    private readonly _dart_visitChildren: (visitor : (child: IRenderObject) => void) => void = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_getChild: () => IRenderBox | undefined = undefined as any;
    private readonly _dart_setChild: (value?: IRenderBox | undefined) => void = undefined as any;
    private readonly _dart_setupParentData: (child: any) => void = undefined as any;
    private readonly _dart_computeMinIntrinsicWidth: (height: number) => number = undefined as any;
    private readonly _dart_computeMaxIntrinsicWidth: (height: number) => number = undefined as any;
    private readonly _dart_computeMinIntrinsicHeight: (width: number) => number = undefined as any;
    private readonly _dart_computeMaxIntrinsicHeight: (width: number) => number = undefined as any;
    private readonly _dart_computeDistanceToActualBaseline: (baseline: TextBaseline) => number | undefined = undefined as any;
    private readonly _dart_computeDryLayout: (constraints: IBoxConstraints) => ISize = undefined as any;
    private readonly _dart_performLayout: () => void = undefined as any;
    private readonly _dart_computeSizeForNoChild: (constraints: IBoxConstraints) => ISize = undefined as any;
    private readonly _dart_hitTestChildren: (result: IBoxHitTestResult, props : {  position : IOffset,}) => boolean = undefined as any;
    private readonly _dart_applyPaintTransform: (child: any, transform: IMatrix4) => void = undefined as any;
    private readonly _dart_paint: (context: IPaintingContext, offset: IOffset) => void = undefined as any;
    private readonly _dart_getMinIntrinsicWidth: (height: number) => number = undefined as any;
    private readonly _dart_getMaxIntrinsicWidth: (height: number) => number = undefined as any;
    private readonly _dart_getMinIntrinsicHeight: (width: number) => number = undefined as any;
    private readonly _dart_getMaxIntrinsicHeight: (width: number) => number = undefined as any;
    private readonly _dart_getDryLayout: (constraints: IBoxConstraints) => ISize = undefined as any;
    private readonly _dart_debugCannotComputeDryLayout: ( props? : {  error? : IFlutterError | undefined, reason? : string | undefined,}) => boolean = undefined as any;
    private readonly _dart_debugAdoptSize: (value: ISize) => ISize = undefined as any;
    private readonly _dart_debugResetSize: () => void = undefined as any;
    private readonly _dart_getDistanceToBaseline: (baseline: TextBaseline, props : {  onlyReal : boolean,}) => number | undefined = undefined as any;
    private readonly _dart_getDistanceToActualBaseline: (baseline: TextBaseline) => number | undefined = undefined as any;
    private readonly _dart_debugAssertDoesMeetConstraints: () => void = undefined as any;
    private readonly _dart_markNeedsLayout: () => void = undefined as any;
    private readonly _dart_performResize: () => void = undefined as any;
    private readonly _dart_hitTest: (result: IBoxHitTestResult, props : {  position : IOffset,}) => boolean = undefined as any;
    private readonly _dart_hitTestSelf: (position: IOffset) => boolean = undefined as any;
    private readonly _dart_globalToLocal: (point: IOffset, props? : {  ancestor? : IRenderObject | undefined,}) => IOffset = undefined as any;
    private readonly _dart_localToGlobal: (point: IOffset, props? : {  ancestor? : IRenderObject | undefined,}) => IOffset = undefined as any;
    private readonly _dart_handleEvent: (event: IPointerEvent, entry: any) => void = undefined as any;
    private readonly _dart_debugHandleEvent: (event: IPointerEvent, entry: IHitTestEntry) => boolean = undefined as any;
    private readonly _dart_debugPaint: (context: IPaintingContext, offset: IOffset) => void = undefined as any;
    private readonly _dart_debugPaintSize: (context: IPaintingContext, offset: IOffset) => void = undefined as any;
    private readonly _dart_debugPaintBaselines: (context: IPaintingContext, offset: IOffset) => void = undefined as any;
    private readonly _dart_debugPaintPointers: (context: IPaintingContext, offset: IOffset) => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHasSize: () => boolean = undefined as any;
    private readonly _dart_getSize: () => ISize = undefined as any;
    private readonly _dart_setSize: (value: ISize) => void = undefined as any;
    private readonly _dart_getSemanticBounds: () => IRect = undefined as any;
    private readonly _dart_getConstraints: () => IBoxConstraints = undefined as any;
    private readonly _dart_getPaintBounds: () => IRect = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_adoptChild: (child: any) => void = undefined as any;
    private readonly _dart_dropChild: (child: any) => void = undefined as any;
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
public getContainer() : boolean {
    return this._dart_getContainer();
}
public setContainer(value: boolean) : void {
    return this._dart_setContainer(value);
}
public getExplicitChildNodes() : boolean {
    return this._dart_getExplicitChildNodes();
}
public setExplicitChildNodes(value: boolean) : void {
    return this._dart_setExplicitChildNodes(value);
}
public getExcludeSemantics() : boolean {
    return this._dart_getExcludeSemantics();
}
public setExcludeSemantics(value: boolean) : void {
    return this._dart_setExcludeSemantics(value);
}
public getChecked() : boolean | undefined {
    return this._dart_getChecked();
}
public setChecked(value?: boolean | undefined) : void {
    return this._dart_setChecked(value);
}
public getEnabled() : boolean | undefined {
    return this._dart_getEnabled();
}
public setEnabled(value?: boolean | undefined) : void {
    return this._dart_setEnabled(value);
}
public getSelected() : boolean | undefined {
    return this._dart_getSelected();
}
public setSelected(value?: boolean | undefined) : void {
    return this._dart_setSelected(value);
}
public getButton() : boolean | undefined {
    return this._dart_getButton();
}
public setButton(value?: boolean | undefined) : void {
    return this._dart_setButton(value);
}
public getSlider() : boolean | undefined {
    return this._dart_getSlider();
}
public setSlider(value?: boolean | undefined) : void {
    return this._dart_setSlider(value);
}
public getKeyboardKey() : boolean | undefined {
    return this._dart_getKeyboardKey();
}
public setKeyboardKey(value?: boolean | undefined) : void {
    return this._dart_setKeyboardKey(value);
}
public getLink() : boolean | undefined {
    return this._dart_getLink();
}
public setLink(value?: boolean | undefined) : void {
    return this._dart_setLink(value);
}
public getHeader() : boolean | undefined {
    return this._dart_getHeader();
}
public setHeader(value?: boolean | undefined) : void {
    return this._dart_setHeader(value);
}
public getTextField() : boolean | undefined {
    return this._dart_getTextField();
}
public setTextField(value?: boolean | undefined) : void {
    return this._dart_setTextField(value);
}
public getReadOnly() : boolean | undefined {
    return this._dart_getReadOnly();
}
public setReadOnly(value?: boolean | undefined) : void {
    return this._dart_setReadOnly(value);
}
public getFocusable() : boolean | undefined {
    return this._dart_getFocusable();
}
public setFocusable(value?: boolean | undefined) : void {
    return this._dart_setFocusable(value);
}
public getFocused() : boolean | undefined {
    return this._dart_getFocused();
}
public setFocused(value?: boolean | undefined) : void {
    return this._dart_setFocused(value);
}
public getInMutuallyExclusiveGroup() : boolean | undefined {
    return this._dart_getInMutuallyExclusiveGroup();
}
public setInMutuallyExclusiveGroup(value?: boolean | undefined) : void {
    return this._dart_setInMutuallyExclusiveGroup(value);
}
public getObscured() : boolean | undefined {
    return this._dart_getObscured();
}
public setObscured(value?: boolean | undefined) : void {
    return this._dart_setObscured(value);
}
public getMultiline() : boolean | undefined {
    return this._dart_getMultiline();
}
public setMultiline(value?: boolean | undefined) : void {
    return this._dart_setMultiline(value);
}
public getScopesRoute() : boolean | undefined {
    return this._dart_getScopesRoute();
}
public setScopesRoute(value?: boolean | undefined) : void {
    return this._dart_setScopesRoute(value);
}
public getNamesRoute() : boolean | undefined {
    return this._dart_getNamesRoute();
}
public setNamesRoute(value?: boolean | undefined) : void {
    return this._dart_setNamesRoute(value);
}
public getHidden() : boolean | undefined {
    return this._dart_getHidden();
}
public setHidden(value?: boolean | undefined) : void {
    return this._dart_setHidden(value);
}
public getImage() : boolean | undefined {
    return this._dart_getImage();
}
public setImage(value?: boolean | undefined) : void {
    return this._dart_setImage(value);
}
public getLiveRegion() : boolean | undefined {
    return this._dart_getLiveRegion();
}
public setLiveRegion(value?: boolean | undefined) : void {
    return this._dart_setLiveRegion(value);
}
public getMaxValueLength() : number | undefined {
    return this._dart_getMaxValueLength();
}
public setMaxValueLength(value?: number | undefined) : void {
    return this._dart_setMaxValueLength(value);
}
public getCurrentValueLength() : number | undefined {
    return this._dart_getCurrentValueLength();
}
public setCurrentValueLength(value?: number | undefined) : void {
    return this._dart_setCurrentValueLength(value);
}
public getToggled() : boolean | undefined {
    return this._dart_getToggled();
}
public setToggled(value?: boolean | undefined) : void {
    return this._dart_setToggled(value);
}
public getAttributedLabel() : IAttributedString | undefined {
    return this._dart_getAttributedLabel();
}
public setAttributedLabel(value?: IAttributedString | undefined) : void {
    return this._dart_setAttributedLabel(value);
}
public getAttributedValue() : IAttributedString | undefined {
    return this._dart_getAttributedValue();
}
public setAttributedValue(value?: IAttributedString | undefined) : void {
    return this._dart_setAttributedValue(value);
}
public getAttributedIncreasedValue() : IAttributedString | undefined {
    return this._dart_getAttributedIncreasedValue();
}
public setAttributedIncreasedValue(value?: IAttributedString | undefined) : void {
    return this._dart_setAttributedIncreasedValue(value);
}
public getAttributedDecreasedValue() : IAttributedString | undefined {
    return this._dart_getAttributedDecreasedValue();
}
public setAttributedDecreasedValue(value?: IAttributedString | undefined) : void {
    return this._dart_setAttributedDecreasedValue(value);
}
public getAttributedHint() : IAttributedString | undefined {
    return this._dart_getAttributedHint();
}
public setAttributedHint(value?: IAttributedString | undefined) : void {
    return this._dart_setAttributedHint(value);
}
public getHintOverrides() : ISemanticsHintOverrides | undefined {
    return this._dart_getHintOverrides();
}
public setHintOverrides(value?: ISemanticsHintOverrides | undefined) : void {
    return this._dart_setHintOverrides(value);
}
public getTextDirection() : TextDirection | undefined {
    return this._dart_getTextDirection();
}
public setTextDirection(value?: TextDirection | undefined) : void {
    return this._dart_setTextDirection(value);
}
public getSortKey() : ISemanticsSortKey | undefined {
    return this._dart_getSortKey();
}
public setSortKey(value?: ISemanticsSortKey | undefined) : void {
    return this._dart_setSortKey(value);
}
public getTagForChildren() : ISemanticsTag | undefined {
    return this._dart_getTagForChildren();
}
public setTagForChildren(value?: ISemanticsTag | undefined) : void {
    return this._dart_setTagForChildren(value);
}
public getOnTap() : () => void | undefined {
    return this._dart_getOnTap();
}
public setOnTap(handler? : () => void) : void {
    return this._dart_setOnTap(handler);
}
public getOnDismiss() : () => void | undefined {
    return this._dart_getOnDismiss();
}
public setOnDismiss(handler? : () => void) : void {
    return this._dart_setOnDismiss(handler);
}
public getOnLongPress() : () => void | undefined {
    return this._dart_getOnLongPress();
}
public setOnLongPress(handler? : () => void) : void {
    return this._dart_setOnLongPress(handler);
}
public getOnScrollLeft() : () => void | undefined {
    return this._dart_getOnScrollLeft();
}
public setOnScrollLeft(handler? : () => void) : void {
    return this._dart_setOnScrollLeft(handler);
}
public getOnScrollRight() : () => void | undefined {
    return this._dart_getOnScrollRight();
}
public setOnScrollRight(handler? : () => void) : void {
    return this._dart_setOnScrollRight(handler);
}
public getOnScrollUp() : () => void | undefined {
    return this._dart_getOnScrollUp();
}
public setOnScrollUp(handler? : () => void) : void {
    return this._dart_setOnScrollUp(handler);
}
public getOnScrollDown() : () => void | undefined {
    return this._dart_getOnScrollDown();
}
public setOnScrollDown(handler? : () => void) : void {
    return this._dart_setOnScrollDown(handler);
}
public getOnIncrease() : () => void | undefined {
    return this._dart_getOnIncrease();
}
public setOnIncrease(handler? : () => void) : void {
    return this._dart_setOnIncrease(handler);
}
public getOnDecrease() : () => void | undefined {
    return this._dart_getOnDecrease();
}
public setOnDecrease(handler? : () => void) : void {
    return this._dart_setOnDecrease(handler);
}
public getOnCopy() : () => void | undefined {
    return this._dart_getOnCopy();
}
public setOnCopy(handler? : () => void) : void {
    return this._dart_setOnCopy(handler);
}
public getOnCut() : () => void | undefined {
    return this._dart_getOnCut();
}
public setOnCut(handler? : () => void) : void {
    return this._dart_setOnCut(handler);
}
public getOnPaste() : () => void | undefined {
    return this._dart_getOnPaste();
}
public setOnPaste(handler? : () => void) : void {
    return this._dart_setOnPaste(handler);
}
public getOnMoveCursorForwardByCharacter() : (extendSelection: boolean) => void | undefined {
    return this._dart_getOnMoveCursorForwardByCharacter();
}
public setOnMoveCursorForwardByCharacter(handler? : (extendSelection: boolean) => void) : void {
    return this._dart_setOnMoveCursorForwardByCharacter(handler);
}
public getOnMoveCursorBackwardByCharacter() : (extendSelection: boolean) => void | undefined {
    return this._dart_getOnMoveCursorBackwardByCharacter();
}
public setOnMoveCursorBackwardByCharacter(handler? : (extendSelection: boolean) => void) : void {
    return this._dart_setOnMoveCursorBackwardByCharacter(handler);
}
public getOnMoveCursorForwardByWord() : (extendSelection: boolean) => void | undefined {
    return this._dart_getOnMoveCursorForwardByWord();
}
public setOnMoveCursorForwardByWord(handler? : (extendSelection: boolean) => void) : void {
    return this._dart_setOnMoveCursorForwardByWord(handler);
}
public getOnMoveCursorBackwardByWord() : (extendSelection: boolean) => void | undefined {
    return this._dart_getOnMoveCursorBackwardByWord();
}
public setOnMoveCursorBackwardByWord(handler? : (extendSelection: boolean) => void) : void {
    return this._dart_setOnMoveCursorBackwardByWord(handler);
}
public getOnSetSelection() : (selection: ITextSelection) => void | undefined {
    return this._dart_getOnSetSelection();
}
public setOnSetSelection(handler? : (selection: ITextSelection) => void) : void {
    return this._dart_setOnSetSelection(handler);
}
public getOnSetText() : (text: string) => void | undefined {
    return this._dart_getOnSetText();
}
public setOnSetText(handler? : (text: string) => void) : void {
    return this._dart_setOnSetText(handler);
}
public getOnDidGainAccessibilityFocus() : () => void | undefined {
    return this._dart_getOnDidGainAccessibilityFocus();
}
public setOnDidGainAccessibilityFocus(handler? : () => void) : void {
    return this._dart_setOnDidGainAccessibilityFocus(handler);
}
public getOnDidLoseAccessibilityFocus() : () => void | undefined {
    return this._dart_getOnDidLoseAccessibilityFocus();
}
public setOnDidLoseAccessibilityFocus(handler? : () => void) : void {
    return this._dart_setOnDidLoseAccessibilityFocus(handler);
}
public getCustomSemanticsActions() : IMap<ICustomSemanticsAction, () => void> | undefined {
    return this._dart_getCustomSemanticsActions();
}
public setCustomSemanticsActions(value?: IMap<ICustomSemanticsAction, () => void> | undefined) : void {
    return this._dart_setCustomSemanticsActions(value);
}
public visitChildrenForSemantics(visitor : (child: IRenderObject) => void) : void {
    return this._dart_visitChildrenForSemantics(visitor);
}
public describeSemanticsConfiguration(config: ISemanticsConfiguration) : void {
    return this._dart_describeSemanticsConfiguration(config);
}
public debugValidateChild(child: IRenderObject) : boolean {
    return this._dart_debugValidateChild(child);
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
public debugDescribeChildren() : IList<IDiagnosticsNode> {
    return this._dart_debugDescribeChildren();
}
public getChild() : IRenderBox | undefined {
    return this._dart_getChild();
}
public setChild(value?: IRenderBox | undefined) : void {
    return this._dart_setChild(value);
}
public setupParentData(child: any) : void {
    return this._dart_setupParentData(child);
}
public computeMinIntrinsicWidth(height: number) : number {
    return this._dart_computeMinIntrinsicWidth(height);
}
public computeMaxIntrinsicWidth(height: number) : number {
    return this._dart_computeMaxIntrinsicWidth(height);
}
public computeMinIntrinsicHeight(width: number) : number {
    return this._dart_computeMinIntrinsicHeight(width);
}
public computeMaxIntrinsicHeight(width: number) : number {
    return this._dart_computeMaxIntrinsicHeight(width);
}
public computeDistanceToActualBaseline(baseline: TextBaseline) : number | undefined {
    return this._dart_computeDistanceToActualBaseline(baseline);
}
public computeDryLayout(constraints: IBoxConstraints) : ISize {
    return this._dart_computeDryLayout(constraints);
}
public performLayout() : void {
    return this._dart_performLayout();
}
public computeSizeForNoChild(constraints: IBoxConstraints) : ISize {
    return this._dart_computeSizeForNoChild(constraints);
}
public hitTestChildren(result: IBoxHitTestResult, props : {  position : IOffset,}) : boolean {
    return this._dart_hitTestChildren(result, props);
}
public applyPaintTransform(child: any, transform: IMatrix4) : void {
    return this._dart_applyPaintTransform(child, transform);
}
public paint(context: IPaintingContext, offset: IOffset) : void {
    return this._dart_paint(context, offset);
}
public getMinIntrinsicWidth(height: number) : number {
    return this._dart_getMinIntrinsicWidth(height);
}
public getMaxIntrinsicWidth(height: number) : number {
    return this._dart_getMaxIntrinsicWidth(height);
}
public getMinIntrinsicHeight(width: number) : number {
    return this._dart_getMinIntrinsicHeight(width);
}
public getMaxIntrinsicHeight(width: number) : number {
    return this._dart_getMaxIntrinsicHeight(width);
}
public getDryLayout(constraints: IBoxConstraints) : ISize {
    return this._dart_getDryLayout(constraints);
}
public debugCannotComputeDryLayout( props? : {  error? : IFlutterError | undefined, reason? : string | undefined,}) : boolean {
    return this._dart_debugCannotComputeDryLayout(props);
}
public debugAdoptSize(value: ISize) : ISize {
    return this._dart_debugAdoptSize(value);
}
public debugResetSize() : void {
    return this._dart_debugResetSize();
}
public getDistanceToBaseline(baseline: TextBaseline, props : {  onlyReal? : boolean,}) : number | undefined {
    return this._dart_getDistanceToBaseline(baseline, {
...getDistanceToBaselineDefaultProps,
...props
});
}
public getDistanceToActualBaseline(baseline: TextBaseline) : number | undefined {
    return this._dart_getDistanceToActualBaseline(baseline);
}
public debugAssertDoesMeetConstraints() : void {
    return this._dart_debugAssertDoesMeetConstraints();
}
public markNeedsLayout() : void {
    return this._dart_markNeedsLayout();
}
public performResize() : void {
    return this._dart_performResize();
}
public hitTest(result: IBoxHitTestResult, props : {  position : IOffset,}) : boolean {
    return this._dart_hitTest(result, props);
}
public hitTestSelf(position: IOffset) : boolean {
    return this._dart_hitTestSelf(position);
}
public globalToLocal(point: IOffset, props? : {  ancestor? : IRenderObject | undefined,}) : IOffset {
    return this._dart_globalToLocal(point, props);
}
public localToGlobal(point: IOffset, props? : {  ancestor? : IRenderObject | undefined,}) : IOffset {
    return this._dart_localToGlobal(point, props);
}
public handleEvent(event: IPointerEvent, entry: any) : void {
    return this._dart_handleEvent(event, entry);
}
public debugHandleEvent(event: IPointerEvent, entry: IHitTestEntry) : boolean {
    return this._dart_debugHandleEvent(event, entry);
}
public debugPaint(context: IPaintingContext, offset: IOffset) : void {
    return this._dart_debugPaint(context, offset);
}
public debugPaintSize(context: IPaintingContext, offset: IOffset) : void {
    return this._dart_debugPaintSize(context, offset);
}
public debugPaintBaselines(context: IPaintingContext, offset: IOffset) : void {
    return this._dart_debugPaintBaselines(context, offset);
}
public debugPaintPointers(context: IPaintingContext, offset: IOffset) : void {
    return this._dart_debugPaintPointers(context, offset);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public getHasSize() : boolean {
    return this._dart_getHasSize();
}
public getSize() : ISize {
    return this._dart_getSize();
}
public setSize(value: ISize) : void {
    return this._dart_setSize(value);
}
public getSemanticBounds() : IRect {
    return this._dart_getSemanticBounds();
}
public getConstraints() : IBoxConstraints {
    return this._dart_getConstraints();
}
public getPaintBounds() : IRect {
    return this._dart_getPaintBounds();
}
public reassemble() : void {
    return this._dart_reassemble();
}
public dispose() : void {
    return this._dart_dispose();
}
public adoptChild(child: any) : void {
    return this._dart_adoptChild(child);
}
public dropChild(child: any) : void {
    return this._dart_dropChild(child);
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
const renderSemanticsAnnotationsDefaultProps = {
    container: false,
    excludeSemantics: false,
    explicitChildNodes: false,
};
const getDistanceToBaselineDefaultProps = {
    onlyReal: false,
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
