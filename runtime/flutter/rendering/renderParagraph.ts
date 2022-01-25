import { Duration, IDuration } from "../../dart/core/duration";
import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { BoxHeightStyle } from "../../dart/ui/boxHeightStyle";
import { BoxWidthStyle } from "../../dart/ui/boxWidthStyle";
import { ILocale } from "../../dart/ui/locale";
import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { TextAlign } from "../../dart/ui/textAlign";
import { TextBaseline } from "../../dart/ui/textBaseline";
import { ITextBox } from "../../dart/ui/textBox";
import { TextDirection } from "../../dart/ui/textDirection";
import { ITextHeightBehavior } from "../../dart/ui/textHeightBehavior";
import { ITextPosition } from "../../dart/ui/textPosition";
import { ITextRange } from "../../dart/ui/textRange";
import { IMatrix4 } from "../../vector_math/matrix4";
import { ICurve } from "../animation/curve";
import { Curves } from "../animation/curves";
import { IAbstractNode } from "../foundation/abstractNode";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { IDiagnosticableTreeMixin } from "../foundation/diagnosticableTreeMixin";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IFlutterError } from "../foundation/flutterError";
import { IHitTestEntry } from "../gestures/hitTestEntry";
import { IHitTestTarget } from "../gestures/hitTestTarget";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IInlineSpan } from "../painting/inlineSpan";
import { IStrutStyle } from "../painting/strutStyle";
import { TextOverflow } from "../painting/textOverflow";
import { TextWidthBasis } from "../painting/textWidthBasis";
import { ISemanticsConfiguration } from "../semantics/semanticsConfiguration";
import { ISemanticsEvent } from "../semantics/semanticsEvent";
import { ISemanticsNode } from "../semantics/semanticsNode";
import { ITextSelection } from "../services/textSelection";
import { IBoxConstraints } from "./boxConstraints";
import { IBoxHitTestEntry } from "./boxHitTestEntry";
import { IBoxHitTestResult } from "./boxHitTestResult";
import { IConstraints } from "./constraints";
import { IContainerLayer } from "./containerLayer";
import { IContainerRenderObjectMixin } from "./containerRenderObjectMixin";
import { IOffsetLayer } from "./offsetLayer";
import { IPaintingContext } from "./paintingContext";
import { IParentData } from "./parentData";
import { IPipelineOwner } from "./pipelineOwner";
import { IRelayoutWhenSystemFontsChangeMixin } from "./relayoutWhenSystemFontsChangeMixin";
import { IRenderBox } from "./renderBox";
import { IRenderBoxContainerDefaultsMixin } from "./renderBoxContainerDefaultsMixin";
import { IRenderObject } from "./renderObject";
declare const flutter: {
    rendering: {
        renderParagraph: (
            this: void,
            renderParagraph: IRenderParagraph,
            text: IInlineSpan,
            props: {
                children?: IList<IRenderBox> | undefined;
                locale?: ILocale | undefined;
                maxLines?: number | undefined;
                overflow: TextOverflow;
                softWrap: boolean;
                strutStyle?: IStrutStyle | undefined;
                textAlign: TextAlign;
                textHeightBehavior?: ITextHeightBehavior | undefined;
                textScaleFactor: number;
                textWidthBasis: TextWidthBasis;
                textDirection: TextDirection;
            }
        ) => IRenderParagraph;
    };
};
export interface IRenderParagraph {
    parentData: IParentData | undefined;
    debugCreator: Object | undefined;
    setupParentData: (child: unknown) => void;
    getText: () => IInlineSpan;
    setText: (value: IInlineSpan) => void;
    getTextAlign: () => TextAlign;
    setTextAlign: (value: TextAlign) => void;
    getTextDirection: () => TextDirection;
    setTextDirection: (value: TextDirection) => void;
    getSoftWrap: () => boolean;
    setSoftWrap: (value: boolean) => void;
    getOverflow: () => TextOverflow;
    setOverflow: (value: TextOverflow) => void;
    getTextScaleFactor: () => number;
    setTextScaleFactor: (value: number) => void;
    getMaxLines: () => number | undefined;
    setMaxLines: (value?: number | undefined) => void;
    getLocale: () => ILocale | undefined;
    setLocale: (value?: ILocale | undefined) => void;
    getStrutStyle: () => IStrutStyle | undefined;
    setStrutStyle: (value?: IStrutStyle | undefined) => void;
    getTextWidthBasis: () => TextWidthBasis;
    setTextWidthBasis: (value: TextWidthBasis) => void;
    getTextHeightBehavior: () => ITextHeightBehavior | undefined;
    setTextHeightBehavior: (value?: ITextHeightBehavior | undefined) => void;
    computeMinIntrinsicWidth: (height: number) => number;
    computeMaxIntrinsicWidth: (height: number) => number;
    computeMinIntrinsicHeight: (width: number) => number;
    computeMaxIntrinsicHeight: (width: number) => number;
    computeDistanceToActualBaseline: (baseline: TextBaseline) => number;
    hitTestSelf: (position: IOffset) => boolean;
    hitTestChildren: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean;
    systemFontsDidChange: () => void;
    computeDryLayout: (constraints: IBoxConstraints) => ISize;
    performLayout: () => void;
    paint: (context: IPaintingContext, offset: IOffset) => void;
    getOffsetForCaret: (
        position: ITextPosition,
        caretPrototype: IRect
    ) => IOffset;
    getFullHeightForCaret: (position: ITextPosition) => number | undefined;
    getBoxesForSelection: (
        selection: ITextSelection,
        props: { boxHeightStyle: BoxHeightStyle; boxWidthStyle: BoxWidthStyle }
    ) => IList<ITextBox>;
    getPositionForOffset: (offset: IOffset) => ITextPosition;
    getWordBoundary: (position: ITextPosition) => ITextRange;
    getTextSize: () => ISize;
    describeSemanticsConfiguration: (config: ISemanticsConfiguration) => void;
    assembleSemanticsNode: (
        node: ISemanticsNode,
        config: ISemanticsConfiguration,
        children: IIterable<ISemanticsNode>
    ) => void;
    clearSemantics: () => void;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    debugValidateChild: (child: IRenderObject) => boolean;
    insert: (
        child: IRenderBox,
        props?: { after?: IRenderBox | undefined }
    ) => void;
    add: (child: IRenderBox) => void;
    addAll: (children?: IList<IRenderBox> | undefined) => void;
    remove: (child: IRenderBox) => void;
    removeAll: () => void;
    move: (
        child: IRenderBox,
        props?: { after?: IRenderBox | undefined }
    ) => void;
    attach: (owner: unknown) => void;
    detach: () => void;
    redepthChildren: () => void;
    visitChildren: (visitor: (child: IRenderObject) => void) => void;
    childBefore: (child: IRenderBox) => IRenderBox | undefined;
    childAfter: (child: IRenderBox) => IRenderBox | undefined;
    getChildCount: () => number;
    getFirstChild: () => IRenderBox | undefined;
    getLastChild: () => IRenderBox | undefined;
    defaultComputeDistanceToFirstActualBaseline: (
        baseline: TextBaseline
    ) => number | undefined;
    defaultComputeDistanceToHighestActualBaseline: (
        baseline: TextBaseline
    ) => number | undefined;
    defaultHitTestChildren: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean;
    defaultPaint: (context: IPaintingContext, offset: IOffset) => void;
    getChildrenAsList: () => IList<IRenderBox>;
    getMinIntrinsicWidth: (height: number) => number;
    getMaxIntrinsicWidth: (height: number) => number;
    getMinIntrinsicHeight: (width: number) => number;
    getMaxIntrinsicHeight: (width: number) => number;
    getDryLayout: (constraints: IBoxConstraints) => ISize;
    debugCannotComputeDryLayout: (props?: {
        error?: IFlutterError | undefined;
        reason?: string | undefined;
    }) => boolean;
    debugAdoptSize: (value: ISize) => ISize;
    debugResetSize: () => void;
    getDistanceToBaseline: (
        baseline: TextBaseline,
        props: { onlyReal: boolean }
    ) => number | undefined;
    getDistanceToActualBaseline: (baseline: TextBaseline) => number | undefined;
    debugAssertDoesMeetConstraints: () => void;
    markNeedsLayout: () => void;
    performResize: () => void;
    hitTest: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean;
    applyPaintTransform: (child: unknown, transform: IMatrix4) => void;
    globalToLocal: (
        point: IOffset,
        props?: { ancestor?: IRenderObject | undefined }
    ) => IOffset;
    localToGlobal: (
        point: IOffset,
        props?: { ancestor?: IRenderObject | undefined }
    ) => IOffset;
    handleEvent: (event: IPointerEvent, entry: unknown) => void;
    debugHandleEvent: (event: IPointerEvent, entry: IHitTestEntry) => boolean;
    debugPaint: (context: IPaintingContext, offset: IOffset) => void;
    debugPaintSize: (context: IPaintingContext, offset: IOffset) => void;
    debugPaintBaselines: (context: IPaintingContext, offset: IOffset) => void;
    debugPaintPointers: (context: IPaintingContext, offset: IOffset) => void;
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
    layout: (
        constraints: IConstraints,
        props: { parentUsesSize: boolean }
    ) => void;
    invokeLayoutCallback: <T>(callback: (constraints: T) => void) => void;
    rotate: (props?: {
        newAngle?: number | undefined;
        oldAngle?: number | undefined;
        time?: IDuration | undefined;
    }) => void;
    debugRegisterRepaintBoundaryPaint: (props: {
        includedChild: boolean;
        includedParent: boolean;
    }) => void;
    markNeedsCompositingBitsUpdate: () => void;
    markNeedsPaint: () => void;
    scheduleInitialPaint: (rootLayer: IContainerLayer) => void;
    replaceRootLayer: (rootLayer: IOffsetLayer) => void;
    getTransformTo: (ancestor?: IRenderObject | undefined) => IMatrix4;
    describeApproximatePaintClip: (child: unknown) => IRect | undefined;
    describeSemanticsClip: (child: unknown) => IRect | undefined;
    scheduleInitialSemantics: () => void;
    sendSemanticsEvent: (semanticsEvent: ISemanticsEvent) => void;
    markNeedsSemanticsUpdate: () => void;
    visitChildrenForSemantics: (
        visitor: (child: IRenderObject) => void
    ) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    showOnScreen: (props: {
        curve: ICurve;
        descendant?: IRenderObject | undefined;
        duration: IDuration;
        rect?: IRect | undefined;
    }) => void;
    describeForError: (
        name: string,
        props: { style: DiagnosticsTreeStyle }
    ) => IDiagnosticsNode;
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
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    redepthChild: (child: IAbstractNode) => void;
    getDepth: () => number;
    getAttached: () => boolean;
    getParent: () => IAbstractNode | undefined;
    getHashCode: () => number;
}
export class RenderParagraph
    implements
        IRenderBox,
        IContainerRenderObjectMixin<IRenderBox, ITextParentData>,
        IRenderBoxContainerDefaultsMixin<IRenderBox, ITextParentData>,
        IRelayoutWhenSystemFontsChangeMixin,
        IDiagnosticableTreeMixin,
        IDiagnosticable,
        IContainerRenderObjectMixin<IRenderBox, ITextParentData>,
        IHitTestTarget,
        Omit<
            IDiagnosticableTree,
            | "debugDescribeChildren"
            | "toStringShallow"
            | "toStringDeep"
            | "debugFillProperties"
            | "toStringShort"
            | "toDiagnosticsNode"
        >
{
    public readonly parentData: IParentData | undefined = undefined as any;
    public readonly debugCreator: Object | undefined = undefined as any;
    public constructor(
        text: IInlineSpan,
        props: {
            children?: IList<IRenderBox> | undefined;
            locale?: ILocale | undefined;
            maxLines?: number | undefined;
            overflow?: TextOverflow;
            softWrap?: boolean;
            strutStyle?: IStrutStyle | undefined;
            textAlign?: TextAlign;
            textHeightBehavior?: ITextHeightBehavior | undefined;
            textScaleFactor?: number;
            textWidthBasis?: TextWidthBasis;
            textDirection: TextDirection;
        }
    ) {
        flutter.rendering.renderParagraph(this, text, {
            ...renderParagraphDefaultProps,
            ...props,
        });
    }
    private readonly _dart_setupParentData: (child: any) => void =
        undefined as any;
    private readonly _dart_getText: () => IInlineSpan = undefined as any;
    private readonly _dart_setText: (value: IInlineSpan) => void =
        undefined as any;
    private readonly _dart_getTextAlign: () => TextAlign = undefined as any;
    private readonly _dart_setTextAlign: (value: TextAlign) => void =
        undefined as any;
    private readonly _dart_getTextDirection: () => TextDirection =
        undefined as any;
    private readonly _dart_setTextDirection: (value: TextDirection) => void =
        undefined as any;
    private readonly _dart_getSoftWrap: () => boolean = undefined as any;
    private readonly _dart_setSoftWrap: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getOverflow: () => TextOverflow = undefined as any;
    private readonly _dart_setOverflow: (value: TextOverflow) => void =
        undefined as any;
    private readonly _dart_getTextScaleFactor: () => number = undefined as any;
    private readonly _dart_setTextScaleFactor: (value: number) => void =
        undefined as any;
    private readonly _dart_getMaxLines: () => number | undefined =
        undefined as any;
    private readonly _dart_setMaxLines: (value?: number | undefined) => void =
        undefined as any;
    private readonly _dart_getLocale: () => ILocale | undefined =
        undefined as any;
    private readonly _dart_setLocale: (value?: ILocale | undefined) => void =
        undefined as any;
    private readonly _dart_getStrutStyle: () => IStrutStyle | undefined =
        undefined as any;
    private readonly _dart_setStrutStyle: (
        value?: IStrutStyle | undefined
    ) => void = undefined as any;
    private readonly _dart_getTextWidthBasis: () => TextWidthBasis =
        undefined as any;
    private readonly _dart_setTextWidthBasis: (value: TextWidthBasis) => void =
        undefined as any;
    private readonly _dart_getTextHeightBehavior: () =>
        | ITextHeightBehavior
        | undefined = undefined as any;
    private readonly _dart_setTextHeightBehavior: (
        value?: ITextHeightBehavior | undefined
    ) => void = undefined as any;
    private readonly _dart_computeMinIntrinsicWidth: (
        height: number
    ) => number = undefined as any;
    private readonly _dart_computeMaxIntrinsicWidth: (
        height: number
    ) => number = undefined as any;
    private readonly _dart_computeMinIntrinsicHeight: (
        width: number
    ) => number = undefined as any;
    private readonly _dart_computeMaxIntrinsicHeight: (
        width: number
    ) => number = undefined as any;
    private readonly _dart_computeDistanceToActualBaseline: (
        baseline: TextBaseline
    ) => number = undefined as any;
    private readonly _dart_hitTestSelf: (position: IOffset) => boolean =
        undefined as any;
    private readonly _dart_hitTestChildren: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean = undefined as any;
    private readonly _dart_systemFontsDidChange: () => void = undefined as any;
    private readonly _dart_computeDryLayout: (
        constraints: IBoxConstraints
    ) => ISize = undefined as any;
    private readonly _dart_performLayout: () => void = undefined as any;
    private readonly _dart_paint: (
        context: IPaintingContext,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_getOffsetForCaret: (
        position: ITextPosition,
        caretPrototype: IRect
    ) => IOffset = undefined as any;
    private readonly _dart_getFullHeightForCaret: (
        position: ITextPosition
    ) => number | undefined = undefined as any;
    private readonly _dart_getBoxesForSelection: (
        selection: ITextSelection,
        props: { boxHeightStyle: BoxHeightStyle; boxWidthStyle: BoxWidthStyle }
    ) => IList<ITextBox> = undefined as any;
    private readonly _dart_getPositionForOffset: (
        offset: IOffset
    ) => ITextPosition = undefined as any;
    private readonly _dart_getWordBoundary: (
        position: ITextPosition
    ) => ITextRange = undefined as any;
    private readonly _dart_getTextSize: () => ISize = undefined as any;
    private readonly _dart_describeSemanticsConfiguration: (
        config: ISemanticsConfiguration
    ) => void = undefined as any;
    private readonly _dart_assembleSemanticsNode: (
        node: ISemanticsNode,
        config: ISemanticsConfiguration,
        children: IIterable<ISemanticsNode>
    ) => void = undefined as any;
    private readonly _dart_clearSemantics: () => void = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_debugValidateChild: (
        child: IRenderObject
    ) => boolean = undefined as any;
    private readonly _dart_insert: (
        child: IRenderBox,
        props?: { after?: IRenderBox | undefined }
    ) => void = undefined as any;
    private readonly _dart_add: (child: IRenderBox) => void = undefined as any;
    private readonly _dart_addAll: (
        children?: IList<IRenderBox> | undefined
    ) => void = undefined as any;
    private readonly _dart_remove: (child: IRenderBox) => void =
        undefined as any;
    private readonly _dart_removeAll: () => void = undefined as any;
    private readonly _dart_move: (
        child: IRenderBox,
        props?: { after?: IRenderBox | undefined }
    ) => void = undefined as any;
    private readonly _dart_attach: (owner: any) => void = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_redepthChildren: () => void = undefined as any;
    private readonly _dart_visitChildren: (
        visitor: (child: IRenderObject) => void
    ) => void = undefined as any;
    private readonly _dart_childBefore: (
        child: IRenderBox
    ) => IRenderBox | undefined = undefined as any;
    private readonly _dart_childAfter: (
        child: IRenderBox
    ) => IRenderBox | undefined = undefined as any;
    private readonly _dart_getChildCount: () => number = undefined as any;
    private readonly _dart_getFirstChild: () => IRenderBox | undefined =
        undefined as any;
    private readonly _dart_getLastChild: () => IRenderBox | undefined =
        undefined as any;
    private readonly _dart_defaultComputeDistanceToFirstActualBaseline: (
        baseline: TextBaseline
    ) => number | undefined = undefined as any;
    private readonly _dart_defaultComputeDistanceToHighestActualBaseline: (
        baseline: TextBaseline
    ) => number | undefined = undefined as any;
    private readonly _dart_defaultHitTestChildren: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean = undefined as any;
    private readonly _dart_defaultPaint: (
        context: IPaintingContext,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_getChildrenAsList: () => IList<IRenderBox> =
        undefined as any;
    private readonly _dart_getMinIntrinsicWidth: (height: number) => number =
        undefined as any;
    private readonly _dart_getMaxIntrinsicWidth: (height: number) => number =
        undefined as any;
    private readonly _dart_getMinIntrinsicHeight: (width: number) => number =
        undefined as any;
    private readonly _dart_getMaxIntrinsicHeight: (width: number) => number =
        undefined as any;
    private readonly _dart_getDryLayout: (
        constraints: IBoxConstraints
    ) => ISize = undefined as any;
    private readonly _dart_debugCannotComputeDryLayout: (props?: {
        error?: IFlutterError | undefined;
        reason?: string | undefined;
    }) => boolean = undefined as any;
    private readonly _dart_debugAdoptSize: (value: ISize) => ISize =
        undefined as any;
    private readonly _dart_debugResetSize: () => void = undefined as any;
    private readonly _dart_getDistanceToBaseline: (
        baseline: TextBaseline,
        props: { onlyReal: boolean }
    ) => number | undefined = undefined as any;
    private readonly _dart_getDistanceToActualBaseline: (
        baseline: TextBaseline
    ) => number | undefined = undefined as any;
    private readonly _dart_debugAssertDoesMeetConstraints: () => void =
        undefined as any;
    private readonly _dart_markNeedsLayout: () => void = undefined as any;
    private readonly _dart_performResize: () => void = undefined as any;
    private readonly _dart_hitTest: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean = undefined as any;
    private readonly _dart_applyPaintTransform: (
        child: any,
        transform: IMatrix4
    ) => void = undefined as any;
    private readonly _dart_globalToLocal: (
        point: IOffset,
        props?: { ancestor?: IRenderObject | undefined }
    ) => IOffset = undefined as any;
    private readonly _dart_localToGlobal: (
        point: IOffset,
        props?: { ancestor?: IRenderObject | undefined }
    ) => IOffset = undefined as any;
    private readonly _dart_handleEvent: (
        event: IPointerEvent,
        entry: any
    ) => void = undefined as any;
    private readonly _dart_debugHandleEvent: (
        event: IPointerEvent,
        entry: IHitTestEntry
    ) => boolean = undefined as any;
    private readonly _dart_debugPaint: (
        context: IPaintingContext,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_debugPaintSize: (
        context: IPaintingContext,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_debugPaintBaselines: (
        context: IPaintingContext,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_debugPaintPointers: (
        context: IPaintingContext,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_getHasSize: () => boolean = undefined as any;
    private readonly _dart_getSize: () => ISize = undefined as any;
    private readonly _dart_setSize: (value: ISize) => void = undefined as any;
    private readonly _dart_getSemanticBounds: () => IRect = undefined as any;
    private readonly _dart_getConstraints: () => IBoxConstraints =
        undefined as any;
    private readonly _dart_getPaintBounds: () => IRect = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_adoptChild: (child: any) => void = undefined as any;
    private readonly _dart_dropChild: (child: any) => void = undefined as any;
    private readonly _dart_markParentNeedsLayout: () => void = undefined as any;
    private readonly _dart_markNeedsLayoutForSizedByParentChange: () => void =
        undefined as any;
    private readonly _dart_scheduleInitialLayout: () => void = undefined as any;
    private readonly _dart_layout: (
        constraints: IConstraints,
        props: { parentUsesSize: boolean }
    ) => void = undefined as any;
    private readonly _dart_invokeLayoutCallback: <T>(
        callback: (constraints: T) => void
    ) => void = undefined as any;
    private readonly _dart_rotate: (props?: {
        newAngle?: number | undefined;
        oldAngle?: number | undefined;
        time?: IDuration | undefined;
    }) => void = undefined as any;
    private readonly _dart_debugRegisterRepaintBoundaryPaint: (props: {
        includedChild: boolean;
        includedParent: boolean;
    }) => void = undefined as any;
    private readonly _dart_markNeedsCompositingBitsUpdate: () => void =
        undefined as any;
    private readonly _dart_markNeedsPaint: () => void = undefined as any;
    private readonly _dart_scheduleInitialPaint: (
        rootLayer: IContainerLayer
    ) => void = undefined as any;
    private readonly _dart_replaceRootLayer: (rootLayer: IOffsetLayer) => void =
        undefined as any;
    private readonly _dart_getTransformTo: (
        ancestor?: IRenderObject | undefined
    ) => IMatrix4 = undefined as any;
    private readonly _dart_describeApproximatePaintClip: (
        child: any
    ) => IRect | undefined = undefined as any;
    private readonly _dart_describeSemanticsClip: (
        child: any
    ) => IRect | undefined = undefined as any;
    private readonly _dart_scheduleInitialSemantics: () => void =
        undefined as any;
    private readonly _dart_sendSemanticsEvent: (
        semanticsEvent: ISemanticsEvent
    ) => void = undefined as any;
    private readonly _dart_markNeedsSemanticsUpdate: () => void =
        undefined as any;
    private readonly _dart_visitChildrenForSemantics: (
        visitor: (child: IRenderObject) => void
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_showOnScreen: (props: {
        curve: ICurve;
        descendant?: IRenderObject | undefined;
        duration: IDuration;
        rect?: IRect | undefined;
    }) => void = undefined as any;
    private readonly _dart_describeForError: (
        name: string,
        props: { style: DiagnosticsTreeStyle }
    ) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getDebugDisposed: () => boolean | undefined =
        undefined as any;
    private readonly _dart_getDebugDoingThisResize: () => boolean =
        undefined as any;
    private readonly _dart_getDebugDoingThisLayout: () => boolean =
        undefined as any;
    private readonly _dart_getDebugCanParentUseSize: () => boolean =
        undefined as any;
    private readonly _dart_getOwner: () => IPipelineOwner | undefined =
        undefined as any;
    private readonly _dart_getDebugNeedsLayout: () => boolean =
        undefined as any;
    private readonly _dart_getDebugDoingThisLayoutWithCallback: () => boolean =
        undefined as any;
    private readonly _dart_getSizedByParent: () => boolean = undefined as any;
    private readonly _dart_getDebugDoingThisPaint: () => boolean =
        undefined as any;
    private readonly _dart_getIsRepaintBoundary: () => boolean =
        undefined as any;
    private readonly _dart_getAlwaysNeedsCompositing: () => boolean =
        undefined as any;
    private readonly _dart_getLayer: () => IContainerLayer | undefined =
        undefined as any;
    private readonly _dart_setLayer: (
        newLayer?: IContainerLayer | undefined
    ) => void = undefined as any;
    private readonly _dart_getDebugLayer: () => IContainerLayer | undefined =
        undefined as any;
    private readonly _dart_getNeedsCompositing: () => boolean =
        undefined as any;
    private readonly _dart_getDebugNeedsPaint: () => boolean = undefined as any;
    private readonly _dart_getDebugSemantics: () => ISemanticsNode | undefined =
        undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_redepthChild: (child: IAbstractNode) => void =
        undefined as any;
    private readonly _dart_getDepth: () => number = undefined as any;
    private readonly _dart_getAttached: () => boolean = undefined as any;
    private readonly _dart_getParent: () => IAbstractNode | undefined =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public setupParentData(child: any): void {
        return this._dart_setupParentData(child);
    }
    public getText(): IInlineSpan {
        return this._dart_getText();
    }
    public setText(value: IInlineSpan): void {
        return this._dart_setText(value);
    }
    public getTextAlign(): TextAlign {
        return this._dart_getTextAlign();
    }
    public setTextAlign(value: TextAlign): void {
        return this._dart_setTextAlign(value);
    }
    public getTextDirection(): TextDirection {
        return this._dart_getTextDirection();
    }
    public setTextDirection(value: TextDirection): void {
        return this._dart_setTextDirection(value);
    }
    public getSoftWrap(): boolean {
        return this._dart_getSoftWrap();
    }
    public setSoftWrap(value: boolean): void {
        return this._dart_setSoftWrap(value);
    }
    public getOverflow(): TextOverflow {
        return this._dart_getOverflow();
    }
    public setOverflow(value: TextOverflow): void {
        return this._dart_setOverflow(value);
    }
    public getTextScaleFactor(): number {
        return this._dart_getTextScaleFactor();
    }
    public setTextScaleFactor(value: number): void {
        return this._dart_setTextScaleFactor(value);
    }
    public getMaxLines(): number | undefined {
        return this._dart_getMaxLines();
    }
    public setMaxLines(value?: number | undefined): void {
        return this._dart_setMaxLines(value);
    }
    public getLocale(): ILocale | undefined {
        return this._dart_getLocale();
    }
    public setLocale(value?: ILocale | undefined): void {
        return this._dart_setLocale(value);
    }
    public getStrutStyle(): IStrutStyle | undefined {
        return this._dart_getStrutStyle();
    }
    public setStrutStyle(value?: IStrutStyle | undefined): void {
        return this._dart_setStrutStyle(value);
    }
    public getTextWidthBasis(): TextWidthBasis {
        return this._dart_getTextWidthBasis();
    }
    public setTextWidthBasis(value: TextWidthBasis): void {
        return this._dart_setTextWidthBasis(value);
    }
    public getTextHeightBehavior(): ITextHeightBehavior | undefined {
        return this._dart_getTextHeightBehavior();
    }
    public setTextHeightBehavior(
        value?: ITextHeightBehavior | undefined
    ): void {
        return this._dart_setTextHeightBehavior(value);
    }
    public computeMinIntrinsicWidth(height: number): number {
        return this._dart_computeMinIntrinsicWidth(height);
    }
    public computeMaxIntrinsicWidth(height: number): number {
        return this._dart_computeMaxIntrinsicWidth(height);
    }
    public computeMinIntrinsicHeight(width: number): number {
        return this._dart_computeMinIntrinsicHeight(width);
    }
    public computeMaxIntrinsicHeight(width: number): number {
        return this._dart_computeMaxIntrinsicHeight(width);
    }
    public computeDistanceToActualBaseline(baseline: TextBaseline): number {
        return this._dart_computeDistanceToActualBaseline(baseline);
    }
    public hitTestSelf(position: IOffset): boolean {
        return this._dart_hitTestSelf(position);
    }
    public hitTestChildren(
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ): boolean {
        return this._dart_hitTestChildren(result, props);
    }
    public systemFontsDidChange(): void {
        return this._dart_systemFontsDidChange();
    }
    public computeDryLayout(constraints: IBoxConstraints): ISize {
        return this._dart_computeDryLayout(constraints);
    }
    public performLayout(): void {
        return this._dart_performLayout();
    }
    public paint(context: IPaintingContext, offset: IOffset): void {
        return this._dart_paint(context, offset);
    }
    public getOffsetForCaret(
        position: ITextPosition,
        caretPrototype: IRect
    ): IOffset {
        return this._dart_getOffsetForCaret(position, caretPrototype);
    }
    public getFullHeightForCaret(position: ITextPosition): number | undefined {
        return this._dart_getFullHeightForCaret(position);
    }
    public getBoxesForSelection(
        selection: ITextSelection,
        props: {
            boxHeightStyle?: BoxHeightStyle;
            boxWidthStyle?: BoxWidthStyle;
        }
    ): IList<ITextBox> {
        return this._dart_getBoxesForSelection(selection, {
            ...getBoxesForSelectionDefaultProps,
            ...props,
        });
    }
    public getPositionForOffset(offset: IOffset): ITextPosition {
        return this._dart_getPositionForOffset(offset);
    }
    public getWordBoundary(position: ITextPosition): ITextRange {
        return this._dart_getWordBoundary(position);
    }
    public getTextSize(): ISize {
        return this._dart_getTextSize();
    }
    public describeSemanticsConfiguration(
        config: ISemanticsConfiguration
    ): void {
        return this._dart_describeSemanticsConfiguration(config);
    }
    public assembleSemanticsNode(
        node: ISemanticsNode,
        config: ISemanticsConfiguration,
        children: IIterable<ISemanticsNode>
    ): void {
        return this._dart_assembleSemanticsNode(node, config, children);
    }
    public clearSemantics(): void {
        return this._dart_clearSemantics();
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public debugValidateChild(child: IRenderObject): boolean {
        return this._dart_debugValidateChild(child);
    }
    public insert(
        child: IRenderBox,
        props?: { after?: IRenderBox | undefined }
    ): void {
        return this._dart_insert(child, props);
    }
    public add(child: IRenderBox): void {
        return this._dart_add(child);
    }
    public addAll(children?: IList<IRenderBox> | undefined): void {
        return this._dart_addAll(children);
    }
    public remove(child: IRenderBox): void {
        return this._dart_remove(child);
    }
    public removeAll(): void {
        return this._dart_removeAll();
    }
    public move(
        child: IRenderBox,
        props?: { after?: IRenderBox | undefined }
    ): void {
        return this._dart_move(child, props);
    }
    public attach(owner: any): void {
        return this._dart_attach(owner);
    }
    public detach(): void {
        return this._dart_detach();
    }
    public redepthChildren(): void {
        return this._dart_redepthChildren();
    }
    public visitChildren(visitor: (child: IRenderObject) => void): void {
        return this._dart_visitChildren(visitor);
    }
    public childBefore(child: IRenderBox): IRenderBox | undefined {
        return this._dart_childBefore(child);
    }
    public childAfter(child: IRenderBox): IRenderBox | undefined {
        return this._dart_childAfter(child);
    }
    public getChildCount(): number {
        return this._dart_getChildCount();
    }
    public getFirstChild(): IRenderBox | undefined {
        return this._dart_getFirstChild();
    }
    public getLastChild(): IRenderBox | undefined {
        return this._dart_getLastChild();
    }
    public defaultComputeDistanceToFirstActualBaseline(
        baseline: TextBaseline
    ): number | undefined {
        return this._dart_defaultComputeDistanceToFirstActualBaseline(baseline);
    }
    public defaultComputeDistanceToHighestActualBaseline(
        baseline: TextBaseline
    ): number | undefined {
        return this._dart_defaultComputeDistanceToHighestActualBaseline(
            baseline
        );
    }
    public defaultHitTestChildren(
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ): boolean {
        return this._dart_defaultHitTestChildren(result, props);
    }
    public defaultPaint(context: IPaintingContext, offset: IOffset): void {
        return this._dart_defaultPaint(context, offset);
    }
    public getChildrenAsList(): IList<IRenderBox> {
        return this._dart_getChildrenAsList();
    }
    public getMinIntrinsicWidth(height: number): number {
        return this._dart_getMinIntrinsicWidth(height);
    }
    public getMaxIntrinsicWidth(height: number): number {
        return this._dart_getMaxIntrinsicWidth(height);
    }
    public getMinIntrinsicHeight(width: number): number {
        return this._dart_getMinIntrinsicHeight(width);
    }
    public getMaxIntrinsicHeight(width: number): number {
        return this._dart_getMaxIntrinsicHeight(width);
    }
    public getDryLayout(constraints: IBoxConstraints): ISize {
        return this._dart_getDryLayout(constraints);
    }
    public debugCannotComputeDryLayout(props?: {
        error?: IFlutterError | undefined;
        reason?: string | undefined;
    }): boolean {
        return this._dart_debugCannotComputeDryLayout(props);
    }
    public debugAdoptSize(value: ISize): ISize {
        return this._dart_debugAdoptSize(value);
    }
    public debugResetSize(): void {
        return this._dart_debugResetSize();
    }
    public getDistanceToBaseline(
        baseline: TextBaseline,
        props: { onlyReal?: boolean }
    ): number | undefined {
        return this._dart_getDistanceToBaseline(baseline, {
            ...getDistanceToBaselineDefaultProps,
            ...props,
        });
    }
    public getDistanceToActualBaseline(
        baseline: TextBaseline
    ): number | undefined {
        return this._dart_getDistanceToActualBaseline(baseline);
    }
    public debugAssertDoesMeetConstraints(): void {
        return this._dart_debugAssertDoesMeetConstraints();
    }
    public markNeedsLayout(): void {
        return this._dart_markNeedsLayout();
    }
    public performResize(): void {
        return this._dart_performResize();
    }
    public hitTest(
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ): boolean {
        return this._dart_hitTest(result, props);
    }
    public applyPaintTransform(child: any, transform: IMatrix4): void {
        return this._dart_applyPaintTransform(child, transform);
    }
    public globalToLocal(
        point: IOffset,
        props?: { ancestor?: IRenderObject | undefined }
    ): IOffset {
        return this._dart_globalToLocal(point, props);
    }
    public localToGlobal(
        point: IOffset,
        props?: { ancestor?: IRenderObject | undefined }
    ): IOffset {
        return this._dart_localToGlobal(point, props);
    }
    public handleEvent(event: IPointerEvent, entry: any): void {
        return this._dart_handleEvent(event, entry);
    }
    public debugHandleEvent(
        event: IPointerEvent,
        entry: IHitTestEntry
    ): boolean {
        return this._dart_debugHandleEvent(event, entry);
    }
    public debugPaint(context: IPaintingContext, offset: IOffset): void {
        return this._dart_debugPaint(context, offset);
    }
    public debugPaintSize(context: IPaintingContext, offset: IOffset): void {
        return this._dart_debugPaintSize(context, offset);
    }
    public debugPaintBaselines(
        context: IPaintingContext,
        offset: IOffset
    ): void {
        return this._dart_debugPaintBaselines(context, offset);
    }
    public debugPaintPointers(
        context: IPaintingContext,
        offset: IOffset
    ): void {
        return this._dart_debugPaintPointers(context, offset);
    }
    public getHasSize(): boolean {
        return this._dart_getHasSize();
    }
    public getSize(): ISize {
        return this._dart_getSize();
    }
    public setSize(value: ISize): void {
        return this._dart_setSize(value);
    }
    public getSemanticBounds(): IRect {
        return this._dart_getSemanticBounds();
    }
    public getConstraints(): IBoxConstraints {
        return this._dart_getConstraints();
    }
    public getPaintBounds(): IRect {
        return this._dart_getPaintBounds();
    }
    public reassemble(): void {
        return this._dart_reassemble();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public adoptChild(child: any): void {
        return this._dart_adoptChild(child);
    }
    public dropChild(child: any): void {
        return this._dart_dropChild(child);
    }
    public markParentNeedsLayout(): void {
        return this._dart_markParentNeedsLayout();
    }
    public markNeedsLayoutForSizedByParentChange(): void {
        return this._dart_markNeedsLayoutForSizedByParentChange();
    }
    public scheduleInitialLayout(): void {
        return this._dart_scheduleInitialLayout();
    }
    public layout(
        constraints: IConstraints,
        props: { parentUsesSize?: boolean }
    ): void {
        return this._dart_layout(constraints, {
            ...layoutDefaultProps,
            ...props,
        });
    }
    public invokeLayoutCallback<T>(callback: (constraints: T) => void): void {
        return this._dart_invokeLayoutCallback(callback);
    }
    public rotate(props?: {
        newAngle?: number | undefined;
        oldAngle?: number | undefined;
        time?: IDuration | undefined;
    }): void {
        return this._dart_rotate(props);
    }
    public debugRegisterRepaintBoundaryPaint(props: {
        includedChild?: boolean;
        includedParent?: boolean;
    }): void {
        return this._dart_debugRegisterRepaintBoundaryPaint({
            ...debugRegisterRepaintBoundaryPaintDefaultProps,
            ...props,
        });
    }
    public markNeedsCompositingBitsUpdate(): void {
        return this._dart_markNeedsCompositingBitsUpdate();
    }
    public markNeedsPaint(): void {
        return this._dart_markNeedsPaint();
    }
    public scheduleInitialPaint(rootLayer: IContainerLayer): void {
        return this._dart_scheduleInitialPaint(rootLayer);
    }
    public replaceRootLayer(rootLayer: IOffsetLayer): void {
        return this._dart_replaceRootLayer(rootLayer);
    }
    public getTransformTo(ancestor?: IRenderObject | undefined): IMatrix4 {
        return this._dart_getTransformTo(ancestor);
    }
    public describeApproximatePaintClip(child: any): IRect | undefined {
        return this._dart_describeApproximatePaintClip(child);
    }
    public describeSemanticsClip(child: any): IRect | undefined {
        return this._dart_describeSemanticsClip(child);
    }
    public scheduleInitialSemantics(): void {
        return this._dart_scheduleInitialSemantics();
    }
    public sendSemanticsEvent(semanticsEvent: ISemanticsEvent): void {
        return this._dart_sendSemanticsEvent(semanticsEvent);
    }
    public markNeedsSemanticsUpdate(): void {
        return this._dart_markNeedsSemanticsUpdate();
    }
    public visitChildrenForSemantics(
        visitor: (child: IRenderObject) => void
    ): void {
        return this._dart_visitChildrenForSemantics(visitor);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toStringDeep(props: {
        minLevel?: DiagnosticLevel;
        prefixLineOne?: string;
        prefixOtherLines?: string | undefined;
    }): string {
        return this._dart_toStringDeep({
            ...toStringDeepDefaultProps,
            ...props,
        });
    }
    public toStringShallow(props: {
        joiner?: string;
        minLevel?: DiagnosticLevel;
    }): string {
        return this._dart_toStringShallow({
            ...toStringShallowDefaultProps,
            ...props,
        });
    }
    public showOnScreen(props: {
        curve?: ICurve;
        descendant?: IRenderObject | undefined;
        duration?: IDuration;
        rect?: IRect | undefined;
    }): void {
        return this._dart_showOnScreen({
            ...showOnScreenDefaultProps,
            ...props,
        });
    }
    public describeForError(
        name: string,
        props: { style?: DiagnosticsTreeStyle }
    ): IDiagnosticsNode {
        return this._dart_describeForError(name, {
            ...describeForErrorDefaultProps,
            ...props,
        });
    }
    public getDebugDisposed(): boolean | undefined {
        return this._dart_getDebugDisposed();
    }
    public getDebugDoingThisResize(): boolean {
        return this._dart_getDebugDoingThisResize();
    }
    public getDebugDoingThisLayout(): boolean {
        return this._dart_getDebugDoingThisLayout();
    }
    public getDebugCanParentUseSize(): boolean {
        return this._dart_getDebugCanParentUseSize();
    }
    public getOwner(): IPipelineOwner | undefined {
        return this._dart_getOwner();
    }
    public getDebugNeedsLayout(): boolean {
        return this._dart_getDebugNeedsLayout();
    }
    public getDebugDoingThisLayoutWithCallback(): boolean {
        return this._dart_getDebugDoingThisLayoutWithCallback();
    }
    public getSizedByParent(): boolean {
        return this._dart_getSizedByParent();
    }
    public getDebugDoingThisPaint(): boolean {
        return this._dart_getDebugDoingThisPaint();
    }
    public getIsRepaintBoundary(): boolean {
        return this._dart_getIsRepaintBoundary();
    }
    public getAlwaysNeedsCompositing(): boolean {
        return this._dart_getAlwaysNeedsCompositing();
    }
    public getLayer(): IContainerLayer | undefined {
        return this._dart_getLayer();
    }
    public setLayer(newLayer?: IContainerLayer | undefined): void {
        return this._dart_setLayer(newLayer);
    }
    public getDebugLayer(): IContainerLayer | undefined {
        return this._dart_getDebugLayer();
    }
    public getNeedsCompositing(): boolean {
        return this._dart_getNeedsCompositing();
    }
    public getDebugNeedsPaint(): boolean {
        return this._dart_getDebugNeedsPaint();
    }
    public getDebugSemantics(): ISemanticsNode | undefined {
        return this._dart_getDebugSemantics();
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public redepthChild(child: IAbstractNode): void {
        return this._dart_redepthChild(child);
    }
    public getDepth(): number {
        return this._dart_getDepth();
    }
    public getAttached(): boolean {
        return this._dart_getAttached();
    }
    public getParent(): IAbstractNode | undefined {
        return this._dart_getParent();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const renderParagraphDefaultProps = {
    overflow: TextOverflow.clip,
    softWrap: true,
    textAlign: TextAlign.start,
    textScaleFactor: 1.0,
    textWidthBasis: TextWidthBasis.parent,
};
const getBoxesForSelectionDefaultProps = {
    boxHeightStyle: BoxHeightStyle.tight,
    boxWidthStyle: BoxWidthStyle.tight,
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
