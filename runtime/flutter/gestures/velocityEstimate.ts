import { IDuration } from "../../dart/core/duration";
import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
    gestures: {
        velocityEstimate: (
            this: void,
            velocityEstimate: IVelocityEstimate,
            props: {
                confidence: number;
                duration: IDuration;
                offset: IOffset;
                pixelsPerSecond: IOffset;
            }
        ) => IVelocityEstimate;
    };
};
export interface IVelocityEstimate {
    pixelsPerSecond: IOffset;
    confidence: number;
    duration: IDuration;
    offset: IOffset;
    toString: () => string;
}
export class VelocityEstimate {
    public readonly pixelsPerSecond: IOffset = undefined as any;
    public readonly confidence: number = undefined as any;
    public readonly duration: IDuration = undefined as any;
    public readonly offset: IOffset = undefined as any;
    public constructor(props: {
        confidence: number;
        duration: IDuration;
        offset: IOffset;
        pixelsPerSecond: IOffset;
    }) {
        flutter.gestures.velocityEstimate(this, props);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
