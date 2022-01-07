import { IDuration } from "../../dart/core/duration";
import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { IMatrix4 } from "../../vector_math/matrix4";
import { ICurve } from "../animation/curve";
import { IDiagnosticableTreeMixin } from "../foundation/diagnosticableTreeMixin";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IHitTestEntry } from "../gestures/hitTestEntry";
import { IHitTestTarget } from "../gestures/hitTestTarget";
import { IPointerEvent } from "../gestures/pointerEvent";
import { ISemanticsConfiguration } from "../semantics/semanticsConfiguration";
import { ISemanticsEvent } from "../semantics/semanticsEvent";
import { ISemanticsNode } from "../semantics/semanticsNode";
import { IBoxHitTestResult } from "./boxHitTestResult";
import { IConstraints } from "./constraints";
import { IContainerLayer } from "./containerLayer";
import { IOffsetLayer } from "./offsetLayer";
import { IPaintingContext } from "./paintingContext";
import { IParentData } from "./parentData";
import { IPipelineOwner } from "./pipelineOwner";
import { IRenderBox } from "./renderBox";
import { IRenderObject } from "./renderObject";
import { IRenderSliver } from "./renderSliver";
import { ISliverConstraints } from "./sliverConstraints";
import { ISliverGeometry } from "./sliverGeometry";
import { ISliverHitTestEntry } from "./sliverHitTestEntry";
import { ISliverHitTestResult } from "./sliverHitTestResult";
declare const flutter: {
    rendering: {
        renderSliverHelpers: (
            this: void,
            renderSliverHelpers: IRenderSliverHelpers
        ) => IRenderSliverHelpers;
    };
};
export interface IRenderSliverHelpers {
    hitTestBoxChild: (
        result: IBoxHitTestResult,
        child: IRenderBox,
        props: { crossAxisPosition: number; mainAxisPosition: number }
    ) => boolean;
    applyPaintTransformForBoxChild: (
        child: IRenderBox,
        transform: IMatrix4
    ) => void;
    debugResetSize: () => void;
    debugAssertDoesMeetConstraints: () => void;
    performResize: () => void;
    hitTest: (
        result: ISliverHitTestResult,
        props: { crossAxisPosition: number; mainAxisPosition: number }
    ) => boolean;
    hitTestSelf: (props: {
        crossAxisPosition: number;
        mainAxisPosition: number;
    }) => boolean;
    hitTestChildren: (
        result: ISliverHitTestResult,
        props: { crossAxisPosition: number; mainAxisPosition: number }
    ) => boolean;
    calculatePaintOffset: (
        constraints: ISliverConstraints,
        props: { from: number; to: number }
    ) => number;
    calculateCacheOffset: (
        constraints: ISliverConstraints,
        props: { from: number; to: number }
    ) => number;
    childMainAxisPosition: (child: unknown) => number;
    childCrossAxisPosition: (child: unknown) => number;
    childScrollOffset: (child: unknown) => number | undefined;
    applyPaintTransform: (child: unknown, transform: IMatrix4) => void;
    getAbsoluteSizeRelativeToOrigin: () => ISize;
    getAbsoluteSize: () => ISize;
    debugPaint: (context: IPaintingContext, offset: IOffset) => void;
    handleEvent: (event: IPointerEvent, entry: unknown) => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getConstraints: () => ISliverConstraints;
    getGeometry: () => ISliverGeometry | undefined;
    setGeometry: (value?: ISliverGeometry | undefined) => void;
    getSemanticBounds: () => IRect;
    getPaintBounds: () => IRect;
    getCenterOffsetAdjustment: () => number;
}
export class RenderSliverHelpers implements Omit<IRenderObject>, IRenderSliver {
    public constructor() {
        flutter.rendering.renderSliverHelpers(this);
    }
    private readonly _dart_hitTestBoxChild: (
        result: IBoxHitTestResult,
        child: IRenderBox,
        props: { crossAxisPosition: number; mainAxisPosition: number }
    ) => boolean = undefined as any;
    private readonly _dart_applyPaintTransformForBoxChild: (
        child: IRenderBox,
        transform: IMatrix4
    ) => void = undefined as any;
    private readonly _dart_debugResetSize: () => void = undefined as any;
    private readonly _dart_debugAssertDoesMeetConstraints: () => void =
        undefined as any;
    private readonly _dart_performResize: () => void = undefined as any;
    private readonly _dart_hitTest: (
        result: ISliverHitTestResult,
        props: { crossAxisPosition: number; mainAxisPosition: number }
    ) => boolean = undefined as any;
    private readonly _dart_hitTestSelf: (props: {
        crossAxisPosition: number;
        mainAxisPosition: number;
    }) => boolean = undefined as any;
    private readonly _dart_hitTestChildren: (
        result: ISliverHitTestResult,
        props: { crossAxisPosition: number; mainAxisPosition: number }
    ) => boolean = undefined as any;
    private readonly _dart_calculatePaintOffset: (
        constraints: ISliverConstraints,
        props: { from: number; to: number }
    ) => number = undefined as any;
    private readonly _dart_calculateCacheOffset: (
        constraints: ISliverConstraints,
        props: { from: number; to: number }
    ) => number = undefined as any;
    private readonly _dart_childMainAxisPosition: (child: any) => number =
        undefined as any;
    private readonly _dart_childCrossAxisPosition: (child: any) => number =
        undefined as any;
    private readonly _dart_childScrollOffset: (
        child: any
    ) => number | undefined = undefined as any;
    private readonly _dart_applyPaintTransform: (
        child: any,
        transform: IMatrix4
    ) => void = undefined as any;
    private readonly _dart_getAbsoluteSizeRelativeToOrigin: () => ISize =
        undefined as any;
    private readonly _dart_getAbsoluteSize: () => ISize = undefined as any;
    private readonly _dart_debugPaint: (
        context: IPaintingContext,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_handleEvent: (
        event: IPointerEvent,
        entry: any
    ) => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getConstraints: () => ISliverConstraints =
        undefined as any;
    private readonly _dart_getGeometry: () => ISliverGeometry | undefined =
        undefined as any;
    private readonly _dart_setGeometry: (
        value?: ISliverGeometry | undefined
    ) => void = undefined as any;
    private readonly _dart_getSemanticBounds: () => IRect = undefined as any;
    private readonly _dart_getPaintBounds: () => IRect = undefined as any;
    private readonly _dart_getCenterOffsetAdjustment: () => number =
        undefined as any;
    public hitTestBoxChild(
        result: IBoxHitTestResult,
        child: IRenderBox,
        props: { crossAxisPosition: number; mainAxisPosition: number }
    ): boolean {
        return this._dart_hitTestBoxChild(result, child, props);
    }
    public applyPaintTransformForBoxChild(
        child: IRenderBox,
        transform: IMatrix4
    ): void {
        return this._dart_applyPaintTransformForBoxChild(child, transform);
    }
    public debugResetSize(): void {
        return this._dart_debugResetSize();
    }
    public debugAssertDoesMeetConstraints(): void {
        return this._dart_debugAssertDoesMeetConstraints();
    }
    public performResize(): void {
        return this._dart_performResize();
    }
    public hitTest(
        result: ISliverHitTestResult,
        props: { crossAxisPosition: number; mainAxisPosition: number }
    ): boolean {
        return this._dart_hitTest(result, props);
    }
    public hitTestSelf(props: {
        crossAxisPosition: number;
        mainAxisPosition: number;
    }): boolean {
        return this._dart_hitTestSelf(props);
    }
    public hitTestChildren(
        result: ISliverHitTestResult,
        props: { crossAxisPosition: number; mainAxisPosition: number }
    ): boolean {
        return this._dart_hitTestChildren(result, props);
    }
    public calculatePaintOffset(
        constraints: ISliverConstraints,
        props: { from: number; to: number }
    ): number {
        return this._dart_calculatePaintOffset(constraints, props);
    }
    public calculateCacheOffset(
        constraints: ISliverConstraints,
        props: { from: number; to: number }
    ): number {
        return this._dart_calculateCacheOffset(constraints, props);
    }
    public childMainAxisPosition(child: any): number {
        return this._dart_childMainAxisPosition(child);
    }
    public childCrossAxisPosition(child: any): number {
        return this._dart_childCrossAxisPosition(child);
    }
    public childScrollOffset(child: any): number | undefined {
        return this._dart_childScrollOffset(child);
    }
    public applyPaintTransform(child: any, transform: IMatrix4): void {
        return this._dart_applyPaintTransform(child, transform);
    }
    public getAbsoluteSizeRelativeToOrigin(): ISize {
        return this._dart_getAbsoluteSizeRelativeToOrigin();
    }
    public getAbsoluteSize(): ISize {
        return this._dart_getAbsoluteSize();
    }
    public debugPaint(context: IPaintingContext, offset: IOffset): void {
        return this._dart_debugPaint(context, offset);
    }
    public handleEvent(event: IPointerEvent, entry: any): void {
        return this._dart_handleEvent(event, entry);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getConstraints(): ISliverConstraints {
        return this._dart_getConstraints();
    }
    public getGeometry(): ISliverGeometry | undefined {
        return this._dart_getGeometry();
    }
    public setGeometry(value?: ISliverGeometry | undefined): void {
        return this._dart_setGeometry(value);
    }
    public getSemanticBounds(): IRect {
        return this._dart_getSemanticBounds();
    }
    public getPaintBounds(): IRect {
        return this._dart_getPaintBounds();
    }
    public getCenterOffsetAdjustment(): number {
        return this._dart_getCenterOffsetAdjustment();
    }
}
