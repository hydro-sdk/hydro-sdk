
import { IScrollActivityDelegate } from "./scrollActivityDelegate";
import { ISimulation } from "../physics/simulation";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IScrollActivity } from "./scrollActivity";
import { IScrollMetrics } from "./scrollMetrics";
import { IBuildContext } from "./buildContext";
declare const flutter: {
widgets: {
ballisticScrollActivity: (this: void, ballisticScrollActivity: IBallisticScrollActivity, delegate: IScrollActivityDelegate, simulation: ISimulation, vsync: ITickerProvider) => IBallisticScrollActivity
}
};
export interface IBallisticScrollActivity


{
resetActivity: () => void;
applyNewDimensions: () => void;
applyMoveTo: (value: number) => boolean;
dispatchOverscrollNotification: (metrics: IScrollMetrics, context: IBuildContext, overscroll: number) => void;
getShouldIgnorePointer: () => boolean;
getIsScrolling: () => boolean;
getVelocity: () => number;
dispose: () => void;
toString: () => string;
updateDelegate: (value: IScrollActivityDelegate) => void;
dispatchScrollStartNotification: (metrics: IScrollMetrics, context?: IBuildContext | undefined) => void;
dispatchScrollUpdateNotification: (metrics: IScrollMetrics, context: IBuildContext, scrollDelta: number) => void;
dispatchScrollEndNotification: (metrics: IScrollMetrics, context: IBuildContext) => void;
getDelegate: () => IScrollActivityDelegate;
getHashCode: () => number;
}export class BallisticScrollActivity

 implements IScrollActivity
{public constructor(delegate: IScrollActivityDelegate, simulation: ISimulation, vsync: ITickerProvider){
flutter.widgets.ballisticScrollActivity(this, delegate, simulation, vsync);}
    private readonly _dart_resetActivity: () => void = undefined as any;
    private readonly _dart_applyNewDimensions: () => void = undefined as any;
    private readonly _dart_applyMoveTo: (value: number) => boolean = undefined as any;
    private readonly _dart_dispatchOverscrollNotification: (metrics: IScrollMetrics, context: IBuildContext, overscroll: number) => void = undefined as any;
    private readonly _dart_getShouldIgnorePointer: () => boolean = undefined as any;
    private readonly _dart_getIsScrolling: () => boolean = undefined as any;
    private readonly _dart_getVelocity: () => number = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_updateDelegate: (value: IScrollActivityDelegate) => void = undefined as any;
    private readonly _dart_dispatchScrollStartNotification: (metrics: IScrollMetrics, context?: IBuildContext | undefined) => void = undefined as any;
    private readonly _dart_dispatchScrollUpdateNotification: (metrics: IScrollMetrics, context: IBuildContext, scrollDelta: number) => void = undefined as any;
    private readonly _dart_dispatchScrollEndNotification: (metrics: IScrollMetrics, context: IBuildContext) => void = undefined as any;
    private readonly _dart_getDelegate: () => IScrollActivityDelegate = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public resetActivity() : void {
    return this._dart_resetActivity();
}
public applyNewDimensions() : void {
    return this._dart_applyNewDimensions();
}
public applyMoveTo(value: number) : boolean {
    return this._dart_applyMoveTo(value);
}
public dispatchOverscrollNotification(metrics: IScrollMetrics, context: IBuildContext, overscroll: number) : void {
    return this._dart_dispatchOverscrollNotification(metrics, context, overscroll);
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
public dispose() : void {
    return this._dart_dispose();
}
public toString() : string {
    return this._dart_toString();
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
public getDelegate() : IScrollActivityDelegate {
    return this._dart_getDelegate();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
