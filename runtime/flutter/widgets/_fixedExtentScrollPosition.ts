import { IFuture } from "../../dart/async/future";
import { Duration, IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { ICurve } from "../animation/curve";
import { Curves } from "../animation/curves";
import { IListenable } from "../foundation/listenable";
import { IValueNotifier } from "../foundation/valueNotifier";
import { IDrag } from "../gestures/drag";
import { IDragStartDetails } from "../gestures/dragStartDetails";
import { Axis } from "../painting/axis";
import { AxisDirection } from "../painting/axisDirection";
import { IRenderObject } from "../rendering/renderObject";
import { ScrollDirection } from "../rendering/scrollDirection";
import { IBuildContext } from "./buildContext";
import { IFixedExtentMetrics } from "./fixedExtentMetrics";
import { IScrollActivity } from "./scrollActivity";
import { IScrollActivityDelegate } from "./scrollActivityDelegate";
import { IScrollContext } from "./scrollContext";
import { IScrollHoldController } from "./scrollHoldController";
import { IScrollMetrics } from "./scrollMetrics";
import { IScrollPhysics } from "./scrollPhysics";
import { IScrollPosition } from "./scrollPosition";
import { ScrollPositionAlignmentPolicy } from "./scrollPositionAlignmentPolicy";
import { IScrollPositionWithSingleContext } from "./scrollPositionWithSingleContext";
declare const flutter: {
    widgets: {
        _fixedExtentScrollPosition: (
            this: void,
            _fixedExtentScrollPosition: I_FixedExtentScrollPosition,
            props: {
                debugLabel?: string | undefined;
                keepScrollOffset: boolean;
                oldPosition?: IScrollPosition | undefined;
                context: IScrollContext;
                initialItem: number;
                physics: IScrollPhysics;
            }
        ) => I_FixedExtentScrollPosition;
    };
};
export interface I_FixedExtentScrollPosition {
    physics: IScrollPhysics;
    context: IScrollContext;
    keepScrollOffset: boolean;
    debugLabel: string | undefined;
    isScrollingNotifier: IValueNotifier<boolean>;
    itemIndex: number;
    getItemExtent: () => number;
    getItemIndex: () => number;
    copyWith: (props?: {
        axisDirection?: AxisDirection | undefined;
        itemIndex?: number | undefined;
        maxScrollExtent?: number | undefined;
        minScrollExtent?: number | undefined;
        pixels?: number | undefined;
        viewportDimension?: number | undefined;
    }) => IFixedExtentMetrics;
    setPixels: (newPixels: number) => number;
    absorb: (other: IScrollPosition) => void;
    applyNewDimensions: () => void;
    beginActivity: (newActivity?: IScrollActivity | undefined) => void;
    applyUserOffset: (delta: number) => void;
    goIdle: () => void;
    goBallistic: (velocity: number) => void;
    animateTo: (
        to: number,
        props: { curve: ICurve; duration: IDuration }
    ) => IFuture<void>;
    jumpTo: (value: number) => void;
    pointerScroll: (delta: number) => void;
    jumpToWithoutSettling: (value: number) => void;
    hold: (holdCancelCallback: () => void) => IScrollHoldController;
    drag: (details: IDragStartDetails, dragCancelCallback: () => void) => IDrag;
    dispose: () => void;
    debugFillDescription: (description: IList<string>) => void;
    getAxisDirection: () => AxisDirection;
    getUserScrollDirection: () => ScrollDirection;
    correctPixels: (value: number) => void;
    correctBy: (correction: number) => void;
    forcePixels: (value: number) => void;
    saveScrollOffset: () => void;
    restoreScrollOffset: () => void;
    restoreOffset: (offset: number, props: { initialRestore: boolean }) => void;
    saveOffset: () => void;
    applyBoundaryConditions: (value: number) => number;
    applyViewportDimension: (viewportDimension: number) => boolean;
    applyContentDimensions: (
        minScrollExtent: number,
        maxScrollExtent: number
    ) => boolean;
    correctForNewDimensions: (
        oldPosition: IScrollMetrics,
        newPosition: IScrollMetrics
    ) => boolean;
    ensureVisible: (
        object: IRenderObject,
        props: {
            alignment: number;
            alignmentPolicy: ScrollPositionAlignmentPolicy;
            curve: ICurve;
            duration: IDuration;
            targetRenderObject?: IRenderObject | undefined;
        }
    ) => IFuture<void>;
    moveTo: (
        to: number,
        props?: {
            clamp?: boolean | undefined;
            curve?: ICurve | undefined;
            duration?: IDuration | undefined;
        }
    ) => IFuture<void>;
    didStartScroll: () => void;
    didUpdateScrollPositionBy: (delta: number) => void;
    didEndScroll: () => void;
    didOverscrollBy: (value: number) => void;
    didUpdateScrollDirection: (direction: ScrollDirection) => void;
    didUpdateScrollMetrics: () => void;
    recommendDeferredLoading: (context: IBuildContext) => boolean;
    notifyListeners: () => void;
    getMinScrollExtent: () => number;
    getMaxScrollExtent: () => number;
    getHasContentDimensions: () => boolean;
    getPixels: () => number;
    getHasPixels: () => boolean;
    getViewportDimension: () => number;
    getHasViewportDimension: () => boolean;
    getHaveDimensions: () => boolean;
    getAllowImplicitScrolling: () => boolean;
    getAxis: () => Axis;
    getOutOfRange: () => boolean;
    getAtEdge: () => boolean;
    getExtentBefore: () => number;
    getExtentInside: () => number;
    getExtentAfter: () => number;
    toString: () => string;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    getHasListeners: () => boolean;
    getHashCode: () => number;
}
export class _FixedExtentScrollPosition
    implements
        IScrollPositionWithSingleContext,
        IScrollMetrics,
        IFixedExtentMetrics,
        IScrollActivityDelegate,
        IListenable
{
    public readonly physics: IScrollPhysics = undefined as any;
    public readonly context: IScrollContext = undefined as any;
    public readonly keepScrollOffset: boolean = undefined as any;
    public readonly debugLabel: string | undefined = undefined as any;
    public readonly isScrollingNotifier: IValueNotifier<boolean> =
        undefined as any;
    public readonly itemIndex: number = undefined as any;
    public constructor(props: {
        debugLabel?: string | undefined;
        keepScrollOffset?: boolean;
        oldPosition?: IScrollPosition | undefined;
        context: IScrollContext;
        initialItem: number;
        physics: IScrollPhysics;
    }) {
        flutter.widgets._fixedExtentScrollPosition(this, {
            ..._fixedExtentScrollPositionDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getItemExtent: () => number = undefined as any;
    private readonly _dart_getItemIndex: () => number = undefined as any;
    private readonly _dart_copyWith: (props?: {
        axisDirection?: AxisDirection | undefined;
        itemIndex?: number | undefined;
        maxScrollExtent?: number | undefined;
        minScrollExtent?: number | undefined;
        pixels?: number | undefined;
        viewportDimension?: number | undefined;
    }) => IFixedExtentMetrics = undefined as any;
    private readonly _dart_setPixels: (newPixels: number) => number =
        undefined as any;
    private readonly _dart_absorb: (other: IScrollPosition) => void =
        undefined as any;
    private readonly _dart_applyNewDimensions: () => void = undefined as any;
    private readonly _dart_beginActivity: (
        newActivity?: IScrollActivity | undefined
    ) => void = undefined as any;
    private readonly _dart_applyUserOffset: (delta: number) => void =
        undefined as any;
    private readonly _dart_goIdle: () => void = undefined as any;
    private readonly _dart_goBallistic: (velocity: number) => void =
        undefined as any;
    private readonly _dart_updateUserScrollDirection: (
        value: ScrollDirection
    ) => void = undefined as any;
    private readonly _dart_animateTo: (
        to: number,
        props: { curve: ICurve; duration: IDuration }
    ) => IFuture<void> = undefined as any;
    private readonly _dart_jumpTo: (value: number) => void = undefined as any;
    private readonly _dart_pointerScroll: (delta: number) => void =
        undefined as any;
    private readonly _dart_jumpToWithoutSettling: (value: number) => void =
        undefined as any;
    private readonly _dart_hold: (
        holdCancelCallback: () => void
    ) => IScrollHoldController = undefined as any;
    private readonly _dart_drag: (
        details: IDragStartDetails,
        dragCancelCallback: () => void
    ) => IDrag = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_debugFillDescription: (
        description: IList<string>
    ) => void = undefined as any;
    private readonly _dart_getAxisDirection: () => AxisDirection =
        undefined as any;
    private readonly _dart_getUserScrollDirection: () => ScrollDirection =
        undefined as any;
    private readonly _dart_correctPixels: (value: number) => void =
        undefined as any;
    private readonly _dart_correctBy: (correction: number) => void =
        undefined as any;
    private readonly _dart_forcePixels: (value: number) => void =
        undefined as any;
    private readonly _dart_saveScrollOffset: () => void = undefined as any;
    private readonly _dart_restoreScrollOffset: () => void = undefined as any;
    private readonly _dart_restoreOffset: (
        offset: number,
        props: { initialRestore: boolean }
    ) => void = undefined as any;
    private readonly _dart_saveOffset: () => void = undefined as any;
    private readonly _dart_applyBoundaryConditions: (value: number) => number =
        undefined as any;
    private readonly _dart_applyViewportDimension: (
        viewportDimension: number
    ) => boolean = undefined as any;
    private readonly _dart_applyContentDimensions: (
        minScrollExtent: number,
        maxScrollExtent: number
    ) => boolean = undefined as any;
    private readonly _dart_correctForNewDimensions: (
        oldPosition: IScrollMetrics,
        newPosition: IScrollMetrics
    ) => boolean = undefined as any;
    private readonly _dart_ensureVisible: (
        object: IRenderObject,
        props: {
            alignment: number;
            alignmentPolicy: ScrollPositionAlignmentPolicy;
            curve: ICurve;
            duration: IDuration;
            targetRenderObject?: IRenderObject | undefined;
        }
    ) => IFuture<void> = undefined as any;
    private readonly _dart_moveTo: (
        to: number,
        props?: {
            clamp?: boolean | undefined;
            curve?: ICurve | undefined;
            duration?: IDuration | undefined;
        }
    ) => IFuture<void> = undefined as any;
    private readonly _dart_didStartScroll: () => void = undefined as any;
    private readonly _dart_didUpdateScrollPositionBy: (delta: number) => void =
        undefined as any;
    private readonly _dart_didEndScroll: () => void = undefined as any;
    private readonly _dart_didOverscrollBy: (value: number) => void =
        undefined as any;
    private readonly _dart_didUpdateScrollDirection: (
        direction: ScrollDirection
    ) => void = undefined as any;
    private readonly _dart_didUpdateScrollMetrics: () => void =
        undefined as any;
    private readonly _dart_recommendDeferredLoading: (
        context: IBuildContext
    ) => boolean = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getMinScrollExtent: () => number = undefined as any;
    private readonly _dart_getMaxScrollExtent: () => number = undefined as any;
    private readonly _dart_getHasContentDimensions: () => boolean =
        undefined as any;
    private readonly _dart_getPixels: () => number = undefined as any;
    private readonly _dart_getHasPixels: () => boolean = undefined as any;
    private readonly _dart_getViewportDimension: () => number =
        undefined as any;
    private readonly _dart_getHasViewportDimension: () => boolean =
        undefined as any;
    private readonly _dart_getHaveDimensions: () => boolean = undefined as any;
    private readonly _dart_getAllowImplicitScrolling: () => boolean =
        undefined as any;
    private readonly _dart_getActivity: () => IScrollActivity | undefined =
        undefined as any;
    private readonly _dart_getAxis: () => Axis = undefined as any;
    private readonly _dart_getOutOfRange: () => boolean = undefined as any;
    private readonly _dart_getAtEdge: () => boolean = undefined as any;
    private readonly _dart_getExtentBefore: () => number = undefined as any;
    private readonly _dart_getExtentInside: () => number = undefined as any;
    private readonly _dart_getExtentAfter: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getItemExtent(): number {
        return this._dart_getItemExtent();
    }
    public getItemIndex(): number {
        return this._dart_getItemIndex();
    }
    public copyWith(props?: {
        axisDirection?: AxisDirection | undefined;
        itemIndex?: number | undefined;
        maxScrollExtent?: number | undefined;
        minScrollExtent?: number | undefined;
        pixels?: number | undefined;
        viewportDimension?: number | undefined;
    }): IFixedExtentMetrics {
        return this._dart_copyWith(props);
    }
    public setPixels(newPixels: number): number {
        return this._dart_setPixels(newPixels);
    }
    public absorb(other: IScrollPosition): void {
        return this._dart_absorb(other);
    }
    public applyNewDimensions(): void {
        return this._dart_applyNewDimensions();
    }
    public beginActivity(newActivity?: IScrollActivity | undefined): void {
        return this._dart_beginActivity(newActivity);
    }
    public applyUserOffset(delta: number): void {
        return this._dart_applyUserOffset(delta);
    }
    public goIdle(): void {
        return this._dart_goIdle();
    }
    public goBallistic(velocity: number): void {
        return this._dart_goBallistic(velocity);
    }
    public updateUserScrollDirection(value: ScrollDirection): void {
        return this._dart_updateUserScrollDirection(value);
    }
    public animateTo(
        to: number,
        props: { curve: ICurve; duration: IDuration }
    ): IFuture<void> {
        return this._dart_animateTo(to, props);
    }
    public jumpTo(value: number): void {
        return this._dart_jumpTo(value);
    }
    public pointerScroll(delta: number): void {
        return this._dart_pointerScroll(delta);
    }
    public jumpToWithoutSettling(value: number): void {
        return this._dart_jumpToWithoutSettling(value);
    }
    public hold(holdCancelCallback: () => void): IScrollHoldController {
        return this._dart_hold(holdCancelCallback);
    }
    public drag(
        details: IDragStartDetails,
        dragCancelCallback: () => void
    ): IDrag {
        return this._dart_drag(details, dragCancelCallback);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public debugFillDescription(description: IList<string>): void {
        return this._dart_debugFillDescription(description);
    }
    public getAxisDirection(): AxisDirection {
        return this._dart_getAxisDirection();
    }
    public getUserScrollDirection(): ScrollDirection {
        return this._dart_getUserScrollDirection();
    }
    public correctPixels(value: number): void {
        return this._dart_correctPixels(value);
    }
    public correctBy(correction: number): void {
        return this._dart_correctBy(correction);
    }
    public forcePixels(value: number): void {
        return this._dart_forcePixels(value);
    }
    public saveScrollOffset(): void {
        return this._dart_saveScrollOffset();
    }
    public restoreScrollOffset(): void {
        return this._dart_restoreScrollOffset();
    }
    public restoreOffset(
        offset: number,
        props: { initialRestore?: boolean }
    ): void {
        return this._dart_restoreOffset(offset, {
            ...restoreOffsetDefaultProps,
            ...props,
        });
    }
    public saveOffset(): void {
        return this._dart_saveOffset();
    }
    public applyBoundaryConditions(value: number): number {
        return this._dart_applyBoundaryConditions(value);
    }
    public applyViewportDimension(viewportDimension: number): boolean {
        return this._dart_applyViewportDimension(viewportDimension);
    }
    public applyContentDimensions(
        minScrollExtent: number,
        maxScrollExtent: number
    ): boolean {
        return this._dart_applyContentDimensions(
            minScrollExtent,
            maxScrollExtent
        );
    }
    public correctForNewDimensions(
        oldPosition: IScrollMetrics,
        newPosition: IScrollMetrics
    ): boolean {
        return this._dart_correctForNewDimensions(oldPosition, newPosition);
    }
    public ensureVisible(
        object: IRenderObject,
        props: {
            alignment?: number;
            alignmentPolicy?: ScrollPositionAlignmentPolicy;
            curve?: ICurve;
            duration?: IDuration;
            targetRenderObject?: IRenderObject | undefined;
        }
    ): IFuture<void> {
        return this._dart_ensureVisible(object, {
            ...ensureVisibleDefaultProps,
            ...props,
        });
    }
    public moveTo(
        to: number,
        props?: {
            clamp?: boolean | undefined;
            curve?: ICurve | undefined;
            duration?: IDuration | undefined;
        }
    ): IFuture<void> {
        return this._dart_moveTo(to, {
            ...moveToDefaultProps,
            ...props,
        });
    }
    public didStartScroll(): void {
        return this._dart_didStartScroll();
    }
    public didUpdateScrollPositionBy(delta: number): void {
        return this._dart_didUpdateScrollPositionBy(delta);
    }
    public didEndScroll(): void {
        return this._dart_didEndScroll();
    }
    public didOverscrollBy(value: number): void {
        return this._dart_didOverscrollBy(value);
    }
    public didUpdateScrollDirection(direction: ScrollDirection): void {
        return this._dart_didUpdateScrollDirection(direction);
    }
    public didUpdateScrollMetrics(): void {
        return this._dart_didUpdateScrollMetrics();
    }
    public recommendDeferredLoading(context: IBuildContext): boolean {
        return this._dart_recommendDeferredLoading(context);
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
    }
    public getMinScrollExtent(): number {
        return this._dart_getMinScrollExtent();
    }
    public getMaxScrollExtent(): number {
        return this._dart_getMaxScrollExtent();
    }
    public getHasContentDimensions(): boolean {
        return this._dart_getHasContentDimensions();
    }
    public getPixels(): number {
        return this._dart_getPixels();
    }
    public getHasPixels(): boolean {
        return this._dart_getHasPixels();
    }
    public getViewportDimension(): number {
        return this._dart_getViewportDimension();
    }
    public getHasViewportDimension(): boolean {
        return this._dart_getHasViewportDimension();
    }
    public getHaveDimensions(): boolean {
        return this._dart_getHaveDimensions();
    }
    public getAllowImplicitScrolling(): boolean {
        return this._dart_getAllowImplicitScrolling();
    }
    public getActivity(): IScrollActivity | undefined {
        return this._dart_getActivity();
    }
    public getAxis(): Axis {
        return this._dart_getAxis();
    }
    public getOutOfRange(): boolean {
        return this._dart_getOutOfRange();
    }
    public getAtEdge(): boolean {
        return this._dart_getAtEdge();
    }
    public getExtentBefore(): number {
        return this._dart_getExtentBefore();
    }
    public getExtentInside(): number {
        return this._dart_getExtentInside();
    }
    public getExtentAfter(): number {
        return this._dart_getExtentAfter();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const _fixedExtentScrollPositionDefaultProps = {
    keepScrollOffset: true,
};
const restoreOffsetDefaultProps = {
    initialRestore: false,
};
const ensureVisibleDefaultProps = {
    alignment: 0.0,
    alignmentPolicy: ScrollPositionAlignmentPolicy.explicit,
    curve: Curves.ease,
    duration: Duration.zero,
};
const moveToDefaultProps = {
    clamp: true,
};
