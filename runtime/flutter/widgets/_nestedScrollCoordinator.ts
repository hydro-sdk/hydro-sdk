import { IFuture } from "../../dart/async/future";
import { IDuration } from "../../dart/core/duration";
import { ICurve } from "../animation/curve";
import { IDrag } from "../gestures/drag";
import { IDragStartDetails } from "../gestures/dragStartDetails";
import { AxisDirection } from "../painting/axisDirection";
import { ScrollDirection } from "../rendering/scrollDirection";
import { I_NestedScrollPosition } from "./_nestedScrollPosition";
import { INestedScrollViewState } from "./nestedScrollViewState";
import { IScrollActivity } from "./scrollActivity";
import { IScrollActivityDelegate } from "./scrollActivityDelegate";
import { IScrollController } from "./scrollController";
import { IScrollHoldController } from "./scrollHoldController";
declare const flutter: {
    widgets: {
        _nestedScrollCoordinator: (
            this: void,
            _nestedScrollCoordinator: I_NestedScrollCoordinator,
            _state: INestedScrollViewState,
            _parent: IScrollController | undefined,
            _onHasScrolledBodyChanged: () => void,
            _floatHeaderSlivers: boolean
        ) => I_NestedScrollCoordinator;
    };
};
export interface I_NestedScrollCoordinator {
    getCanScrollBody: () => boolean;
    getHasScrolledBody: () => boolean;
    updateShadow: () => void;
    getUserScrollDirection: () => ScrollDirection;
    updateUserScrollDirection: (value: ScrollDirection) => void;
    beginActivity: (
        newOuterActivity: IScrollActivity,
        innerActivityGetter: (
            position: I_NestedScrollPosition
        ) => IScrollActivity
    ) => void;
    getAxisDirection: () => AxisDirection;
    goIdle: () => void;
    goBallistic: (velocity: number) => void;
    createOuterBallisticScrollActivity: (velocity: number) => IScrollActivity;
    createInnerBallisticScrollActivity: (
        position: I_NestedScrollPosition,
        velocity: number
    ) => IScrollActivity;
    unnestOffset: (value: number, source: I_NestedScrollPosition) => number;
    nestOffset: (value: number, target: I_NestedScrollPosition) => number;
    updateCanDrag: () => void;
    animateTo: (
        to: number,
        props: { curve: ICurve; duration: IDuration }
    ) => IFuture<void>;
    jumpTo: (to: number) => void;
    pointerScroll: (delta: number) => void;
    setPixels: (newPixels: number) => number;
    hold: (holdCancelCallback: () => void) => IScrollHoldController;
    cancel: () => void;
    drag: (details: IDragStartDetails, dragCancelCallback: () => void) => IDrag;
    applyUserOffset: (delta: number) => void;
    setParent: (value?: IScrollController | undefined) => void;
    updateParent: () => void;
    dispose: () => void;
    toString: () => string;
}
export class _NestedScrollCoordinator
    implements IScrollActivityDelegate, IScrollHoldController
{
    public constructor(
        _state: INestedScrollViewState,
        _parent: IScrollController | undefined,
        _onHasScrolledBodyChanged: () => void,
        _floatHeaderSlivers: boolean
    ) {
        flutter.widgets._nestedScrollCoordinator(
            this,
            _state,
            _parent,
            _onHasScrolledBodyChanged,
            _floatHeaderSlivers
        );
    }
    private readonly _dart_getCanScrollBody: () => boolean = undefined as any;
    private readonly _dart_getHasScrolledBody: () => boolean = undefined as any;
    private readonly _dart_updateShadow: () => void = undefined as any;
    private readonly _dart_getUserScrollDirection: () => ScrollDirection =
        undefined as any;
    private readonly _dart_updateUserScrollDirection: (
        value: ScrollDirection
    ) => void = undefined as any;
    private readonly _dart_beginActivity: (
        newOuterActivity: IScrollActivity,
        innerActivityGetter: (
            position: I_NestedScrollPosition
        ) => IScrollActivity
    ) => void = undefined as any;
    private readonly _dart_getAxisDirection: () => AxisDirection =
        undefined as any;
    private readonly _dart_goIdle: () => void = undefined as any;
    private readonly _dart_goBallistic: (velocity: number) => void =
        undefined as any;
    private readonly _dart_createOuterBallisticScrollActivity: (
        velocity: number
    ) => IScrollActivity = undefined as any;
    private readonly _dart_createInnerBallisticScrollActivity: (
        position: I_NestedScrollPosition,
        velocity: number
    ) => IScrollActivity = undefined as any;
    private readonly _dart_unnestOffset: (
        value: number,
        source: I_NestedScrollPosition
    ) => number = undefined as any;
    private readonly _dart_nestOffset: (
        value: number,
        target: I_NestedScrollPosition
    ) => number = undefined as any;
    private readonly _dart_updateCanDrag: () => void = undefined as any;
    private readonly _dart_animateTo: (
        to: number,
        props: { curve: ICurve; duration: IDuration }
    ) => IFuture<void> = undefined as any;
    private readonly _dart_jumpTo: (to: number) => void = undefined as any;
    private readonly _dart_pointerScroll: (delta: number) => void =
        undefined as any;
    private readonly _dart_setPixels: (newPixels: number) => number =
        undefined as any;
    private readonly _dart_hold: (
        holdCancelCallback: () => void
    ) => IScrollHoldController = undefined as any;
    private readonly _dart_cancel: () => void = undefined as any;
    private readonly _dart_drag: (
        details: IDragStartDetails,
        dragCancelCallback: () => void
    ) => IDrag = undefined as any;
    private readonly _dart_applyUserOffset: (delta: number) => void =
        undefined as any;
    private readonly _dart_setParent: (
        value?: IScrollController | undefined
    ) => void = undefined as any;
    private readonly _dart_updateParent: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getCanScrollBody(): boolean {
        return this._dart_getCanScrollBody();
    }
    public getHasScrolledBody(): boolean {
        return this._dart_getHasScrolledBody();
    }
    public updateShadow(): void {
        return this._dart_updateShadow();
    }
    public getUserScrollDirection(): ScrollDirection {
        return this._dart_getUserScrollDirection();
    }
    public updateUserScrollDirection(value: ScrollDirection): void {
        return this._dart_updateUserScrollDirection(value);
    }
    public beginActivity(
        newOuterActivity: IScrollActivity,
        innerActivityGetter: (
            position: I_NestedScrollPosition
        ) => IScrollActivity
    ): void {
        return this._dart_beginActivity(newOuterActivity, innerActivityGetter);
    }
    public getAxisDirection(): AxisDirection {
        return this._dart_getAxisDirection();
    }
    public goIdle(): void {
        return this._dart_goIdle();
    }
    public goBallistic(velocity: number): void {
        return this._dart_goBallistic(velocity);
    }
    public createOuterBallisticScrollActivity(
        velocity: number
    ): IScrollActivity {
        return this._dart_createOuterBallisticScrollActivity(velocity);
    }
    public createInnerBallisticScrollActivity(
        position: I_NestedScrollPosition,
        velocity: number
    ): IScrollActivity {
        return this._dart_createInnerBallisticScrollActivity(
            position,
            velocity
        );
    }
    public unnestOffset(value: number, source: I_NestedScrollPosition): number {
        return this._dart_unnestOffset(value, source);
    }
    public nestOffset(value: number, target: I_NestedScrollPosition): number {
        return this._dart_nestOffset(value, target);
    }
    public updateCanDrag(): void {
        return this._dart_updateCanDrag();
    }
    public animateTo(
        to: number,
        props: { curve: ICurve; duration: IDuration }
    ): IFuture<void> {
        return this._dart_animateTo(to, props);
    }
    public jumpTo(to: number): void {
        return this._dart_jumpTo(to);
    }
    public pointerScroll(delta: number): void {
        return this._dart_pointerScroll(delta);
    }
    public setPixels(newPixels: number): number {
        return this._dart_setPixels(newPixels);
    }
    public hold(holdCancelCallback: () => void): IScrollHoldController {
        return this._dart_hold(holdCancelCallback);
    }
    public cancel(): void {
        return this._dart_cancel();
    }
    public drag(
        details: IDragStartDetails,
        dragCancelCallback: () => void
    ): IDrag {
        return this._dart_drag(details, dragCancelCallback);
    }
    public applyUserOffset(delta: number): void {
        return this._dart_applyUserOffset(delta);
    }
    public setParent(value?: IScrollController | undefined): void {
        return this._dart_setParent(value);
    }
    public updateParent(): void {
        return this._dart_updateParent();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
