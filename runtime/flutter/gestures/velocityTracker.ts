import { IDuration } from "../../dart/core/duration";
import { IOffset } from "../../dart/ui/offset";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { IVelocity } from "./velocity";
import { IVelocityEstimate } from "./velocityEstimate";
declare const flutter: {
    gestures: {
        velocityTracker: (
            this: void,
            velocityTracker: IVelocityTracker,
            kind: PointerDeviceKind
        ) => IVelocityTracker;
    };
};
export interface IVelocityTracker {
    kind: PointerDeviceKind;
    addPosition: (time: IDuration, position: IOffset) => void;
    getVelocityEstimate: () => IVelocityEstimate | undefined;
    getVelocity: () => IVelocity;
}
export class VelocityTracker {
    public static _assumePointerMoveStoppedMilliseconds = 40;
    public static _historySize = 20;
    public static _horizonMilliseconds = 100;
    public static _minSampleSize = 3;
    public readonly kind: PointerDeviceKind = undefined as any;
    public constructor(kind: PointerDeviceKind = PointerDeviceKind.touch) {
        flutter.gestures.velocityTracker(this, kind);
    }
    private readonly _dart_addPosition: (
        time: IDuration,
        position: IOffset
    ) => void = undefined as any;
    private readonly _dart_getVelocityEstimate: () =>
        | IVelocityEstimate
        | undefined = undefined as any;
    private readonly _dart_getVelocity: () => IVelocity = undefined as any;
    public addPosition(time: IDuration, position: IOffset): void {
        return this._dart_addPosition(time, position);
    }
    public getVelocityEstimate(): IVelocityEstimate | undefined {
        return this._dart_getVelocityEstimate();
    }
    public getVelocity(): IVelocity {
        return this._dart_getVelocity();
    }
}
