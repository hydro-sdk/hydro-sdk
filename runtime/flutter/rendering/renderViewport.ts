import { Duration, IDuration } from "../../dart/core/duration";
import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { TextBaseline } from "../../dart/ui/textBaseline";
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
import { Axis } from "../painting/axis";
import { AxisDirection } from "../painting/axisDirection";
import { ISemanticsConfiguration } from "../semantics/semanticsConfiguration";
import { ISemanticsEvent } from "../semantics/semanticsEvent";
import { ISemanticsNode } from "../semantics/semanticsNode";
import { SemanticsTag } from "../semantics/semanticsTag";
import { IBoxConstraints } from "./boxConstraints";
import { IBoxHitTestEntry } from "./boxHitTestEntry";
import { IBoxHitTestResult } from "./boxHitTestResult";
import { CacheExtentStyle } from "./cacheExtentStyle";
import { IConstraints } from "./constraints";
import { IContainerLayer } from "./containerLayer";
import { IContainerRenderObjectMixin } from "./containerRenderObjectMixin";
import { GrowthDirection } from "./growthDirection";
import { IOffsetLayer } from "./offsetLayer";
import { IPaintingContext } from "./paintingContext";
import { IParentData } from "./parentData";
import { IPipelineOwner } from "./pipelineOwner";
import { IRenderAbstractViewport } from "./renderAbstractViewport";
import { IRenderObject } from "./renderObject";
import { IRenderSliver } from "./renderSliver";
import { IRenderViewportBase } from "./renderViewportBase";
import { IRevealedOffset } from "./revealedOffset";
import { ISliverGeometry } from "./sliverGeometry";
import { ISliverPhysicalContainerParentData } from "./sliverPhysicalContainerParentData";
import { IViewportOffset } from "./viewportOffset";
declare const flutter: {
    rendering: {
        renderViewport: (
            this: void,
            renderViewport: IRenderViewport,
            props: {
                anchor: number;
                axisDirection: AxisDirection;
                cacheExtent?: number | undefined;
                cacheExtentStyle: CacheExtentStyle;
                center?: IRenderSliver | undefined;
                children?: IList<IRenderSliver> | undefined;
                clipBehavior: Clip;
                crossAxisDirection: AxisDirection;
                offset: IViewportOffset;
            }
        ) => IRenderViewport;
    };
};
export interface IRenderViewport {
    parentData: IParentData | undefined;
    debugCreator: Object | undefined;
    setupParentData: (child: unknown) => void;
    getAnchor: () => number;
    setAnchor: (value: number) => void;
    getCenter: () => IRenderSliver | undefined;
    setCenter: (value?: IRenderSliver | undefined) => void;
    getSizedByParent: () => boolean;
    computeDryLayout: (constraints: IBoxConstraints) => ISize;
    performLayout: () => void;
    getHasVisualOverflow: () => boolean;
    updateOutOfBandData: (
        growthDirection: GrowthDirection,
        childLayoutGeometry: ISliverGeometry
    ) => void;
    updateChildLayoutOffset: (
        child: IRenderSliver,
        layoutOffset: number,
        growthDirection: GrowthDirection
    ) => void;
    paintOffsetOf: (child: IRenderSliver) => IOffset;
    scrollOffsetOf: (
        child: IRenderSliver,
        scrollOffsetWithinChild: number
    ) => number;
    maxScrollObstructionExtentBefore: (child: IRenderSliver) => number;
    applyPaintTransform: (child: unknown, transform: IMatrix4) => void;
    computeChildMainAxisPosition: (
        child: IRenderSliver,
        parentMainAxisPosition: number
    ) => number;
    getIndexOfFirstChild: () => number;
    labelForChild: (index: number) => string;
    getChildrenInPaintOrder: () => IIterable<IRenderSliver>;
    getChildrenInHitTestOrder: () => IIterable<IRenderSliver>;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    describeSemanticsConfiguration: (config: ISemanticsConfiguration) => void;
    visitChildrenForSemantics: (
        visitor: (child: IRenderObject) => void
    ) => void;
    attach: (owner: unknown) => void;
    detach: () => void;
    debugThrowIfNotCheckingIntrinsics: () => boolean;
    computeMinIntrinsicWidth: (height: number) => number;
    computeMaxIntrinsicWidth: (height: number) => number;
    computeMinIntrinsicHeight: (width: number) => number;
    computeMaxIntrinsicHeight: (width: number) => number;
    layoutChildSequence: (props: {
        advance: (child: IRenderSliver) => IRenderSliver | undefined;
        cacheOrigin: number;
        child?: IRenderSliver | undefined;
        crossAxisExtent: number;
        growthDirection: GrowthDirection;
        layoutOffset: number;
        mainAxisExtent: number;
        overlap: number;
        remainingCacheExtent: number;
        remainingPaintExtent: number;
        scrollOffset: number;
    }) => number;
    describeApproximatePaintClip: (child: unknown) => IRect;
    describeSemanticsClip: (child: unknown) => IRect;
    paint: (context: IPaintingContext, offset: IOffset) => void;
    debugPaintSize: (context: IPaintingContext, offset: IOffset) => void;
    hitTestChildren: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean;
    getOffsetToReveal: (
        target: IRenderObject,
        alignment: number,
        props?: { rect?: IRect | undefined }
    ) => IRevealedOffset;
    computeAbsolutePaintOffset: (
        child: IRenderSliver,
        layoutOffset: number,
        growthDirection: GrowthDirection
    ) => IOffset;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    showOnScreen: (props: {
        curve: ICurve;
        descendant?: IRenderObject | undefined;
        duration: IDuration;
        rect?: IRect | undefined;
    }) => void;
    getAxisDirection: () => AxisDirection;
    setAxisDirection: (value: AxisDirection) => void;
    getCrossAxisDirection: () => AxisDirection;
    setCrossAxisDirection: (value: AxisDirection) => void;
    getAxis: () => Axis;
    getOffset: () => IViewportOffset;
    setOffset: (value: IViewportOffset) => void;
    getCacheExtent: () => number | undefined;
    setCacheExtent: (value?: number | undefined) => void;
    getCacheExtentStyle: () => CacheExtentStyle;
    setCacheExtentStyle: (value: CacheExtentStyle) => void;
    getClipBehavior: () => Clip;
    setClipBehavior: (value: Clip) => void;
    getIsRepaintBoundary: () => boolean;
    debugValidateChild: (child: IRenderObject) => boolean;
    insert: (
        child: IRenderSliver,
        props?: { after?: IRenderSliver | undefined }
    ) => void;
    add: (child: IRenderSliver) => void;
    addAll: (children?: IList<IRenderSliver> | undefined) => void;
    remove: (child: IRenderSliver) => void;
    removeAll: () => void;
    move: (
        child: IRenderSliver,
        props?: { after?: IRenderSliver | undefined }
    ) => void;
    redepthChildren: () => void;
    visitChildren: (visitor: (child: IRenderObject) => void) => void;
    childBefore: (child: IRenderSliver) => IRenderSliver | undefined;
    childAfter: (child: IRenderSliver) => IRenderSliver | undefined;
    getChildCount: () => number;
    getFirstChild: () => IRenderSliver | undefined;
    getLastChild: () => IRenderSliver | undefined;
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
    computeDistanceToActualBaseline: (
        baseline: TextBaseline
    ) => number | undefined;
    debugAssertDoesMeetConstraints: () => void;
    markNeedsLayout: () => void;
    performResize: () => void;
    hitTest: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean;
    hitTestSelf: (position: IOffset) => boolean;
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
    markNeedsPaint: () => void;
    scheduleInitialPaint: (rootLayer: IContainerLayer) => void;
    replaceRootLayer: (rootLayer: IOffsetLayer) => void;
    getTransformTo: (ancestor?: IRenderObject | undefined) => IMatrix4;
    scheduleInitialSemantics: () => void;
    sendSemanticsEvent: (semanticsEvent: ISemanticsEvent) => void;
    clearSemantics: () => void;
    markNeedsSemanticsUpdate: () => void;
    assembleSemanticsNode: (
        node: ISemanticsNode,
        config: ISemanticsConfiguration,
        children: IIterable<ISemanticsNode>
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
    describeForError: (
        name: string,
        props: { style: DiagnosticsTreeStyle }
    ) => IDiagnosticsNode;
    getDebugDoingThisResize: () => boolean;
    getDebugDoingThisLayout: () => boolean;
    getDebugCanParentUseSize: () => boolean;
    getOwner: () => IPipelineOwner | undefined;
    getDebugNeedsLayout: () => boolean;
    getDebugDoingThisLayoutWithCallback: () => boolean;
    getDebugDoingThisPaint: () => boolean;
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
export class RenderViewport
    implements
        Omit<
            IRenderViewportBase<ISliverPhysicalContainerParentData>,
            | "attach"
            | "detach"
            | "debugDescribeChildren"
            | "debugFillProperties"
            | "toStringShort"
            | "toString"
            | "toStringDeep"
            | "toStringShallow"
            | "toDiagnosticsNode"
        >,
        IContainerRenderObjectMixin<
            IRenderSliver,
            ISliverPhysicalContainerParentData
        >,
        IDiagnosticableTreeMixin,
        IDiagnosticable,
        IRenderAbstractViewport,
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
    public static useTwoPaneSemantics = new SemanticsTag(
        "RenderViewport.twoPane"
    );
    public static excludeFromScrolling = new SemanticsTag(
        "RenderViewport.excludeFromScrolling"
    );
    public static _maxLayoutCycles = 10;
    public readonly parentData: IParentData | undefined = undefined as any;
    public readonly debugCreator: Object | undefined = undefined as any;
    public constructor(props: {
        anchor?: number;
        axisDirection?: AxisDirection;
        cacheExtent?: number | undefined;
        cacheExtentStyle?: CacheExtentStyle;
        center?: IRenderSliver | undefined;
        children?: IList<IRenderSliver> | undefined;
        clipBehavior?: Clip;
        crossAxisDirection: AxisDirection;
        offset: IViewportOffset;
    }) {
        flutter.rendering.renderViewport(this, {
            ...renderViewportDefaultProps,
            ...props,
        });
    }
    private readonly _dart_setupParentData: (child: any) => void =
        undefined as any;
    private readonly _dart_getAnchor: () => number = undefined as any;
    private readonly _dart_setAnchor: (value: number) => void =
        undefined as any;
    private readonly _dart_getCenter: () => IRenderSliver | undefined =
        undefined as any;
    private readonly _dart_setCenter: (
        value?: IRenderSliver | undefined
    ) => void = undefined as any;
    private readonly _dart_getSizedByParent: () => boolean = undefined as any;
    private readonly _dart_computeDryLayout: (
        constraints: IBoxConstraints
    ) => ISize = undefined as any;
    private readonly _dart_performLayout: () => void = undefined as any;
    private readonly _dart_getHasVisualOverflow: () => boolean =
        undefined as any;
    private readonly _dart_updateOutOfBandData: (
        growthDirection: GrowthDirection,
        childLayoutGeometry: ISliverGeometry
    ) => void = undefined as any;
    private readonly _dart_updateChildLayoutOffset: (
        child: IRenderSliver,
        layoutOffset: number,
        growthDirection: GrowthDirection
    ) => void = undefined as any;
    private readonly _dart_paintOffsetOf: (child: IRenderSliver) => IOffset =
        undefined as any;
    private readonly _dart_scrollOffsetOf: (
        child: IRenderSliver,
        scrollOffsetWithinChild: number
    ) => number = undefined as any;
    private readonly _dart_maxScrollObstructionExtentBefore: (
        child: IRenderSliver
    ) => number = undefined as any;
    private readonly _dart_applyPaintTransform: (
        child: any,
        transform: IMatrix4
    ) => void = undefined as any;
    private readonly _dart_computeChildMainAxisPosition: (
        child: IRenderSliver,
        parentMainAxisPosition: number
    ) => number = undefined as any;
    private readonly _dart_getIndexOfFirstChild: () => number =
        undefined as any;
    private readonly _dart_labelForChild: (index: number) => string =
        undefined as any;
    private readonly _dart_getChildrenInPaintOrder: () => IIterable<IRenderSliver> =
        undefined as any;
    private readonly _dart_getChildrenInHitTestOrder: () => IIterable<IRenderSliver> =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_describeSemanticsConfiguration: (
        config: ISemanticsConfiguration
    ) => void = undefined as any;
    private readonly _dart_visitChildrenForSemantics: (
        visitor: (child: IRenderObject) => void
    ) => void = undefined as any;
    private readonly _dart_attach: (owner: any) => void = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_debugThrowIfNotCheckingIntrinsics: () => boolean =
        undefined as any;
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
    private readonly _dart_layoutChildSequence: (props: {
        advance: (child: IRenderSliver) => IRenderSliver | undefined;
        cacheOrigin: number;
        child?: IRenderSliver | undefined;
        crossAxisExtent: number;
        growthDirection: GrowthDirection;
        layoutOffset: number;
        mainAxisExtent: number;
        overlap: number;
        remainingCacheExtent: number;
        remainingPaintExtent: number;
        scrollOffset: number;
    }) => number = undefined as any;
    private readonly _dart_describeApproximatePaintClip: (child: any) => IRect =
        undefined as any;
    private readonly _dart_describeSemanticsClip: (child: any) => IRect =
        undefined as any;
    private readonly _dart_paint: (
        context: IPaintingContext,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_debugPaintSize: (
        context: IPaintingContext,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_hitTestChildren: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean = undefined as any;
    private readonly _dart_getOffsetToReveal: (
        target: IRenderObject,
        alignment: number,
        props?: { rect?: IRect | undefined }
    ) => IRevealedOffset = undefined as any;
    private readonly _dart_computeAbsolutePaintOffset: (
        child: IRenderSliver,
        layoutOffset: number,
        growthDirection: GrowthDirection
    ) => IOffset = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_showOnScreen: (props: {
        curve: ICurve;
        descendant?: IRenderObject | undefined;
        duration: IDuration;
        rect?: IRect | undefined;
    }) => void = undefined as any;
    private readonly _dart_getAxisDirection: () => AxisDirection =
        undefined as any;
    private readonly _dart_setAxisDirection: (value: AxisDirection) => void =
        undefined as any;
    private readonly _dart_getCrossAxisDirection: () => AxisDirection =
        undefined as any;
    private readonly _dart_setCrossAxisDirection: (
        value: AxisDirection
    ) => void = undefined as any;
    private readonly _dart_getAxis: () => Axis = undefined as any;
    private readonly _dart_getOffset: () => IViewportOffset = undefined as any;
    private readonly _dart_setOffset: (value: IViewportOffset) => void =
        undefined as any;
    private readonly _dart_getCacheExtent: () => number | undefined =
        undefined as any;
    private readonly _dart_setCacheExtent: (
        value?: number | undefined
    ) => void = undefined as any;
    private readonly _dart_getCacheExtentStyle: () => CacheExtentStyle =
        undefined as any;
    private readonly _dart_setCacheExtentStyle: (
        value: CacheExtentStyle
    ) => void = undefined as any;
    private readonly _dart_getClipBehavior: () => Clip = undefined as any;
    private readonly _dart_setClipBehavior: (value: Clip) => void =
        undefined as any;
    private readonly _dart_getIsRepaintBoundary: () => boolean =
        undefined as any;
    private readonly _dart_debugValidateChild: (
        child: IRenderObject
    ) => boolean = undefined as any;
    private readonly _dart_insert: (
        child: IRenderSliver,
        props?: { after?: IRenderSliver | undefined }
    ) => void = undefined as any;
    private readonly _dart_add: (child: IRenderSliver) => void =
        undefined as any;
    private readonly _dart_addAll: (
        children?: IList<IRenderSliver> | undefined
    ) => void = undefined as any;
    private readonly _dart_remove: (child: IRenderSliver) => void =
        undefined as any;
    private readonly _dart_removeAll: () => void = undefined as any;
    private readonly _dart_move: (
        child: IRenderSliver,
        props?: { after?: IRenderSliver | undefined }
    ) => void = undefined as any;
    private readonly _dart_redepthChildren: () => void = undefined as any;
    private readonly _dart_visitChildren: (
        visitor: (child: IRenderObject) => void
    ) => void = undefined as any;
    private readonly _dart_childBefore: (
        child: IRenderSliver
    ) => IRenderSliver | undefined = undefined as any;
    private readonly _dart_childAfter: (
        child: IRenderSliver
    ) => IRenderSliver | undefined = undefined as any;
    private readonly _dart_getChildCount: () => number = undefined as any;
    private readonly _dart_getFirstChild: () => IRenderSliver | undefined =
        undefined as any;
    private readonly _dart_getLastChild: () => IRenderSliver | undefined =
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
    private readonly _dart_computeDistanceToActualBaseline: (
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
    private readonly _dart_hitTestSelf: (position: IOffset) => boolean =
        undefined as any;
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
    private readonly _dart_markNeedsPaint: () => void = undefined as any;
    private readonly _dart_scheduleInitialPaint: (
        rootLayer: IContainerLayer
    ) => void = undefined as any;
    private readonly _dart_replaceRootLayer: (rootLayer: IOffsetLayer) => void =
        undefined as any;
    private readonly _dart_getTransformTo: (
        ancestor?: IRenderObject | undefined
    ) => IMatrix4 = undefined as any;
    private readonly _dart_scheduleInitialSemantics: () => void =
        undefined as any;
    private readonly _dart_sendSemanticsEvent: (
        semanticsEvent: ISemanticsEvent
    ) => void = undefined as any;
    private readonly _dart_clearSemantics: () => void = undefined as any;
    private readonly _dart_markNeedsSemanticsUpdate: () => void =
        undefined as any;
    private readonly _dart_assembleSemanticsNode: (
        node: ISemanticsNode,
        config: ISemanticsConfiguration,
        children: IIterable<ISemanticsNode>
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
    private readonly _dart_describeForError: (
        name: string,
        props: { style: DiagnosticsTreeStyle }
    ) => IDiagnosticsNode = undefined as any;
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
    private readonly _dart_getDebugDoingThisPaint: () => boolean =
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
    public getAnchor(): number {
        return this._dart_getAnchor();
    }
    public setAnchor(value: number): void {
        return this._dart_setAnchor(value);
    }
    public getCenter(): IRenderSliver | undefined {
        return this._dart_getCenter();
    }
    public setCenter(value?: IRenderSliver | undefined): void {
        return this._dart_setCenter(value);
    }
    public getSizedByParent(): boolean {
        return this._dart_getSizedByParent();
    }
    public computeDryLayout(constraints: IBoxConstraints): ISize {
        return this._dart_computeDryLayout(constraints);
    }
    public performLayout(): void {
        return this._dart_performLayout();
    }
    public getHasVisualOverflow(): boolean {
        return this._dart_getHasVisualOverflow();
    }
    public updateOutOfBandData(
        growthDirection: GrowthDirection,
        childLayoutGeometry: ISliverGeometry
    ): void {
        return this._dart_updateOutOfBandData(
            growthDirection,
            childLayoutGeometry
        );
    }
    public updateChildLayoutOffset(
        child: IRenderSliver,
        layoutOffset: number,
        growthDirection: GrowthDirection
    ): void {
        return this._dart_updateChildLayoutOffset(
            child,
            layoutOffset,
            growthDirection
        );
    }
    public paintOffsetOf(child: IRenderSliver): IOffset {
        return this._dart_paintOffsetOf(child);
    }
    public scrollOffsetOf(
        child: IRenderSliver,
        scrollOffsetWithinChild: number
    ): number {
        return this._dart_scrollOffsetOf(child, scrollOffsetWithinChild);
    }
    public maxScrollObstructionExtentBefore(child: IRenderSliver): number {
        return this._dart_maxScrollObstructionExtentBefore(child);
    }
    public applyPaintTransform(child: any, transform: IMatrix4): void {
        return this._dart_applyPaintTransform(child, transform);
    }
    public computeChildMainAxisPosition(
        child: IRenderSliver,
        parentMainAxisPosition: number
    ): number {
        return this._dart_computeChildMainAxisPosition(
            child,
            parentMainAxisPosition
        );
    }
    public getIndexOfFirstChild(): number {
        return this._dart_getIndexOfFirstChild();
    }
    public labelForChild(index: number): string {
        return this._dart_labelForChild(index);
    }
    public getChildrenInPaintOrder(): IIterable<IRenderSliver> {
        return this._dart_getChildrenInPaintOrder();
    }
    public getChildrenInHitTestOrder(): IIterable<IRenderSliver> {
        return this._dart_getChildrenInHitTestOrder();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public describeSemanticsConfiguration(
        config: ISemanticsConfiguration
    ): void {
        return this._dart_describeSemanticsConfiguration(config);
    }
    public visitChildrenForSemantics(
        visitor: (child: IRenderObject) => void
    ): void {
        return this._dart_visitChildrenForSemantics(visitor);
    }
    public attach(owner: any): void {
        return this._dart_attach(owner);
    }
    public detach(): void {
        return this._dart_detach();
    }
    public debugThrowIfNotCheckingIntrinsics(): boolean {
        return this._dart_debugThrowIfNotCheckingIntrinsics();
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
    public layoutChildSequence(props: {
        advance: (child: IRenderSliver) => IRenderSliver | undefined;
        cacheOrigin: number;
        child?: IRenderSliver | undefined;
        crossAxisExtent: number;
        growthDirection: GrowthDirection;
        layoutOffset: number;
        mainAxisExtent: number;
        overlap: number;
        remainingCacheExtent: number;
        remainingPaintExtent: number;
        scrollOffset: number;
    }): number {
        return this._dart_layoutChildSequence(props);
    }
    public describeApproximatePaintClip(child: any): IRect {
        return this._dart_describeApproximatePaintClip(child);
    }
    public describeSemanticsClip(child: any): IRect {
        return this._dart_describeSemanticsClip(child);
    }
    public paint(context: IPaintingContext, offset: IOffset): void {
        return this._dart_paint(context, offset);
    }
    public debugPaintSize(context: IPaintingContext, offset: IOffset): void {
        return this._dart_debugPaintSize(context, offset);
    }
    public hitTestChildren(
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ): boolean {
        return this._dart_hitTestChildren(result, props);
    }
    public getOffsetToReveal(
        target: IRenderObject,
        alignment: number,
        props?: { rect?: IRect | undefined }
    ): IRevealedOffset {
        return this._dart_getOffsetToReveal(target, alignment, props);
    }
    public computeAbsolutePaintOffset(
        child: IRenderSliver,
        layoutOffset: number,
        growthDirection: GrowthDirection
    ): IOffset {
        return this._dart_computeAbsolutePaintOffset(
            child,
            layoutOffset,
            growthDirection
        );
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
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
    public getAxisDirection(): AxisDirection {
        return this._dart_getAxisDirection();
    }
    public setAxisDirection(value: AxisDirection): void {
        return this._dart_setAxisDirection(value);
    }
    public getCrossAxisDirection(): AxisDirection {
        return this._dart_getCrossAxisDirection();
    }
    public setCrossAxisDirection(value: AxisDirection): void {
        return this._dart_setCrossAxisDirection(value);
    }
    public getAxis(): Axis {
        return this._dart_getAxis();
    }
    public getOffset(): IViewportOffset {
        return this._dart_getOffset();
    }
    public setOffset(value: IViewportOffset): void {
        return this._dart_setOffset(value);
    }
    public getCacheExtent(): number | undefined {
        return this._dart_getCacheExtent();
    }
    public setCacheExtent(value?: number | undefined): void {
        return this._dart_setCacheExtent(value);
    }
    public getCacheExtentStyle(): CacheExtentStyle {
        return this._dart_getCacheExtentStyle();
    }
    public setCacheExtentStyle(value: CacheExtentStyle): void {
        return this._dart_setCacheExtentStyle(value);
    }
    public getClipBehavior(): Clip {
        return this._dart_getClipBehavior();
    }
    public setClipBehavior(value: Clip): void {
        return this._dart_setClipBehavior(value);
    }
    public getIsRepaintBoundary(): boolean {
        return this._dart_getIsRepaintBoundary();
    }
    public debugValidateChild(child: IRenderObject): boolean {
        return this._dart_debugValidateChild(child);
    }
    public insert(
        child: IRenderSliver,
        props?: { after?: IRenderSliver | undefined }
    ): void {
        return this._dart_insert(child, props);
    }
    public add(child: IRenderSliver): void {
        return this._dart_add(child);
    }
    public addAll(children?: IList<IRenderSliver> | undefined): void {
        return this._dart_addAll(children);
    }
    public remove(child: IRenderSliver): void {
        return this._dart_remove(child);
    }
    public removeAll(): void {
        return this._dart_removeAll();
    }
    public move(
        child: IRenderSliver,
        props?: { after?: IRenderSliver | undefined }
    ): void {
        return this._dart_move(child, props);
    }
    public redepthChildren(): void {
        return this._dart_redepthChildren();
    }
    public visitChildren(visitor: (child: IRenderObject) => void): void {
        return this._dart_visitChildren(visitor);
    }
    public childBefore(child: IRenderSliver): IRenderSliver | undefined {
        return this._dart_childBefore(child);
    }
    public childAfter(child: IRenderSliver): IRenderSliver | undefined {
        return this._dart_childAfter(child);
    }
    public getChildCount(): number {
        return this._dart_getChildCount();
    }
    public getFirstChild(): IRenderSliver | undefined {
        return this._dart_getFirstChild();
    }
    public getLastChild(): IRenderSliver | undefined {
        return this._dart_getLastChild();
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
    public computeDistanceToActualBaseline(
        baseline: TextBaseline
    ): number | undefined {
        return this._dart_computeDistanceToActualBaseline(baseline);
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
    public hitTestSelf(position: IOffset): boolean {
        return this._dart_hitTestSelf(position);
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
    public assembleSemanticsNode(
        node: ISemanticsNode,
        config: ISemanticsConfiguration,
        children: IIterable<ISemanticsNode>
    ): void {
        return this._dart_assembleSemanticsNode(node, config, children);
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
    public describeForError(
        name: string,
        props: { style?: DiagnosticsTreeStyle }
    ): IDiagnosticsNode {
        return this._dart_describeForError(name, {
            ...describeForErrorDefaultProps,
            ...props,
        });
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
    public getDebugDoingThisPaint(): boolean {
        return this._dart_getDebugDoingThisPaint();
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
const renderViewportDefaultProps = {
    anchor: 0.0,
    axisDirection: AxisDirection.down,
    cacheExtentStyle: CacheExtentStyle.pixel,
    clipBehavior: Clip.hardEdge,
};
const showOnScreenDefaultProps = {
    curve: Curves.ease,
    duration: Duration.zero,
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
const describeForErrorDefaultProps = {
    style: DiagnosticsTreeStyle.shallow,
};
