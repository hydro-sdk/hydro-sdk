
import { I_NestedScrollCoordinator } from "./_nestedScrollCoordinator";
import { I_NestedScrollPosition } from "./_nestedScrollPosition";
import { I_NestedScrollMetrics } from "./_nestedScrollMetrics";
import { ISimulation } from "../physics/simulation";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IBallisticScrollActivity } from "./ballisticScrollActivity";
import { IScrollMetrics } from "./scrollMetrics";
import { IBuildContext } from "./buildContext";
import { IScrollActivityDelegate } from "./scrollActivityDelegate";
declare const flutter: {
widgets: {
_nestedOuterBallisticScrollActivity: (this: void, _nestedOuterBallisticScrollActivity: I_NestedOuterBallisticScrollActivity, coordinator: I_NestedScrollCoordinator, position: I_NestedScrollPosition, metrics: I_NestedScrollMetrics, simulation: ISimulation, vsync: ITickerProvider) => I_NestedOuterBallisticScrollActivity
}
};
export interface I_NestedOuterBallisticScrollActivity


{
coordinator: I_NestedScrollCoordinator;
metrics: I_NestedScrollMetrics;
getDelegate: () => I_NestedScrollPosition;
resetActivity: () => void;
applyNewDimensions: () => void;
applyMoveTo: (value: number) => boolean;
toString: () => string;
dispatchOverscrollNotification: (metrics: IScrollMetrics, context: IBuildContext, overscroll: number) => void;
dispose: () => void;
getShouldIgnorePointer: () => boolean;
getIsScrolling: () => boolean;
getVelocity: () => number;
updateDelegate: (value: IScrollActivityDelegate) => void;
dispatchScrollStartNotification: (metrics: IScrollMetrics, context?: IBuildContext | undefined) => void;
dispatchScrollUpdateNotification: (metrics: IScrollMetrics, context: IBuildContext, scrollDelta: number) => void;
dispatchScrollEndNotification: (metrics: IScrollMetrics, context: IBuildContext) => void;
getHashCode: () => number;
}export class _NestedOuterBallisticScrollActivity

 implements IBallisticScrollActivity
{    public readonly coordinator: I_NestedScrollCoordinator = undefined as any;
    public readonly metrics: I_NestedScrollMetrics = undefined as any;
public constructor(coordinator: I_NestedScrollCoordinator, position: I_NestedScrollPosition, metrics: I_NestedScrollMetrics, simulation: ISimulation, vsync: ITickerProvider){
flutter.widgets._nestedOuterBallisticScrollActivity(this, coordinator, position, metrics, simulation, vsync);}
    private readonly _dart_getDelegate: () => I_NestedScrollPosition = undefined as any;
    private readonly _dart_resetActivity: () => void = undefined as any;
    private readonly _dart_applyNewDimensions: () => void = undefined as any;
    private readonly _dart_applyMoveTo: (value: number) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_dispatchOverscrollNotification: (metrics: IScrollMetrics, context: IBuildContext, overscroll: number) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getShouldIgnorePointer: () => boolean = undefined as any;
    private readonly _dart_getIsScrolling: () => boolean = undefined as any;
    private readonly _dart_getVelocity: () => number = undefined as any;
    private readonly _dart_updateDelegate: (value: IScrollActivityDelegate) => void = undefined as any;
    private readonly _dart_dispatchScrollStartNotification: (metrics: IScrollMetrics, context?: IBuildContext | undefined) => void = undefined as any;
    private readonly _dart_dispatchScrollUpdateNotification: (metrics: IScrollMetrics, context: IBuildContext, scrollDelta: number) => void = undefined as any;
    private readonly _dart_dispatchScrollEndNotification: (metrics: IScrollMetrics, context: IBuildContext) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getDelegate() : I_NestedScrollPosition {
    return this._dart_getDelegate();
}
public resetActivity() : void {
    return this._dart_resetActivity();
}
public applyNewDimensions() : void {
    return this._dart_applyNewDimensions();
}
public applyMoveTo(value: number) : boolean {
    return this._dart_applyMoveTo(value);
}
public toString() : string {
    return this._dart_toString();
}
public dispatchOverscrollNotification(metrics: IScrollMetrics, context: IBuildContext, overscroll: number) : void {
    return this._dart_dispatchOverscrollNotification(metrics, context, overscroll);
}
public dispose() : void {
    return this._dart_dispose();
}
public getShouldIgnorePointer() : boolean {
    return this._dart_getShouldIgnorePointer();
}
public getIsScrolling() : boolean {
    return this._dart_getIsScrolling();
}
public getVelocity() : number {
    return this._dart_getVelocity();
}
public updateDelegate(value: IScrollActivityDelegate) : void {
    return this._dart_updateDelegate(value);
}
public dispatchScrollStartNotification(metrics: IScrollMetrics, context?: IBuildContext | undefined) : void {
    return this._dart_dispatchScrollStartNotification(metrics, context);
}
public dispatchScrollUpdateNotification(metrics: IScrollMetrics, context: IBuildContext, scrollDelta: number) : void {
    return this._dart_dispatchScrollUpdateNotification(metrics, context, scrollDelta);
}
public dispatchScrollEndNotification(metrics: IScrollMetrics, context: IBuildContext) : void {
    return this._dart_dispatchScrollEndNotification(metrics, context);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
