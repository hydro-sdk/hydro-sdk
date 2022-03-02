import { Duration } from "../../dart/core/duration";
import { IDrag } from "../gestures/drag";
import { IDragEndDetails } from "../gestures/dragEndDetails";
import { IDragStartDetails } from "../gestures/dragStartDetails";
import { IDragUpdateDetails } from "../gestures/dragUpdateDetails";
import { IScrollActivityDelegate } from "./scrollActivityDelegate";
declare const flutter: {
    widgets: {
        scrollDragController: (
            this: void,
            scrollDragController: IScrollDragController,
            props: {
                carriedVelocity?: number | undefined;
                motionStartDistanceThreshold?: number | undefined;
                onDragCanceled?: () => void | undefined;
                delegate: IScrollActivityDelegate;
                details: IDragStartDetails;
            }
        ) => IScrollDragController;
    };
};
export interface IScrollDragController {
    carriedVelocity: number | undefined;
    motionStartDistanceThreshold: number | undefined;
    getDelegate: () => IScrollActivityDelegate;
    updateDelegate: (value: IScrollActivityDelegate) => void;
    update: (details: IDragUpdateDetails) => void;
    end: (details: IDragEndDetails) => void;
    cancel: () => void;
    dispose: () => void;
    getLastDetails: () => any;
    toString: () => string;
}
export class ScrollDragController implements IDrag {
    public static momentumRetainStationaryDurationThreshold = new Duration({
        milliseconds: 20,
    });
    public static momentumRetainVelocityThresholdFactor = 0.5;
    public static motionStoppedDurationThreshold = new Duration({
        milliseconds: 50,
    });
    public static _bigThresholdBreakDistance = 24.0;
    public readonly carriedVelocity: number | undefined = undefined as any;
    public readonly motionStartDistanceThreshold: number | undefined =
        undefined as any;
    public constructor(props: {
        carriedVelocity?: number | undefined;
        motionStartDistanceThreshold?: number | undefined;
        onDragCanceled?: () => void | undefined;
        delegate: IScrollActivityDelegate;
        details: IDragStartDetails;
    }) {
        flutter.widgets.scrollDragController(this, props);
    }
    private readonly _dart_getDelegate: () => IScrollActivityDelegate =
        undefined as any;
    private readonly _dart_updateDelegate: (
        value: IScrollActivityDelegate
    ) => void = undefined as any;
    private readonly _dart_update: (details: IDragUpdateDetails) => void =
        undefined as any;
    private readonly _dart_end: (details: IDragEndDetails) => void =
        undefined as any;
    private readonly _dart_cancel: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getLastDetails: () => any = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getDelegate(): IScrollActivityDelegate {
        return this._dart_getDelegate();
    }
    public updateDelegate(value: IScrollActivityDelegate): void {
        return this._dart_updateDelegate(value);
    }
    public update(details: IDragUpdateDetails): void {
        return this._dart_update(details);
    }
    public end(details: IDragEndDetails): void {
        return this._dart_end(details);
    }
    public cancel(): void {
        return this._dart_cancel();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getLastDetails(): any {
        return this._dart_getLastDetails();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
