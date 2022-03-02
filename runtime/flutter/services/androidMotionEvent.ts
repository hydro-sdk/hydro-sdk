import { IList } from "../../dart/core/list";
import { IAndroidPointerCoords } from "./androidPointerCoords";
import { IAndroidPointerProperties } from "./androidPointerProperties";
declare const flutter: {
    services: {
        androidMotionEvent: (
            this: void,
            androidMotionEvent: IAndroidMotionEvent,
            props: {
                action: number;
                buttonState: number;
                deviceId: number;
                downTime: number;
                edgeFlags: number;
                eventTime: number;
                flags: number;
                metaState: number;
                motionEventId: number;
                pointerCoords: IList<IAndroidPointerCoords>;
                pointerCount: number;
                pointerProperties: IList<IAndroidPointerProperties>;
                source: number;
                xPrecision: number;
                yPrecision: number;
            }
        ) => IAndroidMotionEvent;
    };
};
export interface IAndroidMotionEvent {
    downTime: number;
    eventTime: number;
    action: number;
    pointerCount: number;
    pointerProperties: IList<IAndroidPointerProperties>;
    pointerCoords: IList<IAndroidPointerCoords>;
    metaState: number;
    buttonState: number;
    xPrecision: number;
    yPrecision: number;
    deviceId: number;
    edgeFlags: number;
    source: number;
    flags: number;
    motionEventId: number;
    toString: () => string;
}
export class AndroidMotionEvent {
    public readonly downTime: number = undefined as any;
    public readonly eventTime: number = undefined as any;
    public readonly action: number = undefined as any;
    public readonly pointerCount: number = undefined as any;
    public readonly pointerProperties: IList<IAndroidPointerProperties> =
        undefined as any;
    public readonly pointerCoords: IList<IAndroidPointerCoords> =
        undefined as any;
    public readonly metaState: number = undefined as any;
    public readonly buttonState: number = undefined as any;
    public readonly xPrecision: number = undefined as any;
    public readonly yPrecision: number = undefined as any;
    public readonly deviceId: number = undefined as any;
    public readonly edgeFlags: number = undefined as any;
    public readonly source: number = undefined as any;
    public readonly flags: number = undefined as any;
    public readonly motionEventId: number = undefined as any;
    public constructor(props: {
        action: number;
        buttonState: number;
        deviceId: number;
        downTime: number;
        edgeFlags: number;
        eventTime: number;
        flags: number;
        metaState: number;
        motionEventId: number;
        pointerCoords: IList<IAndroidPointerCoords>;
        pointerCount: number;
        pointerProperties: IList<IAndroidPointerProperties>;
        source: number;
        xPrecision: number;
        yPrecision: number;
    }) {
        flutter.services.androidMotionEvent(this, props);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
