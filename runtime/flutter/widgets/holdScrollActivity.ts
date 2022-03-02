import { IBuildContext } from "./buildContext";
import { IScrollActivity } from "./scrollActivity";
import { IScrollActivityDelegate } from "./scrollActivityDelegate";
import { IScrollHoldController } from "./scrollHoldController";
import { IScrollMetrics } from "./scrollMetrics";
declare const flutter: {
    widgets: {
        holdScrollActivity: (
            this: void,
            holdScrollActivity: IHoldScrollActivity,
            props: {
                onHoldCanceled?: () => void | undefined;
                delegate: IScrollActivityDelegate;
            }
        ) => IHoldScrollActivity;
    };
};
export interface IHoldScrollActivity {
    getShouldIgnorePointer: () => boolean;
    getIsScrolling: () => boolean;
    getVelocity: () => number;
    cancel: () => void;
    dispose: () => void;
    updateDelegate: (value: IScrollActivityDelegate) => void;
    resetActivity: () => void;
    dispatchScrollStartNotification: (
        metrics: IScrollMetrics,
        context?: IBuildContext | undefined
    ) => void;
    dispatchScrollUpdateNotification: (
        metrics: IScrollMetrics,
        context: IBuildContext,
        scrollDelta: number
    ) => void;
    dispatchOverscrollNotification: (
        metrics: IScrollMetrics,
        context: IBuildContext,
        overscroll: number
    ) => void;
    dispatchScrollEndNotification: (
        metrics: IScrollMetrics,
        context: IBuildContext
    ) => void;
    applyNewDimensions: () => void;
    toString: () => string;
    getDelegate: () => IScrollActivityDelegate;
    getHashCode: () => number;
}
export class HoldScrollActivity
    implements IScrollActivity, IScrollHoldController
{
    public constructor(props: {
        onHoldCanceled?: () => void | undefined;
        delegate: IScrollActivityDelegate;
    }) {
        flutter.widgets.holdScrollActivity(this, props);
    }
    private readonly _dart_getShouldIgnorePointer: () => boolean =
        undefined as any;
    private readonly _dart_getIsScrolling: () => boolean = undefined as any;
    private readonly _dart_getVelocity: () => number = undefined as any;
    private readonly _dart_cancel: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_updateDelegate: (
        value: IScrollActivityDelegate
    ) => void = undefined as any;
    private readonly _dart_resetActivity: () => void = undefined as any;
    private readonly _dart_dispatchScrollStartNotification: (
        metrics: IScrollMetrics,
        context?: IBuildContext | undefined
    ) => void = undefined as any;
    private readonly _dart_dispatchScrollUpdateNotification: (
        metrics: IScrollMetrics,
        context: IBuildContext,
        scrollDelta: number
    ) => void = undefined as any;
    private readonly _dart_dispatchOverscrollNotification: (
        metrics: IScrollMetrics,
        context: IBuildContext,
        overscroll: number
    ) => void = undefined as any;
    private readonly _dart_dispatchScrollEndNotification: (
        metrics: IScrollMetrics,
        context: IBuildContext
    ) => void = undefined as any;
    private readonly _dart_applyNewDimensions: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getDelegate: () => IScrollActivityDelegate =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getShouldIgnorePointer(): boolean {
        return this._dart_getShouldIgnorePointer();
    }
    public getIsScrolling(): boolean {
        return this._dart_getIsScrolling();
    }
    public getVelocity(): number {
        return this._dart_getVelocity();
    }
    public cancel(): void {
        return this._dart_cancel();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public updateDelegate(value: IScrollActivityDelegate): void {
        return this._dart_updateDelegate(value);
    }
    public resetActivity(): void {
        return this._dart_resetActivity();
    }
    public dispatchScrollStartNotification(
        metrics: IScrollMetrics,
        context?: IBuildContext | undefined
    ): void {
        return this._dart_dispatchScrollStartNotification(metrics, context);
    }
    public dispatchScrollUpdateNotification(
        metrics: IScrollMetrics,
        context: IBuildContext,
        scrollDelta: number
    ): void {
        return this._dart_dispatchScrollUpdateNotification(
            metrics,
            context,
            scrollDelta
        );
    }
    public dispatchOverscrollNotification(
        metrics: IScrollMetrics,
        context: IBuildContext,
        overscroll: number
    ): void {
        return this._dart_dispatchOverscrollNotification(
            metrics,
            context,
            overscroll
        );
    }
    public dispatchScrollEndNotification(
        metrics: IScrollMetrics,
        context: IBuildContext
    ): void {
        return this._dart_dispatchScrollEndNotification(metrics, context);
    }
    public applyNewDimensions(): void {
        return this._dart_applyNewDimensions();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getDelegate(): IScrollActivityDelegate {
        return this._dart_getDelegate();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
