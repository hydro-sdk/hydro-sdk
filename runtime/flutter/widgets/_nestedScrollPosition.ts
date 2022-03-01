
import { IScrollPosition } from "./scrollPosition";
import { IScrollContext } from "./scrollContext";
import { I_NestedScrollCoordinator } from "./_nestedScrollCoordinator";
import { IScrollPhysics } from "./scrollPhysics";
import { IScrollMetrics } from "./scrollMetrics";
import { ScrollPositionAlignmentPolicy } from "./scrollPositionAlignmentPolicy";
import { ICurve } from "../animation/curve";
import { IDuration,Duration } from "../../dart/core/duration";
import { IRenderObject } from "../rendering/renderObject";
import { IFuture } from "../../dart/async/future";
import { IScrollHoldController } from "./scrollHoldController";
import { IDragStartDetails } from "../gestures/dragStartDetails";
import { IDrag } from "../gestures/drag";
import { IScrollActivity } from "./scrollActivity";
import { ScrollDirection } from "../rendering/scrollDirection";
import { IBuildContext } from "./buildContext";
import { IList } from "../../dart/core/list";
import { IValueNotifier } from "../foundation/valueNotifier";
import { IScrollActivityDelegate } from "./scrollActivityDelegate";
import { IListenable } from "../foundation/listenable";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IScrollController } from "./scrollController";
import { AxisDirection } from "../painting/axisDirection";
import { IDrivenScrollActivity } from "./drivenScrollActivity";
import { I_NestedScrollMetrics } from "./_nestedScrollMetrics";
import { _NestedBallisticScrollActivityMode } from "./_nestedBallisticScrollActivityMode";
import { ISimulation } from "../physics/simulation";
import { Axis } from "../painting/axis";
import { Curves } from "../animation/curves";
declare const flutter: {
widgets: {
_nestedScrollPosition: (this: void, _nestedScrollPosition: I_NestedScrollPosition, props : {  debugLabel? : string | undefined, initialPixels : number, oldPosition? : IScrollPosition | undefined, context : IScrollContext, coordinator : I_NestedScrollCoordinator, physics : IScrollPhysics,}) => I_NestedScrollPosition
}
};
export interface I_NestedScrollPosition


