import { Duration, IDuration } from "../../dart/core/duration";
import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { BoxHeightStyle } from "../../dart/ui/boxHeightStyle";
import { BoxWidthStyle } from "../../dart/ui/boxWidthStyle";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { ILocale } from "../../dart/ui/locale";
import { IOffset, Offset } from "../../dart/ui/offset";
import { IRadius } from "../../dart/ui/radius";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { TextAlign } from "../../dart/ui/textAlign";
import { TextBaseline } from "../../dart/ui/textBaseline";
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
import { IValueListenable } from "../foundation/valueListenable";
import { IValueNotifier } from "../foundation/valueNotifier";
import { IHitTestEntry } from "../gestures/hitTestEntry";
import { IHitTestTarget } from "../gestures/hitTestTarget";
import { IPointerEvent } from "../gestures/pointerEvent";
import { ITapDownDetails } from "../gestures/tapDownDetails";
import { EdgeInsets, IEdgeInsets } from "../painting/edgeInsets";
import { IInlineSpan } from "../painting/inlineSpan";
import { IStrutStyle } from "../painting/strutStyle";
import { TextWidthBasis } from "../painting/textWidthBasis";
import { ISemanticsConfiguration } from "../semantics/semanticsConfiguration";
import { ISemanticsEvent } from "../semantics/semanticsEvent";
import { ISemanticsNode } from "../semantics/semanticsNode";
import { FloatingCursorDragState } from "../services/floatingCursorDragState";
import { SelectionChangedCause } from "../services/selectionChangedCause";
import { ITextLayoutMetrics } from "../services/textLayoutMetrics";
import { ITextSelection } from "../services/textSelection";
import { ITextSelectionDelegate } from "../services/textSelectionDelegate";
import { IBoxConstraints } from "./boxConstraints";
import { IBoxHitTestEntry } from "./boxHitTestEntry";
import { IBoxHitTestResult } from "./boxHitTestResult";
import { IConstraints } from "./constraints";
import { IContainerLayer } from "./containerLayer";
import { IContainerRenderObjectMixin } from "./containerRenderObjectMixin";
import { ILayerLink } from "./layerLink";
import { IOffsetLayer } from "./offsetLayer";
import { IPaintingContext } from "./paintingContext";
import { IParentData } from "./parentData";
import { IPipelineOwner } from "./pipelineOwner";
import { IRelayoutWhenSystemFontsChangeMixin } from "./relayoutWhenSystemFontsChangeMixin";
import { IRenderBox } from "./renderBox";
import { IRenderBoxContainerDefaultsMixin } from "./renderBoxContainerDefaultsMixin";
import { IRenderEditablePainter } from "./renderEditablePainter";
import { IRenderObject } from "./renderObject";
import { ITextSelectionPoint } from "./textSelectionPoint";
import { IViewportOffset } from "./viewportOffset";
declare const flutter: {
    rendering: {
        renderEditable: (
            this: void,
            renderEditable: IRenderEditable,
            props: {
                backgroundCursorColor?: IColor | undefined;
                children?: IList<IRenderBox> | undefined;
                clipBehavior: Clip;
                cursorColor?: IColor | undefined;
                cursorHeight?: number | undefined;
                cursorOffset: IOffset;
                cursorRadius?: IRadius | undefined;
                cursorWidth: number;
                devicePixelRatio: number;
                enableInteractiveSelection?: boolean | undefined;
                expands: boolean;
                floatingCursorAddedMargin: IEdgeInsets;
                forceLine: boolean;
                foregroundPainter?: IRenderEditablePainter | undefined;
                hasFocus?: boolean | undefined;
                ignorePointer: boolean;
                locale?: ILocale | undefined;
                maxLines?: number | undefined;
                minLines?: number | undefined;
                obscureText: boolean;
                obscuringCharacter: string;
                onCaretChanged?: (caretRect: IRect) => void | undefined;
                onSelectionChanged?: (
                    selection: ITextSelection,
                    renderObject: IRenderEditable,
                    cause: SelectionChangedCause
                ) => void | undefined;
                paintCursorAboveText: boolean;
                painter?: IRenderEditablePainter | undefined;
                promptRectColor?: IColor | undefined;
                promptRectRange?: ITextRange | undefined;
                readOnly: boolean;
                selection?: ITextSelection | undefined;
                selectionColor?: IColor | undefined;
                selectionHeightStyle: BoxHeightStyle;
                selectionWidthStyle: BoxWidthStyle;
                showCursor?: IValueNotifier<boolean> | undefined;
                strutStyle?: IStrutStyle | undefined;
                text?: IInlineSpan | undefined;
                textAlign: TextAlign;
                textHeightBehavior?: ITextHeightBehavior | undefined;
                textScaleFactor: number;
                textWidthBasis: TextWidthBasis;
                endHandleLayerLink: ILayerLink;
                offset: IViewportOffset;
                startHandleLayerLink: ILayerLink;
                textDirection: TextDirection;
                textSelectionDelegate: ITextSelectionDelegate;
            }
        ) => IRenderEditable;
    };
};
export interface IRenderEditable {
    ignorePointer: boolean;
    textSelectionDelegate: ITextSelectionDelegate;
    floatingCursorAddedMargin: IEdgeInsets;
    parentData: IParentData | undefined;
    debugCreator: Object | undefined;
    setupParentData: (child: unknown) => void;
    dispose: () => void;
    getForegroundPainter: () => IRenderEditablePainter | undefined;
    setForegroundPainter: (
        newPainter?: IRenderEditablePainter | undefined
    ) => void;
    getPainter: () => IRenderEditablePainter | undefined;
    setPainter: (newPainter?: IRenderEditablePainter | undefined) => void;
    debugAssertLayoutUpToDate: () => void;
    getTextHeightBehavior: () => ITextHeightBehavior | undefined;
    setTextHeightBehavior: (value?: ITextHeightBehavior | undefined) => void;
    getTextWidthBasis: () => TextWidthBasis;
    setTextWidthBasis: (value: TextWidthBasis) => void;
    getDevicePixelRatio: () => number;
    setDevicePixelRatio: (value: number) => void;
    getObscuringCharacter: () => string;
    setObscuringCharacter: (value: string) => void;
    getObscureText: () => boolean;
    setObscureText: (value: boolean) => void;
    getSelectionHeightStyle: () => BoxHeightStyle;
    setSelectionHeightStyle: (value: BoxHeightStyle) => void;
    getSelectionWidthStyle: () => BoxWidthStyle;
    setSelectionWidthStyle: (value: BoxWidthStyle) => void;
    getSelectionStartInViewport: () => IValueListenable<boolean>;
    getSelectionEndInViewport: () => IValueListenable<boolean>;
    getLineAtOffset: (position: ITextPosition) => ITextSelection;
    getWordBoundary: (position: ITextPosition) => ITextRange;
    getTextPositionAbove: (position: ITextPosition) => ITextPosition;
    getTextPositionBelow: (position: ITextPosition) => ITextPosition;
    markNeedsPaint: () => void;
    markNeedsTextLayout: () => void;
    systemFontsDidChange: () => void;
    getText: () => IInlineSpan | undefined;
    setText: (value?: IInlineSpan | undefined) => void;
    getTextAlign: () => TextAlign;
    setTextAlign: (value: TextAlign) => void;
    getTextDirection: () => TextDirection;
    setTextDirection: (value: TextDirection) => void;
    getLocale: () => ILocale | undefined;
    setLocale: (value?: ILocale | undefined) => void;
    getStrutStyle: () => IStrutStyle | undefined;
    setStrutStyle: (value?: IStrutStyle | undefined) => void;
    getCursorColor: () => IColor | undefined;
    setCursorColor: (value?: IColor | undefined) => void;
    getBackgroundCursorColor: () => IColor | undefined;
    setBackgroundCursorColor: (value?: IColor | undefined) => void;
    getShowCursor: () => IValueNotifier<boolean>;
    setShowCursor: (value: IValueNotifier<boolean>) => void;
    getHasFocus: () => boolean;
    setHasFocus: (value: boolean) => void;
    getForceLine: () => boolean;
    setForceLine: (value: boolean) => void;
    getReadOnly: () => boolean;
    setReadOnly: (value: boolean) => void;
    getMaxLines: () => number | undefined;
    setMaxLines: (value?: number | undefined) => void;
    getMinLines: () => number | undefined;
    setMinLines: (value?: number | undefined) => void;
    getExpands: () => boolean;
    setExpands: (value: boolean) => void;
    getSelectionColor: () => IColor | undefined;
    setSelectionColor: (value?: IColor | undefined) => void;
    getTextScaleFactor: () => number;
    setTextScaleFactor: (value: number) => void;
    getSelection: () => ITextSelection | undefined;
    setSelection: (value?: ITextSelection | undefined) => void;
    getOffset: () => IViewportOffset;
    setOffset: (value: IViewportOffset) => void;
    getCursorWidth: () => number;
    setCursorWidth: (value: number) => void;
    getCursorHeight: () => number;
    setCursorHeight: (value?: number | undefined) => void;
    getPaintCursorAboveText: () => boolean;
    setPaintCursorAboveText: (value: boolean) => void;
    getCursorOffset: () => IOffset;
    setCursorOffset: (value: IOffset) => void;
    getCursorRadius: () => IRadius | undefined;
    setCursorRadius: (value?: IRadius | undefined) => void;
    getStartHandleLayerLink: () => ILayerLink;
    setStartHandleLayerLink: (value: ILayerLink) => void;
    getEndHandleLayerLink: () => ILayerLink;
    setEndHandleLayerLink: (value: ILayerLink) => void;
    getEnableInteractiveSelection: () => boolean | undefined;
    setEnableInteractiveSelection: (value?: boolean | undefined) => void;
    getSelectionEnabled: () => boolean;
    getPromptRectColor: () => IColor | undefined;
    setPromptRectColor: (newValue?: IColor | undefined) => void;
    setPromptRectRange: (newRange?: ITextRange | undefined) => void;
    getMaxScrollExtent: () => number;
    getClipBehavior: () => Clip;
    setClipBehavior: (value: Clip) => void;
    describeSemanticsConfiguration: (config: ISemanticsConfiguration) => void;
    assembleSemanticsNode: (
        node: ISemanticsNode,
        config: ISemanticsConfiguration,
        children: IIterable<ISemanticsNode>
    ) => void;
    attach: (owner: unknown) => void;
    detach: () => void;
    redepthChildren: () => void;
    visitChildren: (visitor: (child: IRenderObject) => void) => void;
    getEndpointsForSelection: (
        selection: ITextSelection
    ) => IList<ITextSelectionPoint>;
    getRectForComposingRange: (range: ITextRange) => IRect | undefined;
    getPositionForPoint: (globalPosition: IOffset) => ITextPosition;
    getLocalRectForCaret: (caretPosition: ITextPosition) => IRect;
    computeMinIntrinsicWidth: (height: number) => number;
    computeMaxIntrinsicWidth: (height: number) => number;
    getPreferredLineHeight: () => number;
    computeMinIntrinsicHeight: (width: number) => number;
    computeMaxIntrinsicHeight: (width: number) => number;
    computeDistanceToActualBaseline: (baseline: TextBaseline) => number;
    hitTestSelf: (position: IOffset) => boolean;
    hitTestChildren: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean;
    handleEvent: (event: IPointerEvent, entry: unknown) => void;
    getLastSecondaryTapDownPosition: () => IOffset | undefined;
    handleSecondaryTapDown: (details: ITapDownDetails) => void;
    handleTapDown: (details: ITapDownDetails) => void;
    handleTap: () => void;
    handleDoubleTap: () => void;
    handleLongPress: () => void;
    selectPosition: (props: { cause: SelectionChangedCause }) => void;
    selectPositionAt: (props: {
        to?: IOffset | undefined;
        cause: SelectionChangedCause;
        from: IOffset;
    }) => void;
    selectWord: (props: { cause: SelectionChangedCause }) => void;
    selectWordsInRange: (props: {
        to?: IOffset | undefined;
        cause: SelectionChangedCause;
        from: IOffset;
    }) => void;
    selectWordEdge: (props: { cause: SelectionChangedCause }) => void;
    computeDryLayout: (constraints: IBoxConstraints) => ISize;
    performLayout: () => void;
    calculateBoundedFloatingCursorOffset: (rawCursorOffset: IOffset) => IOffset;
    setFloatingCursor: (
        state: FloatingCursorDragState,
        boundedOffset: IOffset,
        lastTextPosition: ITextPosition,
        props?: { resetLerpValue?: number | undefined }
    ) => void;
    paint: (context: IPaintingContext, offset: IOffset) => void;
    describeApproximatePaintClip: (child: unknown) => IRect | undefined;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
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
    scheduleInitialPaint: (rootLayer: IContainerLayer) => void;
    replaceRootLayer: (rootLayer: IOffsetLayer) => void;
    getTransformTo: (ancestor?: IRenderObject | undefined) => IMatrix4;
    describeSemanticsClip: (child: unknown) => IRect | undefined;
    scheduleInitialSemantics: () => void;
    sendSemanticsEvent: (semanticsEvent: ISemanticsEvent) => void;
    clearSemantics: () => void;
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
export class RenderEditable
    implements
        IRenderBox,
        IRelayoutWhenSystemFontsChangeMixin,
        IContainerRenderObjectMixin<IRenderBox, ITextParentData>,
        IRenderBoxContainerDefaultsMixin<IRenderBox, ITextParentData>,
        IDiagnosticableTreeMixin,
        IDiagnosticable,
        ITextLayoutMetrics,
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
    public readonly ignorePointer: boolean = undefined as any;
    public readonly textSelectionDelegate: ITextSelectionDelegate =
        undefined as any;
    public readonly floatingCursorAddedMargin: IEdgeInsets = undefined as any;
    public readonly parentData: IParentData | undefined = undefined as any;
    public readonly debugCreator: Object | undefined = undefined as any;
    public constructor(props: {
        backgroundCursorColor?: IColor | undefined;
        children?: IList<IRenderBox> | undefined;
        clipBehavior?: Clip;
        cursorColor?: IColor | undefined;
        cursorHeight?: number | undefined;
        cursorOffset?: IOffset;
        cursorRadius?: IRadius | undefined;
        cursorWidth?: number;
        devicePixelRatio?: number;
        enableInteractiveSelection?: boolean | undefined;
        expands?: boolean;
        floatingCursorAddedMargin?: IEdgeInsets;
        forceLine?: boolean;
        foregroundPainter?: IRenderEditablePainter | undefined;
        hasFocus?: boolean | undefined;
        ignorePointer?: boolean;
        locale?: ILocale | undefined;
        maxLines?: number | undefined;
        minLines?: number | undefined;
        obscureText?: boolean;
        obscuringCharacter?: string;
        onCaretChanged?: (caretRect: IRect) => void | undefined;
        onSelectionChanged?: (
            selection: ITextSelection,
            renderObject: IRenderEditable,
            cause: SelectionChangedCause
        ) => void | undefined;
        paintCursorAboveText?: boolean;
        painter?: IRenderEditablePainter | undefined;
        promptRectColor?: IColor | undefined;
        promptRectRange?: ITextRange | undefined;
        readOnly?: boolean;
        selection?: ITextSelection | undefined;
        selectionColor?: IColor | undefined;
        selectionHeightStyle: BoxHeightStyle;
        selectionWidthStyle: BoxWidthStyle;
        showCursor?: IValueNotifier<boolean> | undefined;
        strutStyle?: IStrutStyle | undefined;
        text?: IInlineSpan | undefined;
        textAlign?: TextAlign;
        textHeightBehavior?: ITextHeightBehavior | undefined;
        textScaleFactor?: number;
        textWidthBasis?: TextWidthBasis;
        endHandleLayerLink: ILayerLink;
        offset: IViewportOffset;
        startHandleLayerLink: ILayerLink;
        textDirection: TextDirection;
        textSelectionDelegate: ITextSelectionDelegate;
    }) {
        flutter.rendering.renderEditable(this, {
            ...renderEditableDefaultProps,
            ...props,
        });
    }
    private readonly _dart_setupParentData: (child: any) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getForegroundPainter: () =>
        | IRenderEditablePainter
        | undefined = undefined as any;
    private readonly _dart_setForegroundPainter: (
        newPainter?: IRenderEditablePainter | undefined
    ) => void = undefined as any;
    private readonly _dart_getPainter: () =>
        | IRenderEditablePainter
        | undefined = undefined as any;
    private readonly _dart_setPainter: (
        newPainter?: IRenderEditablePainter | undefined
    ) => void = undefined as any;
    private readonly _dart_debugAssertLayoutUpToDate: () => void =
        undefined as any;
    private readonly _dart_getTextHeightBehavior: () =>
        | ITextHeightBehavior
        | undefined = undefined as any;
    private readonly _dart_setTextHeightBehavior: (
        value?: ITextHeightBehavior | undefined
    ) => void = undefined as any;
    private readonly _dart_getTextWidthBasis: () => TextWidthBasis =
        undefined as any;
    private readonly _dart_setTextWidthBasis: (value: TextWidthBasis) => void =
        undefined as any;
    private readonly _dart_getDevicePixelRatio: () => number = undefined as any;
    private readonly _dart_setDevicePixelRatio: (value: number) => void =
        undefined as any;
    private readonly _dart_getObscuringCharacter: () => string =
        undefined as any;
    private readonly _dart_setObscuringCharacter: (value: string) => void =
        undefined as any;
    private readonly _dart_getObscureText: () => boolean = undefined as any;
    private readonly _dart_setObscureText: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getSelectionHeightStyle: () => BoxHeightStyle =
        undefined as any;
    private readonly _dart_setSelectionHeightStyle: (
        value: BoxHeightStyle
    ) => void = undefined as any;
    private readonly _dart_getSelectionWidthStyle: () => BoxWidthStyle =
        undefined as any;
    private readonly _dart_setSelectionWidthStyle: (
        value: BoxWidthStyle
    ) => void = undefined as any;
    private readonly _dart_getSelectionStartInViewport: () => IValueListenable<boolean> =
        undefined as any;
    private readonly _dart_getSelectionEndInViewport: () => IValueListenable<boolean> =
        undefined as any;
    private readonly _dart_getLineAtOffset: (
        position: ITextPosition
    ) => ITextSelection = undefined as any;
    private readonly _dart_getWordBoundary: (
        position: ITextPosition
    ) => ITextRange = undefined as any;
    private readonly _dart_getTextPositionAbove: (
        position: ITextPosition
    ) => ITextPosition = undefined as any;
    private readonly _dart_getTextPositionBelow: (
        position: ITextPosition
    ) => ITextPosition = undefined as any;
    private readonly _dart_markNeedsPaint: () => void = undefined as any;
    private readonly _dart_markNeedsTextLayout: () => void = undefined as any;
    private readonly _dart_systemFontsDidChange: () => void = undefined as any;
    private readonly _dart_getText: () => IInlineSpan | undefined =
        undefined as any;
    private readonly _dart_setText: (value?: IInlineSpan | undefined) => void =
        undefined as any;
    private readonly _dart_getTextAlign: () => TextAlign = undefined as any;
    private readonly _dart_setTextAlign: (value: TextAlign) => void =
        undefined as any;
    private readonly _dart_getTextDirection: () => TextDirection =
        undefined as any;
    private readonly _dart_setTextDirection: (value: TextDirection) => void =
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
    private readonly _dart_getCursorColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_setCursorColor: (
        value?: IColor | undefined
    ) => void = undefined as any;
    private readonly _dart_getBackgroundCursorColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_setBackgroundCursorColor: (
        value?: IColor | undefined
    ) => void = undefined as any;
    private readonly _dart_getShowCursor: () => IValueNotifier<boolean> =
        undefined as any;
    private readonly _dart_setShowCursor: (
        value: IValueNotifier<boolean>
    ) => void = undefined as any;
    private readonly _dart_getHasFocus: () => boolean = undefined as any;
    private readonly _dart_setHasFocus: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getForceLine: () => boolean = undefined as any;
    private readonly _dart_setForceLine: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getReadOnly: () => boolean = undefined as any;
    private readonly _dart_setReadOnly: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getMaxLines: () => number | undefined =
        undefined as any;
    private readonly _dart_setMaxLines: (value?: number | undefined) => void =
        undefined as any;
    private readonly _dart_getMinLines: () => number | undefined =
        undefined as any;
    private readonly _dart_setMinLines: (value?: number | undefined) => void =
        undefined as any;
    private readonly _dart_getExpands: () => boolean = undefined as any;
    private readonly _dart_setExpands: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getSelectionColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_setSelectionColor: (
        value?: IColor | undefined
    ) => void = undefined as any;
    private readonly _dart_getTextScaleFactor: () => number = undefined as any;
    private readonly _dart_setTextScaleFactor: (value: number) => void =
        undefined as any;
    private readonly _dart_getSelection: () => ITextSelection | undefined =
        undefined as any;
    private readonly _dart_setSelection: (
        value?: ITextSelection | undefined
    ) => void = undefined as any;
    private readonly _dart_getOffset: () => IViewportOffset = undefined as any;
    private readonly _dart_setOffset: (value: IViewportOffset) => void =
        undefined as any;
    private readonly _dart_getCursorWidth: () => number = undefined as any;
    private readonly _dart_setCursorWidth: (value: number) => void =
        undefined as any;
    private readonly _dart_getCursorHeight: () => number = undefined as any;
    private readonly _dart_setCursorHeight: (
        value?: number | undefined
    ) => void = undefined as any;
    private readonly _dart_getPaintCursorAboveText: () => boolean =
        undefined as any;
    private readonly _dart_setPaintCursorAboveText: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getCursorOffset: () => IOffset = undefined as any;
    private readonly _dart_setCursorOffset: (value: IOffset) => void =
        undefined as any;
    private readonly _dart_getCursorRadius: () => IRadius | undefined =
        undefined as any;
    private readonly _dart_setCursorRadius: (
        value?: IRadius | undefined
    ) => void = undefined as any;
    private readonly _dart_getStartHandleLayerLink: () => ILayerLink =
        undefined as any;
    private readonly _dart_setStartHandleLayerLink: (
        value: ILayerLink
    ) => void = undefined as any;
    private readonly _dart_getEndHandleLayerLink: () => ILayerLink =
        undefined as any;
    private readonly _dart_setEndHandleLayerLink: (value: ILayerLink) => void =
        undefined as any;
    private readonly _dart_getEnableInteractiveSelection: () =>
        | boolean
        | undefined = undefined as any;
    private readonly _dart_setEnableInteractiveSelection: (
        value?: boolean | undefined
    ) => void = undefined as any;
    private readonly _dart_getSelectionEnabled: () => boolean =
        undefined as any;
    private readonly _dart_getPromptRectColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_setPromptRectColor: (
        newValue?: IColor | undefined
    ) => void = undefined as any;
    private readonly _dart_setPromptRectRange: (
        newRange?: ITextRange | undefined
    ) => void = undefined as any;
    private readonly _dart_getMaxScrollExtent: () => number = undefined as any;
    private readonly _dart_getClipBehavior: () => Clip = undefined as any;
    private readonly _dart_setClipBehavior: (value: Clip) => void =
        undefined as any;
    private readonly _dart_describeSemanticsConfiguration: (
        config: ISemanticsConfiguration
    ) => void = undefined as any;
    private readonly _dart_assembleSemanticsNode: (
        node: ISemanticsNode,
        config: ISemanticsConfiguration,
        children: IIterable<ISemanticsNode>
    ) => void = undefined as any;
    private readonly _dart_attach: (owner: any) => void = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_redepthChildren: () => void = undefined as any;
    private readonly _dart_visitChildren: (
        visitor: (child: IRenderObject) => void
    ) => void = undefined as any;
    private readonly _dart_getEndpointsForSelection: (
        selection: ITextSelection
    ) => IList<ITextSelectionPoint> = undefined as any;
    private readonly _dart_getRectForComposingRange: (
        range: ITextRange
    ) => IRect | undefined = undefined as any;
    private readonly _dart_getPositionForPoint: (
        globalPosition: IOffset
    ) => ITextPosition = undefined as any;
    private readonly _dart_getLocalRectForCaret: (
        caretPosition: ITextPosition
    ) => IRect = undefined as any;
    private readonly _dart_computeMinIntrinsicWidth: (
        height: number
    ) => number = undefined as any;
    private readonly _dart_computeMaxIntrinsicWidth: (
        height: number
    ) => number = undefined as any;
    private readonly _dart_getPreferredLineHeight: () => number =
        undefined as any;
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
    private readonly _dart_handleEvent: (
        event: IPointerEvent,
        entry: any
    ) => void = undefined as any;
    private readonly _dart_getLastSecondaryTapDownPosition: () =>
        | IOffset
        | undefined = undefined as any;
    private readonly _dart_handleSecondaryTapDown: (
        details: ITapDownDetails
    ) => void = undefined as any;
    private readonly _dart_handleTapDown: (details: ITapDownDetails) => void =
        undefined as any;
    private readonly _dart_handleTap: () => void = undefined as any;
    private readonly _dart_handleDoubleTap: () => void = undefined as any;
    private readonly _dart_handleLongPress: () => void = undefined as any;
    private readonly _dart_selectPosition: (props: {
        cause: SelectionChangedCause;
    }) => void = undefined as any;
    private readonly _dart_selectPositionAt: (props: {
        to?: IOffset | undefined;
        cause: SelectionChangedCause;
        from: IOffset;
    }) => void = undefined as any;
    private readonly _dart_selectWord: (props: {
        cause: SelectionChangedCause;
    }) => void = undefined as any;
    private readonly _dart_selectWordsInRange: (props: {
        to?: IOffset | undefined;
        cause: SelectionChangedCause;
        from: IOffset;
    }) => void = undefined as any;
    private readonly _dart_selectWordEdge: (props: {
        cause: SelectionChangedCause;
    }) => void = undefined as any;
    private readonly _dart_computeDryLayout: (
        constraints: IBoxConstraints
    ) => ISize = undefined as any;
    private readonly _dart_performLayout: () => void = undefined as any;
    private readonly _dart_calculateBoundedFloatingCursorOffset: (
        rawCursorOffset: IOffset
    ) => IOffset = undefined as any;
    private readonly _dart_setFloatingCursor: (
        state: FloatingCursorDragState,
        boundedOffset: IOffset,
        lastTextPosition: ITextPosition,
        props?: { resetLerpValue?: number | undefined }
    ) => void = undefined as any;
    private readonly _dart_paint: (
        context: IPaintingContext,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_describeApproximatePaintClip: (
        child: any
    ) => IRect | undefined = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
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
    private readonly _dart_scheduleInitialPaint: (
        rootLayer: IContainerLayer
    ) => void = undefined as any;
    private readonly _dart_replaceRootLayer: (rootLayer: IOffsetLayer) => void =
        undefined as any;
    private readonly _dart_getTransformTo: (
        ancestor?: IRenderObject | undefined
    ) => IMatrix4 = undefined as any;
    private readonly _dart_describeSemanticsClip: (
        child: any
    ) => IRect | undefined = undefined as any;
    private readonly _dart_scheduleInitialSemantics: () => void =
        undefined as any;
    private readonly _dart_sendSemanticsEvent: (
        semanticsEvent: ISemanticsEvent
    ) => void = undefined as any;
    private readonly _dart_clearSemantics: () => void = undefined as any;
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
    public dispose(): void {
        return this._dart_dispose();
    }
    public getForegroundPainter(): IRenderEditablePainter | undefined {
        return this._dart_getForegroundPainter();
    }
    public setForegroundPainter(
        newPainter?: IRenderEditablePainter | undefined
    ): void {
        return this._dart_setForegroundPainter(newPainter);
    }
    public getPainter(): IRenderEditablePainter | undefined {
        return this._dart_getPainter();
    }
    public setPainter(newPainter?: IRenderEditablePainter | undefined): void {
        return this._dart_setPainter(newPainter);
    }
    public debugAssertLayoutUpToDate(): void {
        return this._dart_debugAssertLayoutUpToDate();
    }
    public getTextHeightBehavior(): ITextHeightBehavior | undefined {
        return this._dart_getTextHeightBehavior();
    }
    public setTextHeightBehavior(
        value?: ITextHeightBehavior | undefined
    ): void {
        return this._dart_setTextHeightBehavior(value);
    }
    public getTextWidthBasis(): TextWidthBasis {
        return this._dart_getTextWidthBasis();
    }
    public setTextWidthBasis(value: TextWidthBasis): void {
        return this._dart_setTextWidthBasis(value);
    }
    public getDevicePixelRatio(): number {
        return this._dart_getDevicePixelRatio();
    }
    public setDevicePixelRatio(value: number): void {
        return this._dart_setDevicePixelRatio(value);
    }
    public getObscuringCharacter(): string {
        return this._dart_getObscuringCharacter();
    }
    public setObscuringCharacter(value: string): void {
        return this._dart_setObscuringCharacter(value);
    }
    public getObscureText(): boolean {
        return this._dart_getObscureText();
    }
    public setObscureText(value: boolean): void {
        return this._dart_setObscureText(value);
    }
    public getSelectionHeightStyle(): BoxHeightStyle {
        return this._dart_getSelectionHeightStyle();
    }
    public setSelectionHeightStyle(value: BoxHeightStyle): void {
        return this._dart_setSelectionHeightStyle(value);
    }
    public getSelectionWidthStyle(): BoxWidthStyle {
        return this._dart_getSelectionWidthStyle();
    }
    public setSelectionWidthStyle(value: BoxWidthStyle): void {
        return this._dart_setSelectionWidthStyle(value);
    }
    public getSelectionStartInViewport(): IValueListenable<boolean> {
        return this._dart_getSelectionStartInViewport();
    }
    public getSelectionEndInViewport(): IValueListenable<boolean> {
        return this._dart_getSelectionEndInViewport();
    }
    public getLineAtOffset(position: ITextPosition): ITextSelection {
        return this._dart_getLineAtOffset(position);
    }
    public getWordBoundary(position: ITextPosition): ITextRange {
        return this._dart_getWordBoundary(position);
    }
    public getTextPositionAbove(position: ITextPosition): ITextPosition {
        return this._dart_getTextPositionAbove(position);
    }
    public getTextPositionBelow(position: ITextPosition): ITextPosition {
        return this._dart_getTextPositionBelow(position);
    }
    public markNeedsPaint(): void {
        return this._dart_markNeedsPaint();
    }
    public markNeedsTextLayout(): void {
        return this._dart_markNeedsTextLayout();
    }
    public systemFontsDidChange(): void {
        return this._dart_systemFontsDidChange();
    }
    public getText(): IInlineSpan | undefined {
        return this._dart_getText();
    }
    public setText(value?: IInlineSpan | undefined): void {
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
    public getCursorColor(): IColor | undefined {
        return this._dart_getCursorColor();
    }
    public setCursorColor(value?: IColor | undefined): void {
        return this._dart_setCursorColor(value);
    }
    public getBackgroundCursorColor(): IColor | undefined {
        return this._dart_getBackgroundCursorColor();
    }
    public setBackgroundCursorColor(value?: IColor | undefined): void {
        return this._dart_setBackgroundCursorColor(value);
    }
    public getShowCursor(): IValueNotifier<boolean> {
        return this._dart_getShowCursor();
    }
    public setShowCursor(value: IValueNotifier<boolean>): void {
        return this._dart_setShowCursor(value);
    }
    public getHasFocus(): boolean {
        return this._dart_getHasFocus();
    }
    public setHasFocus(value: boolean): void {
        return this._dart_setHasFocus(value);
    }
    public getForceLine(): boolean {
        return this._dart_getForceLine();
    }
    public setForceLine(value: boolean): void {
        return this._dart_setForceLine(value);
    }
    public getReadOnly(): boolean {
        return this._dart_getReadOnly();
    }
    public setReadOnly(value: boolean): void {
        return this._dart_setReadOnly(value);
    }
    public getMaxLines(): number | undefined {
        return this._dart_getMaxLines();
    }
    public setMaxLines(value?: number | undefined): void {
        return this._dart_setMaxLines(value);
    }
    public getMinLines(): number | undefined {
        return this._dart_getMinLines();
    }
    public setMinLines(value?: number | undefined): void {
        return this._dart_setMinLines(value);
    }
    public getExpands(): boolean {
        return this._dart_getExpands();
    }
    public setExpands(value: boolean): void {
        return this._dart_setExpands(value);
    }
    public getSelectionColor(): IColor | undefined {
        return this._dart_getSelectionColor();
    }
    public setSelectionColor(value?: IColor | undefined): void {
        return this._dart_setSelectionColor(value);
    }
    public getTextScaleFactor(): number {
        return this._dart_getTextScaleFactor();
    }
    public setTextScaleFactor(value: number): void {
        return this._dart_setTextScaleFactor(value);
    }
    public getSelection(): ITextSelection | undefined {
        return this._dart_getSelection();
    }
    public setSelection(value?: ITextSelection | undefined): void {
        return this._dart_setSelection(value);
    }
    public getOffset(): IViewportOffset {
        return this._dart_getOffset();
    }
    public setOffset(value: IViewportOffset): void {
        return this._dart_setOffset(value);
    }
    public getCursorWidth(): number {
        return this._dart_getCursorWidth();
    }
    public setCursorWidth(value: number): void {
        return this._dart_setCursorWidth(value);
    }
    public getCursorHeight(): number {
        return this._dart_getCursorHeight();
    }
    public setCursorHeight(value?: number | undefined): void {
        return this._dart_setCursorHeight(value);
    }
    public getPaintCursorAboveText(): boolean {
        return this._dart_getPaintCursorAboveText();
    }
    public setPaintCursorAboveText(value: boolean): void {
        return this._dart_setPaintCursorAboveText(value);
    }
    public getCursorOffset(): IOffset {
        return this._dart_getCursorOffset();
    }
    public setCursorOffset(value: IOffset): void {
        return this._dart_setCursorOffset(value);
    }
    public getCursorRadius(): IRadius | undefined {
        return this._dart_getCursorRadius();
    }
    public setCursorRadius(value?: IRadius | undefined): void {
        return this._dart_setCursorRadius(value);
    }
    public getStartHandleLayerLink(): ILayerLink {
        return this._dart_getStartHandleLayerLink();
    }
    public setStartHandleLayerLink(value: ILayerLink): void {
        return this._dart_setStartHandleLayerLink(value);
    }
    public getEndHandleLayerLink(): ILayerLink {
        return this._dart_getEndHandleLayerLink();
    }
    public setEndHandleLayerLink(value: ILayerLink): void {
        return this._dart_setEndHandleLayerLink(value);
    }
    public getEnableInteractiveSelection(): boolean | undefined {
        return this._dart_getEnableInteractiveSelection();
    }
    public setEnableInteractiveSelection(value?: boolean | undefined): void {
        return this._dart_setEnableInteractiveSelection(value);
    }
    public getSelectionEnabled(): boolean {
        return this._dart_getSelectionEnabled();
    }
    public getPromptRectColor(): IColor | undefined {
        return this._dart_getPromptRectColor();
    }
    public setPromptRectColor(newValue?: IColor | undefined): void {
        return this._dart_setPromptRectColor(newValue);
    }
    public setPromptRectRange(newRange?: ITextRange | undefined): void {
        return this._dart_setPromptRectRange(newRange);
    }
    public getMaxScrollExtent(): number {
        return this._dart_getMaxScrollExtent();
    }
    public getClipBehavior(): Clip {
        return this._dart_getClipBehavior();
    }
    public setClipBehavior(value: Clip): void {
        return this._dart_setClipBehavior(value);
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
    public getEndpointsForSelection(
        selection: ITextSelection
    ): IList<ITextSelectionPoint> {
        return this._dart_getEndpointsForSelection(selection);
    }
    public getRectForComposingRange(range: ITextRange): IRect | undefined {
        return this._dart_getRectForComposingRange(range);
    }
    public getPositionForPoint(globalPosition: IOffset): ITextPosition {
        return this._dart_getPositionForPoint(globalPosition);
    }
    public getLocalRectForCaret(caretPosition: ITextPosition): IRect {
        return this._dart_getLocalRectForCaret(caretPosition);
    }
    public computeMinIntrinsicWidth(height: number): number {
        return this._dart_computeMinIntrinsicWidth(height);
    }
    public computeMaxIntrinsicWidth(height: number): number {
        return this._dart_computeMaxIntrinsicWidth(height);
    }
    public getPreferredLineHeight(): number {
        return this._dart_getPreferredLineHeight();
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
    public handleEvent(event: IPointerEvent, entry: any): void {
        return this._dart_handleEvent(event, entry);
    }
    public getLastSecondaryTapDownPosition(): IOffset | undefined {
        return this._dart_getLastSecondaryTapDownPosition();
    }
    public handleSecondaryTapDown(details: ITapDownDetails): void {
        return this._dart_handleSecondaryTapDown(details);
    }
    public handleTapDown(details: ITapDownDetails): void {
        return this._dart_handleTapDown(details);
    }
    public handleTap(): void {
        return this._dart_handleTap();
    }
    public handleDoubleTap(): void {
        return this._dart_handleDoubleTap();
    }
    public handleLongPress(): void {
        return this._dart_handleLongPress();
    }
    public selectPosition(props: { cause: SelectionChangedCause }): void {
        return this._dart_selectPosition(props);
    }
    public selectPositionAt(props: {
        to?: IOffset | undefined;
        cause: SelectionChangedCause;
        from: IOffset;
    }): void {
        return this._dart_selectPositionAt(props);
    }
    public selectWord(props: { cause: SelectionChangedCause }): void {
        return this._dart_selectWord(props);
    }
    public selectWordsInRange(props: {
        to?: IOffset | undefined;
        cause: SelectionChangedCause;
        from: IOffset;
    }): void {
        return this._dart_selectWordsInRange(props);
    }
    public selectWordEdge(props: { cause: SelectionChangedCause }): void {
        return this._dart_selectWordEdge(props);
    }
    public computeDryLayout(constraints: IBoxConstraints): ISize {
        return this._dart_computeDryLayout(constraints);
    }
    public performLayout(): void {
        return this._dart_performLayout();
    }
    public calculateBoundedFloatingCursorOffset(
        rawCursorOffset: IOffset
    ): IOffset {
        return this._dart_calculateBoundedFloatingCursorOffset(rawCursorOffset);
    }
    public setFloatingCursor(
        state: FloatingCursorDragState,
        boundedOffset: IOffset,
        lastTextPosition: ITextPosition,
        props?: { resetLerpValue?: number | undefined }
    ): void {
        return this._dart_setFloatingCursor(
            state,
            boundedOffset,
            lastTextPosition,
            props
        );
    }
    public paint(context: IPaintingContext, offset: IOffset): void {
        return this._dart_paint(context, offset);
    }
    public describeApproximatePaintClip(child: any): IRect | undefined {
        return this._dart_describeApproximatePaintClip(child);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
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
    public scheduleInitialPaint(rootLayer: IContainerLayer): void {
        return this._dart_scheduleInitialPaint(rootLayer);
    }
    public replaceRootLayer(rootLayer: IOffsetLayer): void {
        return this._dart_replaceRootLayer(rootLayer);
    }
    public getTransformTo(ancestor?: IRenderObject | undefined): IMatrix4 {
        return this._dart_getTransformTo(ancestor);
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
    public clearSemantics(): void {
        return this._dart_clearSemantics();
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
const renderEditableDefaultProps = {
    clipBehavior: Clip.hardEdge,
    cursorOffset: Offset.zero,
    cursorWidth: 1.0,
    devicePixelRatio: 1.0,
    expands: false,
    floatingCursorAddedMargin: EdgeInsets.fromLTRB(4, 4, 4, 5),
    forceLine: true,
    ignorePointer: false,
    maxLines: 1,
    obscureText: false,
    obscuringCharacter: "•",
    paintCursorAboveText: false,
    readOnly: false,
    textAlign: TextAlign.start,
    textScaleFactor: 1.0,
    textWidthBasis: TextWidthBasis.parent,
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
