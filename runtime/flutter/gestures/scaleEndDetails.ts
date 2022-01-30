import { IVelocity, Velocity } from "./velocity";
declare const flutter: {
    gestures: {
        scaleEndDetails: (
            this: void,
            scaleEndDetails: IScaleEndDetails,
            props: { pointerCount: number; velocity: IVelocity }
        ) => IScaleEndDetails;
    };
};
export interface IScaleEndDetails {
    velocity: IVelocity;
    pointerCount: number;
    toString: () => string;
}
export class ScaleEndDetails {
    public readonly velocity: IVelocity = undefined as any;
    public readonly pointerCount: number = undefined as any;
    public constructor(props: { pointerCount?: number; velocity?: IVelocity }) {
        flutter.gestures.scaleEndDetails(this, {
            ...scaleEndDetailsDefaultProps,
            ...props,
        });
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
const scaleEndDetailsDefaultProps = {
    pointerCount: 0,
    velocity: Velocity.zero,
};
