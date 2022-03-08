import { Duration, IDuration } from "../../dart/core/duration";
import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { TextBaseline } from "../../dart/ui/textBaseline";
import { TextDirection } from "../../dart/ui/textDirection";
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
import { TargetPlatform } from "../foundation/targetPlatform";
import { IHitTestEntry } from "../gestures/hitTestEntry";
import { IHitTestTarget } from "../gestures/hitTestTarget";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { IBoxHitTestEntry } from "../rendering/boxHitTestEntry";
import { IBoxHitTestResult } from "../rendering/boxHitTestResult";
import { IConstraints } from "../rendering/constraints";
import { IContainerLayer } from "../rendering/containerLayer";
import { IOffsetLayer } from "../rendering/offsetLayer";
import { IPaintingContext } from "../rendering/paintingContext";
import { IParentData } from "../rendering/parentData";
import { IPipelineOwner } from "../rendering/pipelineOwner";
import { IRelayoutWhenSystemFontsChangeMixin } from "../rendering/relayoutWhenSystemFontsChangeMixin";
import { IRenderBox } from "../rendering/renderBox";
import { IRenderObject } from "../rendering/renderObject";
import { ISemanticsConfiguration } from "../semantics/semanticsConfiguration";
import { ISemanticsEvent } from "../semantics/semanticsEvent";
import { ISemanticsNode } from "../semantics/semanticsNode";
import { I_RangeSliderState } from "./_rangeSliderState";
import { IRangeLabels } from "./rangeLabels";
import { IRangeValues } from "./rangeValues";
import { ISliderThemeData } from "./sliderThemeData";
import { IThemeData } from "./themeData";
declare const flutter: {
    material: {
        _renderRangeSlider: (
            this: void,
            _renderRangeSlider: I_RenderRangeSlider,
            props: {
                divisions?: number | undefined;
                labels?: IRangeLabels | undefined;
                onChangeEnd?: (value: IRangeValues) => void | undefined;
                onChangeStart?: (value: IRangeValues) => void | undefined;
                onChanged?: (value: IRangeValues) => void | undefined;
                platform: TargetPlatform;
                screenSize: ISize;
                semanticFormatterCallback?: (
                    value: number
                ) => string | undefined;
                sliderTheme: ISliderThemeData;
                state: I_RangeSliderState;
                textDirection: TextDirection;
                textScaleFactor: number;
                theme?: IThemeData | undefined;
                values: IRangeValues;
            }
        ) => I_RenderRangeSlider;
    };
};
export interface I_RenderRangeSlider {
    parentData: IParentData | undefined;
    debugCreator: Object | undefined;
    getIsEnabled: () => boolean;
    getIsDiscrete: () => boolean;
    getValues: () => IRangeValues;
    setValues: (newValues: IRangeValues) => void;
    getPlatform: () => TargetPlatform;
    setPlatform: (value: TargetPlatform) => void;
    getSemanticFormatterCallback: () => (value: number) => string | undefined;
    setSemanticFormatterCallback: (value?: (value: number) => string) => void;
    getDivisions: () => number | undefined;
    setDivisions: (value?: number | undefined) => void;
    getLabels: () => IRangeLabels | undefined;
    setLabels: (labels?: IRangeLabels | undefined) => void;
    getSliderTheme: () => ISliderThemeData;
    setSliderTheme: (value: ISliderThemeData) => void;
    getTheme: () => IThemeData | undefined;
    setTheme: (value?: IThemeData | undefined) => void;
    getTextScaleFactor: () => number;
    setTextScaleFactor: (value: number) => void;
    getScreenSize: () => ISize;
    setScreenSize: (value: ISize) => void;
    getOnChanged: () => (value: IRangeValues) => void | undefined;
    setOnChanged: (value?: (value: IRangeValues) => void) => void;
    getTextDirection: () => TextDirection;
    setTextDirection: (value: TextDirection) => void;
    getShowValueIndicator: () => boolean;
    systemFontsDidChange: () => void;
    attach: (owner: unknown) => void;
    detach: () => void;
    hitTestSelf: (position: IOffset) => boolean;
    handleEvent: (event: IPointerEvent, entry: unknown) => void;
    computeMinIntrinsicWidth: (height: number) => number;
    computeMaxIntrinsicWidth: (height: number) => number;
    computeMinIntrinsicHeight: (width: number) => number;
    computeMaxIntrinsicHeight: (width: number) => number;
    getSizedByParent: () => boolean;
    computeDryLayout: (constraints: IBoxConstraints) => ISize;
    paint: (context: IPaintingContext, offset: IOffset) => void;
    assembleSemanticsNode: (
        node: ISemanticsNode,
        config: ISemanticsConfiguration,
        children: IIterable<ISemanticsNode>
    ) => void;
    clearSemantics: () => void;
    describeSemanticsConfiguration: (config: ISemanticsConfiguration) => void;
    setupParentData: (child: unknown) => void;
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
    performLayout: () => void;
    hitTest: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean;
    hitTestChildren: (
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
    visitChildren: (visitor: (child: IRenderObject) => void) => void;
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
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
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
    redepthChildren: () => void;
    getDepth: () => number;
    getAttached: () => boolean;
    getParent: () => IAbstractNode | undefined;
    getHashCode: () => number;
}
export class _RenderRangeSlider
    implements
        IRenderBox,
        IRelayoutWhenSystemFontsChangeMixin,
        IDiagnosticableTreeMixin,
        IDiagnosticable,
        IHitTestTarget,
        Omit<
            IDiagnosticableTree,
            | "toStringShallow"
            | "toStringDeep"
            | "debugDescribeChildren"
            | "debugFillProperties"
            | "toStringShort"
            | "toDiagnosticsNode"
        >
{
    public static _positionAnimationDuration = new Duration({
        milliseconds: 75,
    });
    public static _minPreferredTrackWidth = 144.0;
    public static _minimumInteractionTime = new Duration({ milliseconds: 500 });
    public readonly parentData: IParentData | undefined = undefined as any;
    public readonly debugCreator: Object | undefined = undefined as any;
    public constructor(props: {
        divisions?: number | undefined;
        labels?: IRangeLabels | undefined;
        onChangeEnd?: (value: IRangeValues) => void | undefined;
        onChangeStart?: (value: IRangeValues) => void | undefined;
        onChanged?: (value: IRangeValues) => void | undefined;
        platform: TargetPlatform;
        screenSize: ISize;
        semanticFormatterCallback?: (value: number) => string | undefined;
        sliderTheme: ISliderThemeData;
        state: I_RangeSliderState;
        textDirection: TextDirection;
        textScaleFactor: number;
        theme?: IThemeData | undefined;
        values: IRangeValues;
    }) {
        flutter.material._renderRangeSlider(this, props);
    }
    private readonly _dart_getIsEnabled: () => boolean = undefined as any;
    private readonly _dart_getIsDiscrete: () => boolean = undefined as any;
    private readonly _dart_getValues: () => IRangeValues = undefined as any;
    private readonly _dart_setValues: (newValues: IRangeValues) => void =
        undefined as any;
    private readonly _dart_getPlatform: () => TargetPlatform = undefined as any;
    private readonly _dart_setPlatform: (value: TargetPlatform) => void =
        undefined as any;
    private readonly _dart_getSemanticFormatterCallback: () => (
        value: number
    ) => string | undefined = undefined as any;
    private readonly _dart_setSemanticFormatterCallback: (
        value?: (value: number) => string
    ) => void = undefined as any;
    private readonly _dart_getDivisions: () => number | undefined =
        undefined as any;
    private readonly _dart_setDivisions: (value?: number | undefined) => void =
        undefined as any;
    private readonly _dart_getLabels: () => IRangeLabels | undefined =
        undefined as any;
    private readonly _dart_setLabels: (
        labels?: IRangeLabels | undefined
    ) => void = undefined as any;
    private readonly _dart_getSliderTheme: () => ISliderThemeData =
        undefined as any;
    private readonly _dart_setSliderTheme: (value: ISliderThemeData) => void =
        undefined as any;
    private readonly _dart_getTheme: () => IThemeData | undefined =
        undefined as any;
    private readonly _dart_setTheme: (value?: IThemeData | undefined) => void =
        undefined as any;
    private readonly _dart_getTextScaleFactor: () => number = undefined as any;
    private readonly _dart_setTextScaleFactor: (value: number) => void =
        undefined as any;
    private readonly _dart_getScreenSize: () => ISize = undefined as any;
    private readonly _dart_setScreenSize: (value: ISize) => void =
        undefined as any;
    private readonly _dart_getOnChanged: () => (
        value: IRangeValues
    ) => void | undefined = undefined as any;
    private readonly _dart_setOnChanged: (
        value?: (value: IRangeValues) => void
    ) => void = undefined as any;
    private readonly _dart_getTextDirection: () => TextDirection =
        undefined as any;
    private readonly _dart_setTextDirection: (value: TextDirection) => void =
        undefined as any;
    private readonly _dart_getShowValueIndicator: () => boolean =
        undefined as any;
    private readonly _dart_systemFontsDidChange: () => void = undefined as any;
    private readonly _dart_attach: (owner: any) => void = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_hitTestSelf: (position: IOffset) => boolean =
        undefined as any;
    private readonly _dart_handleEvent: (
        event: IPointerEvent,
        entry: any
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
    private readonly _dart_getSizedByParent: () => boolean = undefined as any;
    private readonly _dart_computeDryLayout: (
        constraints: IBoxConstraints
    ) => ISize = undefined as any;
    private readonly _dart_paint: (
        context: IPaintingContext,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_assembleSemanticsNode: (
        node: ISemanticsNode,
        config: ISemanticsConfiguration,
        children: IIterable<ISemanticsNode>
    ) => void = undefined as any;
    private readonly _dart_clearSemantics: () => void = undefined as any;
    private readonly _dart_describeSemanticsConfiguration: (
        config: ISemanticsConfiguration
    ) => void = undefined as any;
    private readonly _dart_setupParentData: (child: any) => void =
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
    private readonly _dart_performLayout: () => void = undefined as any;
    private readonly _dart_hitTest: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean = undefined as any;
    private readonly _dart_hitTestChildren: (
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
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
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
    private readonly _dart_visitChildren: (
        visitor: (child: IRenderObject) => void
    ) => void = undefined as any;
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
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
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
    private readonly _dart_redepthChildren: () => void = undefined as any;
    private readonly _dart_getDepth: () => number = undefined as any;
    private readonly _dart_getAttached: () => boolean = undefined as any;
    private readonly _dart_getParent: () => IAbstractNode | undefined =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getIsEnabled(): boolean {
        return this._dart_getIsEnabled();
    }
    public getIsDiscrete(): boolean {
        return this._dart_getIsDiscrete();
    }
    public getValues(): IRangeValues {
        return this._dart_getValues();
    }
    public setValues(newValues: IRangeValues): void {
        return this._dart_setValues(newValues);
    }
    public getPlatform(): TargetPlatform {
        return this._dart_getPlatform();
    }
    public setPlatform(value: TargetPlatform): void {
        return this._dart_setPlatform(value);
    }
    public getSemanticFormatterCallback(): (
        value: number
    ) => string | undefined {
        return this._dart_getSemanticFormatterCallback();
    }
    public setSemanticFormatterCallback(
        value?: (value: number) => string
    ): void {
        return this._dart_setSemanticFormatterCallback(value);
    }
    public getDivisions(): number | undefined {
        return this._dart_getDivisions();
    }
    public setDivisions(value?: number | undefined): void {
        return this._dart_setDivisions(value);
    }
    public getLabels(): IRangeLabels | undefined {
        return this._dart_getLabels();
    }
    public setLabels(labels?: IRangeLabels | undefined): void {
        return this._dart_setLabels(labels);
    }
    public getSliderTheme(): ISliderThemeData {
        return this._dart_getSliderTheme();
    }
    public setSliderTheme(value: ISliderThemeData): void {
        return this._dart_setSliderTheme(value);
    }
    public getTheme(): IThemeData | undefined {
        return this._dart_getTheme();
    }
    public setTheme(value?: IThemeData | undefined): void {
        return this._dart_setTheme(value);
    }
    public getTextScaleFactor(): number {
        return this._dart_getTextScaleFactor();
    }
    public setTextScaleFactor(value: number): void {
        return this._dart_setTextScaleFactor(value);
    }
    public getScreenSize(): ISize {
        return this._dart_getScreenSize();
    }
    public setScreenSize(value: ISize): void {
        return this._dart_setScreenSize(value);
    }
    public getOnChanged(): (value: IRangeValues) => void | undefined {
        return this._dart_getOnChanged();
    }
    public setOnChanged(value?: (value: IRangeValues) => void): void {
        return this._dart_setOnChanged(value);
    }
    public getTextDirection(): TextDirection {
        return this._dart_getTextDirection();
    }
    public setTextDirection(value: TextDirection): void {
        return this._dart_setTextDirection(value);
    }
    public getShowValueIndicator(): boolean {
        return this._dart_getShowValueIndicator();
    }
    public systemFontsDidChange(): void {
        return this._dart_systemFontsDidChange();
    }
    public attach(owner: any): void {
        return this._dart_attach(owner);
    }
    public detach(): void {
        return this._dart_detach();
    }
    public hitTestSelf(position: IOffset): boolean {
        return this._dart_hitTestSelf(position);
    }
    public handleEvent(event: IPointerEvent, entry: any): void {
        return this._dart_handleEvent(event, entry);
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
    public getSizedByParent(): boolean {
        return this._dart_getSizedByParent();
    }
    public computeDryLayout(constraints: IBoxConstraints): ISize {
        return this._dart_computeDryLayout(constraints);
    }
    public paint(context: IPaintingContext, offset: IOffset): void {
        return this._dart_paint(context, offset);
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
    public describeSemanticsConfiguration(
        config: ISemanticsConfiguration
    ): void {
        return this._dart_describeSemanticsConfiguration(config);
    }
    public setupParentData(child: any): void {
        return this._dart_setupParentData(child);
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
    public performLayout(): void {
        return this._dart_performLayout();
    }
    public hitTest(
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ): boolean {
        return this._dart_hitTest(result, props);
    }
    public hitTestChildren(
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ): boolean {
        return this._dart_hitTestChildren(result, props);
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
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
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
    public visitChildren(visitor: (child: IRenderObject) => void): void {
        return this._dart_visitChildren(visitor);
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
    public redepthChildren(): void {
        return this._dart_redepthChildren();
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