{
coordinator: I_NestedScrollCoordinator;
physics: IScrollPhysics;
context: IScrollContext;
keepScrollOffset: boolean;
debugLabel: string | undefined;
isScrollingNotifier: IValueNotifier<boolean>;
getVsync: () => ITickerProvider;
setParent: (value?: IScrollController | undefined) => void;
getAxisDirection: () => AxisDirection;
absorb: (other: IScrollPosition) => void;
restoreScrollOffset: () => void;
applyClampedDragUpdate: (delta: number) => number;
applyFullDragUpdate: (delta: number) => number;
applyClampedPointerSignalUpdate: (delta: number) => number;
getUserScrollDirection: () => ScrollDirection;
createDrivenScrollActivity: (to: number, duration: IDuration, curve: ICurve) => IDrivenScrollActivity;
applyUserOffset: (delta: number) => number;
goIdle: () => void;
goBallistic: (velocity: number) => void;
createBallisticScrollActivity: (simulation?: ISimulation | undefined, props : {  metrics? : I_NestedScrollMetrics | undefined, mode : _NestedBallisticScrollActivityMode,}) => IScrollActivity;
animateTo: (to: number, props : {  curve : ICurve, duration : IDuration,}) => IFuture<void>;
jumpTo: (value: number) => void;
pointerScroll: (delta: number) => void;
jumpToWithoutSettling: (value: number) => void;
localJumpTo: (value: number) => void;
applyNewDimensions: () => void;
updateCanDrag: (totalExtent: number) => void;
hold: (holdCancelCallback : () => void) => IScrollHoldController;
drag: (details: IDragStartDetails, dragCancelCallback : () => void) => IDrag;
setPixels: (newPixels: number) => number;
correctPixels: (value: number) => void;
correctBy: (correction: number) => void;
forcePixels: (value: number) => void;
saveScrollOffset: () => void;
restoreOffset: (offset: number, props : {  initialRestore : boolean,}) => void;
saveOffset: () => void;
applyBoundaryConditions: (value: number) => number;
applyViewportDimension: (viewportDimension: number) => boolean;
applyContentDimensions: (minScrollExtent: number, maxScrollExtent: number) => boolean;
correctForNewDimensions: (oldPosition: IScrollMetrics, newPosition: IScrollMetrics) => boolean;
ensureVisible: (object: IRenderObject, props : {  alignment : number, alignmentPolicy : ScrollPositionAlignmentPolicy, curve : ICurve, duration : IDuration, targetRenderObject? : IRenderObject | undefined,}) => IFuture<void>;
moveTo: (to: number, props? : {  clamp? : boolean | undefined, curve? : ICurve | undefined, duration? : IDuration | undefined,}) => IFuture<void>;
beginActivity: (newActivity?: IScrollActivity | undefined) => void;
didStartScroll: () => void;
didUpdateScrollPositionBy: (delta: number) => void;
didEndScroll: () => void;
didOverscrollBy: (value: number) => void;
didUpdateScrollDirection: (direction: ScrollDirection) => void;
didUpdateScrollMetrics: () => void;
recommendDeferredLoading: (context: IBuildContext) => boolean;
dispose: () => void;
notifyListeners: () => void;
debugFillDescription: (description: IList<string>) => void;
getMinScrollExtent: () => number;
getMaxScrollExtent: () => number;
getHasContentDimensions: () => boolean;
getPixels: () => number;
getHasPixels: () => boolean;
getViewportDimension: () => number;
getHasViewportDimension: () => boolean;
getHaveDimensions: () => boolean;
getAllowImplicitScrolling: () => boolean;
copyWith: ( props? : {  axisDirection? : AxisDirection | undefined, maxScrollExtent? : number | undefined, minScrollExtent? : number | undefined, pixels? : number | undefined, viewportDimension? : number | undefined,}) => IScrollMetrics;
getAxis: () => Axis;
getOutOfRange: () => boolean;
getAtEdge: () => boolean;
getExtentBefore: () => number;
getExtentInside: () => number;
getExtentAfter: () => number;
toString: () => string;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
getHasListeners: () => boolean;
getHashCode: () => number;
}export class _NestedScrollPosition

 implements Omit<IScrollPosition, "minScrollExtent" | "maxScrollExtent" | "hasContentDimensions" | "pixels" | "hasPixels" | "viewportDimension" | "hasViewportDimension">, IScrollMetrics, IScrollActivityDelegate, IListenable
{    public readonly coordinator: I_NestedScrollCoordinator = undefined as any;
    public readonly physics: IScrollPhysics = undefined as any;
    public readonly context: IScrollContext = undefined as any;
    public readonly keepScrollOffset: boolean = undefined as any;
    public readonly debugLabel: string | undefined = undefined as any;
    public readonly isScrollingNotifier: IValueNotifier<boolean> = undefined as any;
public constructor( props : {  debugLabel? : string | undefined, initialPixels? : number, oldPosition? : IScrollPosition | undefined, context : IScrollContext, coordinator : I_NestedScrollCoordinator, physics : IScrollPhysics,}){
flutter.widgets._nestedScrollPosition(this, {
..._nestedScrollPositionDefaultProps,
...props
});}
    private readonly _dart_getVsync: () => ITickerProvider = undefined as any;
    private readonly _dart_setParent: (value?: IScrollController | undefined) => void = undefined as any;
    private readonly _dart_getAxisDirection: () => AxisDirection = undefined as any;
    private readonly _dart_absorb: (other: IScrollPosition) => void = undefined as any;
    private readonly _dart_restoreScrollOffset: () => void = undefined as any;
    private readonly _dart_applyClampedDragUpdate: (delta: number) => number = undefined as any;
    private readonly _dart_applyFullDragUpdate: (delta: number) => number = undefined as any;
    private readonly _dart_applyClampedPointerSignalUpdate: (delta: number) => number = undefined as any;
    private readonly _dart_getUserScrollDirection: () => ScrollDirection = undefined as any;
    private readonly _dart_createDrivenScrollActivity: (to: number, duration: IDuration, curve: ICurve) => IDrivenScrollActivity = undefined as any;
    private readonly _dart_applyUserOffset: (delta: number) => number = undefined as any;
    private readonly _dart_goIdle: () => void = undefined as any;
    private readonly _dart_goBallistic: (velocity: number) => void = undefined as any;
    private readonly _dart_createBallisticScrollActivity: (simulation?: ISimulation | undefined, props : {  metrics? : I_NestedScrollMetrics | undefined, mode : _NestedBallisticScrollActivityMode,}) => IScrollActivity = undefined as any;
    private readonly _dart_animateTo: (to: number, props : {  curve : ICurve, duration : IDuration,}) => IFuture<void> = undefined as any;
    private readonly _dart_jumpTo: (value: number) => void = undefined as any;
    private readonly _dart_pointerScroll: (delta: number) => void = undefined as any;
    private readonly _dart_jumpToWithoutSettling: (value: number) => void = undefined as any;
    private readonly _dart_localJumpTo: (value: number) => void = undefined as any;
    private readonly _dart_applyNewDimensions: () => void = undefined as any;
    private readonly _dart_updateCanDrag: (totalExtent: number) => void = undefined as any;
    private readonly _dart_hold: (holdCancelCallback : () => void) => IScrollHoldController = undefined as any;
    private readonly _dart_drag: (details: IDragStartDetails, dragCancelCallback : () => void) => IDrag = undefined as any;
    private readonly _dart_setPixels: (newPixels: number) => number = undefined as any;
    private readonly _dart_correctPixels: (value: number) => void = undefined as any;
    private readonly _dart_correctBy: (correction: number) => void = undefined as any;
    private readonly _dart_forcePixels: (value: number) => void = undefined as any;
    private readonly _dart_saveScrollOffset: () => void = undefined as any;
    private readonly _dart_restoreOffset: (offset: number, props : {  initialRestore : boolean,}) => void = undefined as any;
    private readonly _dart_saveOffset: () => void = undefined as any;
    private readonly _dart_applyBoundaryConditions: (value: number) => number = undefined as any;
    private readonly _dart_applyViewportDimension: (viewportDimension: number) => boolean = undefined as any;
    private readonly _dart_applyContentDimensions: (minScrollExtent: number, maxScrollExtent: number) => boolean = undefined as any;
    private readonly _dart_correctForNewDimensions: (oldPosition: IScrollMetrics, newPosition: IScrollMetrics) => boolean = undefined as any;
    private readonly _dart_ensureVisible: (object: IRenderObject, props : {  alignment : number, alignmentPolicy : ScrollPositionAlignmentPolicy, curve : ICurve, duration : IDuration, targetRenderObject? : IRenderObject | undefined,}) => IFuture<void> = undefined as any;
    private readonly _dart_moveTo: (to: number, props? : {  clamp? : boolean | undefined, curve? : ICurve | undefined, duration? : IDuration | undefined,}) => IFuture<void> = undefined as any;
    private readonly _dart_beginActivity: (newActivity?: IScrollActivity | undefined) => void = undefined as any;
    private readonly _dart_didStartScroll: () => void = undefined as any;
    private readonly _dart_didUpdateScrollPositionBy: (delta: number) => void = undefined as any;
    private readonly _dart_didEndScroll: () => void = undefined as any;
    private readonly _dart_didOverscrollBy: (value: number) => void = undefined as any;
    private readonly _dart_didUpdateScrollDirection: (direction: ScrollDirection) => void = undefined as any;
    private readonly _dart_didUpdateScrollMetrics: () => void = undefined as any;
    private readonly _dart_recommendDeferredLoading: (context: IBuildContext) => boolean = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_debugFillDescription: (description: IList<string>) => void = undefined as any;
    private readonly _dart_getMinScrollExtent: () => number = undefined as any;
    private readonly _dart_getMaxScrollExtent: () => number = undefined as any;
    private readonly _dart_getHasContentDimensions: () => boolean = undefined as any;
    private readonly _dart_getPixels: () => number = undefined as any;
    private readonly _dart_getHasPixels: () => boolean = undefined as any;
    private readonly _dart_getViewportDimension: () => number = undefined as any;
    private readonly _dart_getHasViewportDimension: () => boolean = undefined as any;
    private readonly _dart_getHaveDimensions: () => boolean = undefined as any;
    private readonly _dart_getAllowImplicitScrolling: () => boolean = undefined as any;
    private readonly _dart_getActivity: () => IScrollActivity | undefined = undefined as any;
    private readonly _dart_copyWith: ( props? : {  axisDirection? : AxisDirection | undefined, maxScrollExtent? : number | undefined, minScrollExtent? : number | undefined, pixels? : number | undefined, viewportDimension? : number | undefined,}) => IScrollMetrics = undefined as any;
    private readonly _dart_getAxis: () => Axis = undefined as any;
    private readonly _dart_getOutOfRange: () => boolean = undefined as any;
    private readonly _dart_getAtEdge: () => boolean = undefined as any;
    private readonly _dart_getExtentBefore: () => number = undefined as any;
    private readonly _dart_getExtentInside: () => number = undefined as any;
    private readonly _dart_getExtentAfter: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getVsync() : ITickerProvider {
    return this._dart_getVsync();
}
public setParent(value?: IScrollController | undefined) : void {
    return this._dart_setParent(value);
}
public getAxisDirection() : AxisDirection {
    return this._dart_getAxisDirection();
}
public absorb(other: IScrollPosition) : void {
    return this._dart_absorb(other);
}
public restoreScrollOffset() : void {
    return this._dart_restoreScrollOffset();
}
public applyClampedDragUpdate(delta: number) : number {
    return this._dart_applyClampedDragUpdate(delta);
}
public applyFullDragUpdate(delta: number) : number {
    return this._dart_applyFullDragUpdate(delta);
}
public applyClampedPointerSignalUpdate(delta: number) : number {
    return this._dart_applyClampedPointerSignalUpdate(delta);
}
public getUserScrollDirection() : ScrollDirection {
    return this._dart_getUserScrollDirection();
}
public createDrivenScrollActivity(to: number, duration: IDuration, curve: ICurve) : IDrivenScrollActivity {
    return this._dart_createDrivenScrollActivity(to, duration, curve);
}
public applyUserOffset(delta: number) : number {
    return this._dart_applyUserOffset(delta);
}
public goIdle() : void {
    return this._dart_goIdle();
}
public goBallistic(velocity: number) : void {
    return this._dart_goBallistic(velocity);
}
public createBallisticScrollActivity(simulation?: ISimulation | undefined, props : {  metrics? : I_NestedScrollMetrics | undefined, mode : _NestedBallisticScrollActivityMode,}) : IScrollActivity {
    return this._dart_createBallisticScrollActivity(simulation, props);
}
public animateTo(to: number, props : {  curve : ICurve, duration : IDuration,}) : IFuture<void> {
    return this._dart_animateTo(to, props);
}
public jumpTo(value: number) : void {
    return this._dart_jumpTo(value);
}
public pointerScroll(delta: number) : void {
    return this._dart_pointerScroll(delta);
}
public jumpToWithoutSettling(value: number) : void {
    return this._dart_jumpToWithoutSettling(value);
}
public localJumpTo(value: number) : void {
    return this._dart_localJumpTo(value);
}
public applyNewDimensions() : void {
    return this._dart_applyNewDimensions();
}
public updateCanDrag(totalExtent: number) : void {
    return this._dart_updateCanDrag(totalExtent);
}
public hold(holdCancelCallback : () => void) : IScrollHoldController {
    return this._dart_hold(holdCancelCallback);
}
public drag(details: IDragStartDetails, dragCancelCallback : () => void) : IDrag {
    return this._dart_drag(details, dragCancelCallback);
}
public setPixels(newPixels: number) : number {
    return this._dart_setPixels(newPixels);
}
public correctPixels(value: number) : void {
    return this._dart_correctPixels(value);
}
public correctBy(correction: number) : void {
    return this._dart_correctBy(correction);
}
public forcePixels(value: number) : void {
    return this._dart_forcePixels(value);
}
public saveScrollOffset() : void {
    return this._dart_saveScrollOffset();
}
public restoreOffset(offset: number, props : {  initialRestore? : boolean,}) : void {
    return this._dart_restoreOffset(offset, {
...restoreOffsetDefaultProps,
...props
});
}
public saveOffset() : void {
    return this._dart_saveOffset();
}
public applyBoundaryConditions(value: number) : number {
    return this._dart_applyBoundaryConditions(value);
}
public applyViewportDimension(viewportDimension: number) : boolean {
    return this._dart_applyViewportDimension(viewportDimension);
}
public applyContentDimensions(minScrollExtent: number, maxScrollExtent: number) : boolean {
    return this._dart_applyContentDimensions(minScrollExtent, maxScrollExtent);
}
public correctForNewDimensions(oldPosition: IScrollMetrics, newPosition: IScrollMetrics) : boolean {
    return this._dart_correctForNewDimensions(oldPosition, newPosition);
}
public ensureVisible(object: IRenderObject, props : {  alignment? : number, alignmentPolicy? : ScrollPositionAlignmentPolicy, curve? : ICurve, duration? : IDuration, targetRenderObject? : IRenderObject | undefined,}) : IFuture<void> {
    return this._dart_ensureVisible(object, {
...ensureVisibleDefaultProps,
...props
});
}
public moveTo(to: number, props? : {  clamp? : boolean | undefined, curve? : ICurve | undefined, duration? : IDuration | undefined,}) : IFuture<void> {
    return this._dart_moveTo(to, {
...moveToDefaultProps,
...props
});
}
public beginActivity(newActivity?: IScrollActivity | undefined) : void {
    return this._dart_beginActivity(newActivity);
}
public didStartScroll() : void {
    return this._dart_didStartScroll();
}
public didUpdateScrollPositionBy(delta: number) : void {
    return this._dart_didUpdateScrollPositionBy(delta);
}
public didEndScroll() : void {
    return this._dart_didEndScroll();
}
public didOverscrollBy(value: number) : void {
    return this._dart_didOverscrollBy(value);
}
public didUpdateScrollDirection(direction: ScrollDirection) : void {
    return this._dart_didUpdateScrollDirection(direction);
}
public didUpdateScrollMetrics() : void {
    return this._dart_didUpdateScrollMetrics();
}
public recommendDeferredLoading(context: IBuildContext) : boolean {
    return this._dart_recommendDeferredLoading(context);
}
public dispose() : void {
    return this._dart_dispose();
}
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public debugFillDescription(description: IList<string>) : void {
    return this._dart_debugFillDescription(description);
}
public getMinScrollExtent() : number {
    return this._dart_getMinScrollExtent();
}
public getMaxScrollExtent() : number {
    return this._dart_getMaxScrollExtent();
}
public getHasContentDimensions() : boolean {
    return this._dart_getHasContentDimensions();
}
public getPixels() : number {
    return this._dart_getPixels();
}
public getHasPixels() : boolean {
    return this._dart_getHasPixels();
}
public getViewportDimension() : number {
    return this._dart_getViewportDimension();
}
public getHasViewportDimension() : boolean {
    return this._dart_getHasViewportDimension();
}
public getHaveDimensions() : boolean {
    return this._dart_getHaveDimensions();
}
public getAllowImplicitScrolling() : boolean {
    return this._dart_getAllowImplicitScrolling();
}
public getActivity() : IScrollActivity | undefined {
    return this._dart_getActivity();
}
public copyWith( props? : {  axisDirection? : AxisDirection | undefined, maxScrollExtent? : number | undefined, minScrollExtent? : number | undefined, pixels? : number | undefined, viewportDimension? : number | undefined,}) : IScrollMetrics {
    return this._dart_copyWith(props);
}
public getAxis() : Axis {
    return this._dart_getAxis();
}
public getOutOfRange() : boolean {
    return this._dart_getOutOfRange();
}
public getAtEdge() : boolean {
    return this._dart_getAtEdge();
}
public getExtentBefore() : number {
    return this._dart_getExtentBefore();
}
public getExtentInside() : number {
    return this._dart_getExtentInside();
}
public getExtentAfter() : number {
    return this._dart_getExtentAfter();
}
public toString() : string {
    return this._dart_toString();
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public getHasListeners() : boolean {
    return this._dart_getHasListeners();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const _nestedScrollPositionDefaultProps = {
    initialPixels: 0.0,
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
